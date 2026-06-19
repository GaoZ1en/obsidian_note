#!/usr/bin/env python3

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path

import numpy as np


TAU_INDEX = 0
X_INDEX = 1


@dataclass(frozen=True)
class LatticeSpec:
    num_t: int
    num_x: int
    beta: float
    length: float
    mass: float

    @property
    def dt(self) -> float:
        return self.beta / self.num_t

    @property
    def dx(self) -> float:
        return self.length / self.num_x


@dataclass(frozen=True)
class MonteCarloSpec:
    samples: int
    thermalization_sweeps: int
    sweeps_between_samples: int
    step_size: float
    seed: int | None


def parse_int_list(raw_value: str) -> list[int]:
    values = []
    for part in raw_value.split(","):
        stripped = part.strip()
        if not stripped:
            continue
        value = int(stripped)
        if value <= 0:
            raise ValueError("All lattice sizes must be positive integers.")
        values.append(value)
    if not values:
        raise ValueError("At least one lattice size must be provided.")
    return values


def dimensionless_wave_numbers(num_sites: int) -> np.ndarray:
    return 2.0 * np.pi * np.fft.fftfreq(num_sites)


def lattice_momentum(num_sites: int, spacing: float) -> np.ndarray:
    wave_numbers = dimensionless_wave_numbers(num_sites)
    return 2.0 * np.sin(0.5 * wave_numbers) / spacing


def coordinate_separations(num_sites: int, spacing: float) -> np.ndarray:
    indices = np.arange(num_sites)
    centered = ((indices + num_sites // 2) % num_sites) - num_sites // 2
    return centered * spacing


def shift_last_two_axes(array: np.ndarray) -> np.ndarray:
    return np.fft.fftshift(array, axes=(-2, -1))


def momentum_space_correlators(spec: LatticeSpec) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    omega_hat = lattice_momentum(spec.num_t, spec.dt)[:, None]
    momentum_hat = lattice_momentum(spec.num_x, spec.dx)[None, :]

    omega_sq = omega_hat**2
    momentum_sq = momentum_hat**2
    mass_sq = spec.mass**2
    denominator = mass_sq * (mass_sq + omega_sq + momentum_sq)

    path_momentum = np.zeros((2, 2, spec.num_t, spec.num_x), dtype=np.complex128)
    path_momentum[TAU_INDEX, TAU_INDEX] = (mass_sq + omega_sq) / denominator
    path_momentum[TAU_INDEX, X_INDEX] = omega_hat * momentum_hat / denominator
    path_momentum[X_INDEX, TAU_INDEX] = path_momentum[TAU_INDEX, X_INDEX]
    path_momentum[X_INDEX, X_INDEX] = (mass_sq + momentum_sq) / denominator

    contact_momentum = np.zeros_like(path_momentum)
    contact_momentum[TAU_INDEX, TAU_INDEX] = 1.0 / mass_sq

    canonical_momentum = path_momentum - contact_momentum
    return path_momentum, canonical_momentum, contact_momentum


def momentum_to_coordinate(momentum_correlator: np.ndarray, spec: LatticeSpec) -> np.ndarray:
    coordinate_correlator = np.fft.ifft2(momentum_correlator, axes=(-2, -1))
    coordinate_correlator = coordinate_correlator / (spec.dt * spec.dx)
    return np.real_if_close(coordinate_correlator, tol=1000)


def field_strength(field: np.ndarray, spec: LatticeSpec, t_index: int, x_index: int) -> float:
    next_t = (t_index + 1) % spec.num_t
    next_x = (x_index + 1) % spec.num_x
    time_derivative = (
        field[X_INDEX, next_t, x_index] - field[X_INDEX, t_index, x_index]
    ) / spec.dt
    space_derivative = (
        field[TAU_INDEX, t_index, next_x] - field[TAU_INDEX, t_index, x_index]
    ) / spec.dx
    return float(time_derivative - space_derivative)


def total_action(field: np.ndarray, spec: LatticeSpec) -> float:
    plaquette_action = 0.0
    for t_index in range(spec.num_t):
        for x_index in range(spec.num_x):
            strength = field_strength(field, spec, t_index, x_index)
            plaquette_action += strength * strength

    mass_action = float(np.sum(field * field)) * spec.mass**2
    return 0.5 * spec.dt * spec.dx * (plaquette_action + mass_action)


def local_action_delta(
    field: np.ndarray,
    spec: LatticeSpec,
    component_index: int,
    t_index: int,
    x_index: int,
    proposal: float,
) -> float:
    volume_element = spec.dt * spec.dx
    old_value = float(field[component_index, t_index, x_index])
    mass_delta = 0.5 * volume_element * spec.mass**2 * (
        proposal * proposal - old_value * old_value
    )

    if component_index == TAU_INDEX:
        affected_plaquettes = tuple(dict.fromkeys((
            (t_index, x_index),
            (t_index, (x_index - 1) % spec.num_x),
        )))
    else:
        affected_plaquettes = tuple(dict.fromkeys((
            (t_index, x_index),
            ((t_index - 1) % spec.num_t, x_index),
        )))

    old_plaquette_action = 0.0
    for plaquette_t, plaquette_x in affected_plaquettes:
        strength = field_strength(field, spec, plaquette_t, plaquette_x)
        old_plaquette_action += strength * strength

    field[component_index, t_index, x_index] = proposal
    new_plaquette_action = 0.0
    for plaquette_t, plaquette_x in affected_plaquettes:
        strength = field_strength(field, spec, plaquette_t, plaquette_x)
        new_plaquette_action += strength * strength
    field[component_index, t_index, x_index] = old_value

    return mass_delta + 0.5 * volume_element * (
        new_plaquette_action - old_plaquette_action
    )


def metropolis_sweep(
    field: np.ndarray,
    spec: LatticeSpec,
    step_size: float,
    rng: np.random.Generator,
) -> tuple[int, int]:
    accepted = 0
    total = 0

    for component_index in (TAU_INDEX, X_INDEX):
        for t_index in range(spec.num_t):
            for x_index in range(spec.num_x):
                old_value = float(field[component_index, t_index, x_index])
                proposal = old_value + step_size * float(rng.normal())
                delta_action = local_action_delta(
                    field, spec, component_index, t_index, x_index, proposal
                )

                total += 1
                if delta_action <= 0.0 or rng.random() < np.exp(-delta_action):
                    field[component_index, t_index, x_index] = proposal
                    accepted += 1

    return accepted, total


def translational_correlator(field: np.ndarray) -> np.ndarray:
    num_components, num_t, num_x = field.shape
    num_sites = num_t * num_x
    correlator = np.zeros((num_components, num_components, num_t, num_x))
    field_fft = np.fft.fft2(field, axes=(-2, -1))

    for left_index in range(num_components):
        for right_index in range(num_components):
            correlator[left_index, right_index] = np.real_if_close(
                np.fft.ifft2(
                    field_fft[left_index] * np.conj(field_fft[right_index])
                )
                / num_sites,
                tol=1000,
            )

    return correlator


def monte_carlo_path_integral(
    spec: LatticeSpec,
    mc_spec: MonteCarloSpec,
) -> dict[str, np.ndarray | float | int]:
    rng = np.random.default_rng(mc_spec.seed)
    field = np.zeros((2, spec.num_t, spec.num_x), dtype=np.float64)

    accepted_updates = 0
    total_updates = 0
    for _ in range(mc_spec.thermalization_sweeps):
        accepted, total = metropolis_sweep(field, spec, mc_spec.step_size, rng)
        accepted_updates += accepted
        total_updates += total

    correlator_sum = np.zeros((2, 2, spec.num_t, spec.num_x), dtype=np.float64)
    action_sum = 0.0
    action_sq_sum = 0.0

    for _ in range(mc_spec.samples):
        for _ in range(mc_spec.sweeps_between_samples):
            accepted, total = metropolis_sweep(field, spec, mc_spec.step_size, rng)
            accepted_updates += accepted
            total_updates += total

        correlator_sum += translational_correlator(field)
        action = total_action(field, spec)
        action_sum += action
        action_sq_sum += action * action

    acceptance_rate = accepted_updates / total_updates if total_updates else 0.0
    mean_action = action_sum / mc_spec.samples
    mean_action_sq = action_sq_sum / mc_spec.samples

    return {
        "mc_coordinate": correlator_sum / mc_spec.samples,
        "mc_acceptance_rate": float(acceptance_rate),
        "mc_mean_action": float(mean_action),
        "mc_action_std": float(np.sqrt(max(mean_action_sq - mean_action**2, 0.0))),
        "mc_samples": mc_spec.samples,
        "mc_thermalization_sweeps": mc_spec.thermalization_sweeps,
        "mc_sweeps_between_samples": mc_spec.sweeps_between_samples,
        "mc_step_size": mc_spec.step_size,
    }


def compute_case(
    spec: LatticeSpec,
    mc_spec: MonteCarloSpec | None = None,
) -> dict[str, np.ndarray | float | int]:
    path_momentum, canonical_momentum, contact_momentum = momentum_space_correlators(spec)

    path_coordinate = momentum_to_coordinate(path_momentum, spec)
    canonical_coordinate = momentum_to_coordinate(canonical_momentum, spec)
    contact_coordinate = momentum_to_coordinate(contact_momentum, spec)

    difference = path_coordinate - canonical_coordinate
    expected_contact = np.zeros((spec.num_t, spec.num_x), dtype=np.float64)
    expected_contact[0, 0] = 1.0 / (spec.mass**2 * spec.dt * spec.dx)

    offsite_mask = np.ones((spec.num_t, spec.num_x), dtype=bool)
    offsite_mask[0, 0] = False
    offsite_gap = float(
        np.max(np.abs(difference[TAU_INDEX, TAU_INDEX][offsite_mask]))
    )
    origin_gap = float(np.real(difference[TAU_INDEX, TAU_INDEX, 0, 0]))
    expected_gap = float(expected_contact[0, 0])

    result: dict[str, np.ndarray | float | int] = {
        "num_t": spec.num_t,
        "num_x": spec.num_x,
        "dt": spec.dt,
        "dx": spec.dx,
        "path_momentum": path_momentum,
        "canonical_momentum": canonical_momentum,
        "contact_momentum": contact_momentum,
        "path_coordinate": path_coordinate,
        "canonical_coordinate": canonical_coordinate,
        "contact_coordinate": contact_coordinate,
        "difference": difference,
        "expected_contact": expected_contact,
        "tau_values": coordinate_separations(spec.num_t, spec.dt),
        "x_values": coordinate_separations(spec.num_x, spec.dx),
        "offsite_gap": offsite_gap,
        "origin_gap": origin_gap,
        "expected_gap": expected_gap,
    }

    if mc_spec is not None:
        monte_carlo = monte_carlo_path_integral(spec, mc_spec)
        result.update(monte_carlo)
        mc_difference = monte_carlo["mc_coordinate"] - path_coordinate
        result["mc_tau_tau_rms_error"] = float(
            np.sqrt(np.mean(np.real(mc_difference[TAU_INDEX, TAU_INDEX]) ** 2))
        )
        result["mc_tau_tau_origin_error"] = float(
            np.real(mc_difference[TAU_INDEX, TAU_INDEX, 0, 0])
        )

    return result


def save_results(save_path: Path, cases: list[dict[str, np.ndarray | float | int]], mass: float) -> None:
    payload: dict[str, np.ndarray] = {
        "mass": np.array(mass, dtype=np.float64),
        "num_cases": np.array(len(cases), dtype=np.int64),
    }

    for case in cases:
        label = f"N{case['num_x']}"
        payload[f"{label}_dt"] = np.array(case["dt"], dtype=np.float64)
        payload[f"{label}_dx"] = np.array(case["dx"], dtype=np.float64)
        payload[f"{label}_tau_values"] = case["tau_values"]
        payload[f"{label}_x_values"] = case["x_values"]
        payload[f"{label}_path_coordinate"] = case["path_coordinate"]
        payload[f"{label}_canonical_coordinate"] = case["canonical_coordinate"]
        payload[f"{label}_contact_coordinate"] = case["contact_coordinate"]
        payload[f"{label}_difference"] = case["difference"]
        payload[f"{label}_path_coordinate_shifted"] = shift_last_two_axes(case["path_coordinate"])
        payload[f"{label}_canonical_coordinate_shifted"] = shift_last_two_axes(case["canonical_coordinate"])
        payload[f"{label}_contact_coordinate_shifted"] = shift_last_two_axes(case["contact_coordinate"])
        payload[f"{label}_difference_shifted"] = shift_last_two_axes(case["difference"])
        payload[f"{label}_offsite_gap"] = np.array(case["offsite_gap"], dtype=np.float64)
        payload[f"{label}_origin_gap"] = np.array(case["origin_gap"], dtype=np.float64)
        payload[f"{label}_expected_gap"] = np.array(case["expected_gap"], dtype=np.float64)
        if "mc_coordinate" in case:
            payload[f"{label}_mc_coordinate"] = case["mc_coordinate"]
            payload[f"{label}_mc_coordinate_shifted"] = shift_last_two_axes(
                case["mc_coordinate"]
            )
            payload[f"{label}_mc_acceptance_rate"] = np.array(
                case["mc_acceptance_rate"], dtype=np.float64
            )
            payload[f"{label}_mc_mean_action"] = np.array(
                case["mc_mean_action"], dtype=np.float64
            )
            payload[f"{label}_mc_action_std"] = np.array(
                case["mc_action_std"], dtype=np.float64
            )
            payload[f"{label}_mc_samples"] = np.array(
                case["mc_samples"], dtype=np.int64
            )
            payload[f"{label}_mc_thermalization_sweeps"] = np.array(
                case["mc_thermalization_sweeps"], dtype=np.int64
            )
            payload[f"{label}_mc_sweeps_between_samples"] = np.array(
                case["mc_sweeps_between_samples"], dtype=np.int64
            )
            payload[f"{label}_mc_step_size"] = np.array(
                case["mc_step_size"], dtype=np.float64
            )
            payload[f"{label}_mc_tau_tau_rms_error"] = np.array(
                case["mc_tau_tau_rms_error"], dtype=np.float64
            )
            payload[f"{label}_mc_tau_tau_origin_error"] = np.array(
                case["mc_tau_tau_origin_error"], dtype=np.float64
            )

    np.savez_compressed(save_path, **payload)


def plot_case(
    case: dict[str, np.ndarray | float | int],
    output_dir: Path | None,
    show_plot: bool,
) -> None:
    try:
        import matplotlib.pyplot as plt
    except ImportError as exc:
        raise RuntimeError(
            "Plotting requires matplotlib. Install it or remove the --plot flag."
        ) from exc

    shifted_path = shift_last_two_axes(case["path_coordinate"])
    shifted_canonical = shift_last_two_axes(case["canonical_coordinate"])
    shifted_difference = shift_last_two_axes(case["difference"])
    shifted_mc = (
        shift_last_two_axes(case["mc_coordinate"]) if "mc_coordinate" in case else None
    )

    tau_values = case["tau_values"]
    x_values = case["x_values"]
    tau_tau_index = len(tau_values) // 2

    path_tau_tau = np.real(shifted_path[TAU_INDEX, TAU_INDEX])
    canonical_tau_tau = np.real(shifted_canonical[TAU_INDEX, TAU_INDEX])
    difference_tau_tau = np.real(shifted_difference[TAU_INDEX, TAU_INDEX])
    mc_tau_tau = (
        np.real(shifted_mc[TAU_INDEX, TAU_INDEX]) if shifted_mc is not None else None
    )

    extent = [x_values[0], x_values[-1], tau_values[0], tau_values[-1]]

    figure, axes = plt.subplots(2, 2, figsize=(11, 8.5), constrained_layout=True)
    figure.suptitle(
        f"1+1d Euclidean Proca lattice correlators: N={case['num_x']}"
    )

    image_specs = [
        (axes[0, 0], path_tau_tau, r"$G_{\mathrm{path};\tau\tau}(\tau,x)$"),
        (axes[0, 1], canonical_tau_tau, r"$G_{\mathrm{can};\tau\tau}(\tau,x)$"),
        (axes[1, 0], difference_tau_tau, r"$G_{\mathrm{path}}-G_{\mathrm{can}}$"),
    ]

    for axis, values, title in image_specs:
        image = axis.imshow(
            values,
            origin="lower",
            aspect="auto",
            extent=extent,
            cmap="coolwarm",
        )
        axis.set_title(title)
        axis.set_xlabel("x")
        axis.set_ylabel(r"$\tau$")
        figure.colorbar(image, ax=axis, shrink=0.85)

    slice_axis = axes[1, 1]
    slice_axis.plot(x_values, path_tau_tau[tau_tau_index], label="path", linewidth=2.0)
    slice_axis.plot(x_values, canonical_tau_tau[tau_tau_index], label="canonical", linewidth=2.0)
    if mc_tau_tau is not None:
        slice_axis.plot(
            x_values,
            mc_tau_tau[tau_tau_index],
            label="path integral MC",
            linewidth=1.5,
            linestyle="--",
        )
    slice_axis.plot(x_values, difference_tau_tau[tau_tau_index], label="difference", linewidth=1.6)
    slice_axis.set_title(r"Equal-time slice $\tau=0$")
    slice_axis.set_xlabel("x")
    slice_axis.set_ylabel(r"$G_{\tau\tau}$")
    slice_axis.legend()
    slice_axis.grid(alpha=0.25)

    if output_dir is not None:
        output_dir.mkdir(parents=True, exist_ok=True)
        figure.savefig(output_dir / f"proca_tt_N{case['num_x']}.png", dpi=180)

    if show_plot:
        plt.show()

    plt.close(figure)


def format_case_report(case: dict[str, np.ndarray | float | int]) -> str:
    report = (
        f"N={case['num_x']:4d}  dt={case['dt']:.6f}  dx={case['dx']:.6f}  "
        f"origin gap={case['origin_gap']:.10e}  "
        f"expected={case['expected_gap']:.10e}  "
        f"offsite max={case['offsite_gap']:.3e}"
    )
    if "mc_coordinate" in case:
        report += (
            f"  mc acc={case['mc_acceptance_rate']:.3f}  "
            f"mc tt rms={case['mc_tau_tau_rms_error']:.3e}"
        )
    return report


def build_argument_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Compute free 1+1d Euclidean Proca correlators on a periodic lattice "
            "and isolate the tau-tau contact term."
        )
    )
    parser.add_argument(
        "--Nlist",
        default="64,128,256",
        help="Comma-separated lattice sizes. Each entry uses Nt = Nx = N.",
    )
    parser.add_argument("--m", type=float, default=1.0, help="Proca mass.")
    parser.add_argument("--L", type=float, default=1.0, help="Spatial period.")
    parser.add_argument(
        "--beta",
        type=float,
        default=None,
        help="Euclidean time period. Defaults to the same value as L.",
    )
    parser.add_argument(
        "--save",
        type=Path,
        default=None,
        help="Optional .npz output path.",
    )
    parser.add_argument(
        "--plot",
        action="store_true",
        help="Generate tau-tau heatmaps and an equal-time slice for each lattice size.",
    )
    parser.add_argument(
        "--plot-dir",
        type=Path,
        default=None,
        help="Optional output directory for saved plot images.",
    )
    parser.add_argument(
        "--no-show",
        action="store_true",
        help="Do not open an interactive plot window when --plot is used.",
    )
    parser.add_argument(
        "--mc-samples",
        type=int,
        default=0,
        help=(
            "Number of saved Metropolis samples for explicit Euclidean "
            "path-integral estimation. Disabled by default."
        ),
    )
    parser.add_argument(
        "--mc-thermalization",
        type=int,
        default=200,
        help="Number of Metropolis sweeps discarded before measurements.",
    )
    parser.add_argument(
        "--mc-sweeps-between",
        type=int,
        default=5,
        help="Number of Metropolis sweeps between saved samples.",
    )
    parser.add_argument(
        "--mc-step-size",
        type=float,
        default=1.0,
        help="Gaussian proposal width for single-site Metropolis updates.",
    )
    parser.add_argument(
        "--mc-seed",
        type=int,
        default=None,
        help="Optional random seed for reproducible Metropolis sampling.",
    )
    return parser


def main() -> None:
    parser = build_argument_parser()
    args = parser.parse_args()

    if args.m <= 0.0:
        raise ValueError("The Proca mass must be positive.")
    if args.L <= 0.0:
        raise ValueError("The spatial period must be positive.")

    beta = args.beta if args.beta is not None else args.L
    if beta <= 0.0:
        raise ValueError("The Euclidean time period must be positive.")

    mc_spec = None
    if args.mc_samples:
        if args.mc_samples <= 0:
            raise ValueError("--mc-samples must be positive when enabled.")
        if args.mc_thermalization < 0:
            raise ValueError("--mc-thermalization must be non-negative.")
        if args.mc_sweeps_between <= 0:
            raise ValueError("--mc-sweeps-between must be positive.")
        if args.mc_step_size <= 0.0:
            raise ValueError("--mc-step-size must be positive.")
        mc_spec = MonteCarloSpec(
            samples=args.mc_samples,
            thermalization_sweeps=args.mc_thermalization,
            sweeps_between_samples=args.mc_sweeps_between,
            step_size=args.mc_step_size,
            seed=args.mc_seed,
        )

    cases = []
    for lattice_size in parse_int_list(args.Nlist):
        spec = LatticeSpec(
            num_t=lattice_size,
            num_x=lattice_size,
            beta=beta,
            length=args.L,
            mass=args.m,
        )
        case = compute_case(spec, mc_spec)
        cases.append(case)
        print(format_case_report(case))

    if args.plot:
        for case in cases:
            plot_case(case, args.plot_dir, show_plot=not args.no_show)

    if args.save is not None:
        save_results(args.save, cases, args.m)
        print(f"Saved results to {args.save}")


if __name__ == "__main__":
    main()

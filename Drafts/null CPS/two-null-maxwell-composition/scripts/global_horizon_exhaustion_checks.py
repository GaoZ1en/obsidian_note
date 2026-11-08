"""Global complete-horizon regression on Schwartz massive packets.

This checks sampled tail/exhaustion behavior and deterministic finite spectral
linear algebra. It is not a proof of the L2 tail theorem, the closed global range, or
the Maxwell potential quotient.
"""

from __future__ import annotations

import cmath
import math


def require(label: str, condition: bool, detail: str = "") -> None:
    suffix = f" ({detail})" if detail else ""
    print(f"{label}: {condition}{suffix}")
    if not condition:
        raise AssertionError(label)


def trap(values: list[complex], step: float) -> complex:
    return step * (sum(values[1:-1], 0j) + (values[0] + values[-1]) / 2)


MU = 1.7
K_MAX = 9.0
NK = 721
DK = 2 * K_MAX / (NK - 1)
KS = [-K_MAX + j * DK for j in range(NK)]


def omega(k: float) -> float:
    return math.sqrt(k * k + MU * MU)


def alpha(k: float) -> float:
    return (omega(k) + k) / math.sqrt(2)


def beta(k: float) -> float:
    return (omega(k) - k) / math.sqrt(2)


def packet(k: float, center: float, width: float, phase: float) -> complex:
    envelope = math.exp(-((k - center) / width) ** 2 / 2)
    return envelope * cmath.exp(1j * phase * k)


A1 = [packet(k, -0.7, 1.05, 0.31) for k in KS]
A2 = [packet(k, 1.1, 0.90, -0.27) * (1 + 0.08j * k) for k in KS]


def multiplier(kind: str, k: float) -> complex:
    if kind == "id":
        return 1.0
    if kind == "time":
        return -1j * omega(k)
    if kind == "space":
        return 1j * k
    raise ValueError(kind)


DS = 0.05
S_MAX = 32.0
NS = round(S_MAX / DS) + 1
SS = [j * DS for j in range(NS)]


def synthesize(amplitudes: list[complex], sheet: str,
               kind: str) -> tuple[list[float], list[float]]:
    values: list[float] = []
    derivatives: list[float] = []
    for s in SS:
        terms: list[complex] = []
        dterms: list[complex] = []
        for k, a in zip(KS, amplitudes):
            gamma = alpha(k) if sheet == "left" else beta(k)
            norm = 1 / math.sqrt(4 * math.pi * omega(k))
            coeff = multiplier(kind, k) * a
            wave = cmath.exp(-1j * gamma * s)
            terms.append(norm * coeff * wave)
            dterms.append(norm * coeff * (-1j * gamma) * wave)
        values.append(2 * trap(terms, DK).real)
        derivatives.append(2 * trap(dterms, DK).real)
    return values, derivatives


profiles: dict[tuple[int, str, str], tuple[list[float], list[float]]] = {}
for index, amplitudes in ((1, A1), (2, A2)):
    for sheet in ("left", "right"):
        for kind in ("id", "time", "space"):
            profiles[index, sheet, kind] = synthesize(amplitudes, sheet, kind)


def cumulative_symplectic(first: tuple[list[float], list[float]],
                          second: tuple[list[float], list[float]]) -> list[float]:
    f, fp = first
    g, gp = second
    density = [fp[j] * g[j] - gp[j] * f[j] for j in range(NS)]
    cumulative = [0.0]
    for j in range(1, NS):
        cumulative.append(cumulative[-1]
                          + DS * (density[j - 1] + density[j]) / 2)
    return cumulative


def cross_curve(kind1: str, kind2: str) -> list[float]:
    out = [0.0] * NS
    for sheet in ("left", "right"):
        curve = cumulative_symplectic(profiles[1, sheet, kind1],
                                      profiles[2, sheet, kind2])
        out = [a + b for a, b in zip(out, curve)]
    return out


OMEGA_12 = cross_curve("id", "id")
TIME_RESIDUAL = [a + b for a, b in
                 zip(cross_curve("time", "id"),
                     cross_curve("id", "time"))]
SPACE_RESIDUAL = [a + b for a, b in
                  zip(cross_curve("space", "id"),
                      cross_curve("id", "space"))]


spectral_density = [1j * (a.conjugate() * b - b.conjugate() * a)
                    for a, b in zip(A1, A2)]
OMEGA_GLOBAL = trap(spectral_density, DK).real


def sample(curve: list[float], length: float) -> float:
    return curve[round(length / DS)]


def matmul(left: list[list[float]], right: list[list[float]]) -> list[list[float]]:
    rt = list(zip(*right))
    return [[sum(a * b for a, b in zip(row, col)) for col in rt]
            for row in left]


def transpose(matrix: list[list[float]]) -> list[list[float]]:
    return [list(row) for row in zip(*matrix)]


def add(left: list[list[float]], right: list[list[float]]) -> list[list[float]]:
    return [[a + b for a, b in zip(ra, rb)] for ra, rb in zip(left, right)]


def max_abs(matrix: list[list[float]]) -> float:
    return max(abs(value) for row in matrix for value in row)


def block_diag(blocks: list[list[list[float]]]) -> list[list[float]]:
    size = sum(len(block) for block in blocks)
    out = [[0.0] * size for _ in range(size)]
    offset = 0
    for block in blocks:
        for i, row in enumerate(block):
            for j, value in enumerate(row):
                out[offset + i][offset + j] = value
        offset += len(block)
    return out


def spectral_matrix_checks() -> None:
    momenta = [-1.25, 0.0, 1.8]
    frequencies = [math.sqrt(k * k + MU * MU) for k in momenta]
    omega_blocks = [[[0.0, -1.0], [1.0, 0.0]] for _ in momenta]
    symplectic = block_diag(omega_blocks)
    at = block_diag([[[0.0, w], [-w, 0.0]] for w in frequencies])
    az = block_diag([[[0.0, -k], [k, 0.0]] for k in momenta])
    kt = matmul(symplectic, at)
    kz = matmul(symplectic, az)
    require("global time generator is symplectic",
            max_abs(add(matmul(transpose(at), symplectic),
                        matmul(symplectic, at))) < 1e-12)
    require("global space generator is symplectic",
            max_abs(add(matmul(transpose(az), symplectic),
                        matmul(symplectic, az))) < 1e-12)
    require("time Hamiltonian matrix has the positive-energy sign",
            all(abs(kt[2*j][2*j] - frequencies[j]) < 1e-12
                and abs(kt[2*j+1][2*j+1] - frequencies[j]) < 1e-12
                for j in range(len(momenta))))
    require("active spatial Hamiltonian has the minus-k sign",
            all(abs(kz[2*j][2*j] + momenta[j]) < 1e-12
                and abs(kz[2*j+1][2*j+1] + momenta[j]) < 1e-12
                for j in range(len(momenta))))
    require("time and space generators commute",
            max_abs(add(matmul(at, az),
                        [[-x for x in row] for row in matmul(az, at)])) < 1e-12)

    # Two real m copies: a_1 -> a_2, a_2 -> -a_1.
    omega_rot = block_diag([[[0.0, -1.0], [1.0, 0.0]]] * 2)
    rotation = [[0.0, 0.0, 1.0, 0.0],
                [0.0, 0.0, 0.0, 1.0],
                [-1.0, 0.0, 0.0, 0.0],
                [0.0, -1.0, 0.0, 0.0]]
    require("finite multiplet rotation is symplectic",
            max_abs(add(matmul(transpose(rotation), omega_rot),
                        matmul(omega_rot, rotation))) < 1e-12)


def dictionary_and_weyl_checks() -> None:
    s = math.sqrt(6.0)
    e0, b0 = 1.3, -0.8
    p_e, r_e, p_b, r_b = 0.4, -0.2, 0.7, 0.5
    c_e, c_b = -e0 / s, -b0 / s
    du, dv = 0.3, 0.45
    f_e, g_e = c_e + du * p_e, c_e - dv * r_e
    f_b, g_b = c_b + du * p_b, c_b + dv * r_b
    recovered = (-s * c_e, -s * c_b,
                 (f_e - c_e) / du, -(g_e - c_e) / dv,
                 (f_b - c_b) / du, (g_b - c_b) / dv)
    target = (e0, b0, p_e, r_e, p_b, r_b)
    require("full Maxwell/master dictionary retains and inverts corner data",
            max(abs(a - b) for a, b in zip(recovered, target)) < 1e-12)
    require("both master sheets share one corner value",
            abs((f_e - du * p_e) - (g_e + dv * r_e)) < 1e-12
            and abs((f_b - du * p_b) - (g_b - dv * r_b)) < 1e-12)

    j = [[0.0, -1.0], [1.0, 0.0]]
    # Construct (1/2 J) direct-sum (1/2 J).
    cells = [[0.0] * 4 for _ in range(4)]
    for offset in (0, 2):
        for i in range(2):
            for q in range(2):
                cells[offset + i][offset + q] = 0.5 * j[i][q]
    embedding = [[1.0, 0.0], [0.0, 1.0],
                 [1.0, 0.0], [0.0, 1.0]]
    pullback = matmul(transpose(embedding), matmul(cells, embedding))
    require("Weyl composition uses only the symplectic gluing map",
            max_abs(add(pullback, [[-x for x in row] for row in j])) < 1e-12)
    x, y = [0.3, -0.4], [0.2, 0.7]
    exponent_before = sum(x[i] * j[i][q] * y[q]
                          for i in range(2) for q in range(2))
    gx = [x[0], x[1], x[0], x[1]]
    gy = [y[0], y[1], y[0], y[1]]
    exponent_after = sum(gx[i] * cells[i][q] * gy[q]
                         for i in range(4) for q in range(4))
    require("Weyl phase is independent of the finite translation gate",
            abs(exponent_before - exponent_after) < 1e-12)


def main() -> None:
    lengths = [8.0, 16.0, 24.0, 32.0]
    errors = [abs(sample(OMEGA_12, length) - OMEGA_GLOBAL)
              for length in lengths]
    time_residuals = [abs(sample(TIME_RESIDUAL, length)) for length in lengths]
    space_residuals = [abs(sample(SPACE_RESIDUAL, length)) for length in lengths]
    print("finite-to-global symplectic errors:", errors)
    print("time-translation residuals:", time_residuals)
    print("space-translation residuals:", space_residuals)
    require("finite-cross symplectic form converges on Schwartz packets",
            errors[-1] < 3e-3 and errors[-1] < errors[0])
    require("time-translation moving-boundary residual decays",
            time_residuals[-1] < 3e-3 and time_residuals[-1] < time_residuals[0])
    require("space-translation moving-boundary residual decays",
            space_residuals[-1] < 3e-3 and space_residuals[-1] < space_residuals[0])
    spectral_matrix_checks()
    dictionary_and_weyl_checks()
    print("ALL GLOBAL HORIZON EXHAUSTION CHECKS PASSED")


if __name__ == "__main__":
    main()

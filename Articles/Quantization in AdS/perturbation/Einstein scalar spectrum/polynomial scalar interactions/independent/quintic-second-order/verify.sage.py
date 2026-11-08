"""Independent exact Fock/finite-difference check, SageMath --nodotsage.

No imported project code and no use of the claimed exchange-kernel formula.
All energy coefficients below have pi^(-3) stripped off.
"""
from sage.all import QQ, PolynomialRing, binomial, factorial
import json

R = PolynomialRing(QQ, 'x')
x = R.gen()
Delta = QQ(4) / 3
radial = []
for n in range(13):
    # Shifted Jacobi polynomial from its finite binomial definition.
    J = sum(binomial(n + Delta - 1, n-k) * binomial(n, k)
            * (-x)**k * (1-x)**(n-k) for k in range(n+1))
    # Integrate each monomial against x^(5 Delta/2 - 2).
    integ = sum(c / (QQ(5)*Delta/2 - 1 + h)
                for h, c in enumerate(J.list()))
    radial.append(integ)

# Spatial factor from r dr dtheta and five KG-normalized modes.
I0_squared = QQ(1)/32 * radial[0]**2   # pi^3 I0^2
I1_squared = QQ(1)/32 * radial[1]**2   # pi^3 I1^2

def ground_only_shift(N):
    """Exact second-order Fock sum for I0 : (a+a†)^5 : /5!."""
    result = QQ(0)
    for creators in range(6):
        annihilators = 5 - creators
        if annihilators > N:
            continue
        M = N - annihilators + creators
        matrix_element_squared = (
            I0_squared * factorial(N) * factorial(M)
            / (factorial(N-annihilators)**2
               * factorial(creators)**2 * factorial(annihilators)**2))
        denominator = (annihilators-creators)*Delta
        assert denominator != 0
        result += matrix_element_squared / denominator
    return result


def one_excited_shift(N):
    """Exact Fock sum for the single excited oscillator b, initially empty."""
    result = QQ(0)
    omega_b = Delta + 2
    for creators in range(5):
        annihilators = 4 - creators
        if annihilators > N:
            continue
        M = N - annihilators + creators
        matrix_element_squared = (
            I1_squared * factorial(N) * factorial(M)
            / (factorial(N-annihilators)**2
               * factorial(creators)**2 * factorial(annihilators)**2))
        denominator = (annihilators-creators)*Delta - omega_b
        assert denominator != 0
        result += matrix_element_squared / denominator
    return result


def fourth_difference(func):
    return sum((-1)**(4-N)*binomial(4,N)*func(N) for N in range(5))

b0 = fourth_difference(ground_only_shift)
b1 = fourth_difference(one_excited_shift)

# Independent enumeration of every possible particle number in full J=0 blocks.
blocks = {}
for N in range(1, 5):
    sectors = []
    for M in range(N+1):
        P = (N-M)*Delta/2
        if P.denominator() == 1 and P >= 0 and (M > 0 or P == 0):
            sectors.append((M, int(P), int(P)))
    blocks[N] = sectors

checks = {
    'radial_support': radial == [QQ(3)/7, -QQ(9)/70] + [QQ(0)]*11,
    'overlap_normalization': I0_squared == QQ(9)/1568,
    'ground_contribution': b0 == -QQ(81)/17920,
    'excited_contribution': b1 == -QQ(9297)/11648000,
    'full_fourbody_coefficient': b0+b1 == -QQ(61947)/11648000,
    'complete_four_ground_block': blocks[4] == [(1,2,2),(4,0,0)],
    'lower_blocks_isolated': all(blocks[n] == [(n,0,0)] for n in [1,2,3]),
    # Required CTs and a finite sextic term have degree <=3 in ground occupation.
    'lower_connected_terms_cancel': all(
        fourth_difference(lambda N: binomial(N,k)) == 0 for k in range(4)),
}
assert all(checks.values()), checks
report = {
    'checks': checks,
    'allPassed': all(checks.values()),
    'radial': [str(v) for v in radial],
    'ground_only_E_N': [str(ground_only_shift(n)) for n in range(5)],
    'one_excited_E_N': [str(one_excited_shift(n)) for n in range(5)],
    'B4_contributions_pi3': [str(b0), str(b1)],
    'B4_pi3': str(b0+b1),
    'complete_blocks_NPQ': blocks,
}
print(json.dumps(report, indent=2, sort_keys=True))

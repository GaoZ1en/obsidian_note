"""Exact failure of the simplest logarithmic-field spectral intertwiner.

The Hamiltonians come from differential pair Casimirs, without Racah
compression. The known Einstein pair kernel remains the dynamical input;
this check does not rederive that kernel.
"""
import json
from pathlib import Path
import sympy as s
from verify_nonchiral import full_primary_reference


def main():
    z = s.symbols('z0:3')
    centered = [zi-s.Add(*z)/3 for zi in z]
    p2 = s.Add(*(zi**2 for zi in centered))
    p3 = s.Add(*(zi**3 for zi in centered))
    d2 = [zi**2-p2/3 for zi in centered]
    d2p2 = s.expand(sum(d2[i]*s.diff(p2,z[i]) for i in range(3)))
    assert s.expand(d2p2-2*p3) == 0
    energies = {}
    for p, expected in [(2,-40),(3,-s.Rational(312,7))]:
        ref = full_primary_reference(s.Integer(2),p,0,matrices=True)
        assert ref['dimension'] == 1
        actual = ref['matrix'][0,0]
        assert actual == expected
        energies[p] = actual
    coefficient = s.factor(2*(energies[3]-energies[2]))
    assert coefficient == -s.Rational(64,7)
    result = {
        'N':3, 'Delta':'2', 'Q':0,
        'p_r':'sum_i (z_i-mean(z))^r',
        'W_p2_G_coefficient':str(energies[2]),
        'W_p3_G_coefficient':str(energies[3]),
        'D2_p2':'2*p3',
        'commutator_W_D2_on_p2':str(coefficient)+'*p3',
        'operator_eigenvalue_computation':'differential pair Casimir on complete Bose primary spaces',
        'Racah_compression_used':False,
        'conclusion':'The logarithmic frame does not intertwine the full residual spectrum.',
        'scope':'Does not rule out other commuting operators or integrability.'
    }
    Path(__file__).with_name('logarithmic_commutator_check.json').write_text(
        json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))


if __name__ == '__main__':
    main()

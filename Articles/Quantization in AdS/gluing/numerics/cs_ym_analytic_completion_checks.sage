# Exact finite representation diagnostics for the YM charged-block proof.
from sage.all import *
import builtins

def opposite_generators(twice_spin):
    dim = twice_spin + 1
    plus = matrix(QQbar, dim)
    for col in range(1, dim):
        plus[col - 1, col] = QQbar(col * (twice_spin - col + 1)).sqrt()
    minus = plus.conjugate_transpose()
    spin = QQ(twice_spin) / 2
    js = [(plus + minus) / 2, (plus - minus) / (2 * QQbar(I)),
          diagonal_matrix(QQbar, [spin - r for r in range(dim)])]
    return [(-QQbar(I) * j).transpose() for j in js]

checks = {"global Casimir on every block": True,
          "total Casimir full Clebsch-Gordan spectrum": True,
          "strong-commutation finite-block diagnostic": True}
cases = 0
for gj in range(7):
    for av in range(5):
        dg, da = gj + 1, av + 1
        global_y = [identity_matrix(QQbar, da).tensor_product(y)
                    for y in opposite_generators(gj)]
        charge_r = [r.tensor_product(identity_matrix(QQbar, dg))
                    for r in opposite_generators(av)]
        size = da * dg
        zero = matrix(QQbar, size)
        cg = -builtins.sum((y*y for y in global_y), zero)
        total = -builtins.sum(((y+r)*(y+r) for y,r in zip(global_y,charge_r)), zero)
        j = QQ(gj)/2
        checks["global Casimir on every block"] &= (cg == j*(j+1)*identity_matrix(QQbar,size))
        checks["strong-commutation finite-block diagnostic"] &= (cg*total == total*cg and total == total.conjugate_transpose())
        actual = total.charpoly()
        x = actual.parent().gen()
        expected = actual.parent()(1)
        for doubled_total in range(abs(gj-av), gj+av+1, 2):
            s = QQ(doubled_total)/2
            expected *= (x-s*(s+1))**(doubled_total+1)
        checks["total Casimir full Clebsch-Gordan spectrum"] &= (actual == expected)
        cases += 1
print({"groups":len(checks),"representation_pairs":cases,"checks":checks,"all_passed":all(checks.values())})
assert all(checks.values())

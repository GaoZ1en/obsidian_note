# Sage/Python; finite exact identities, not infinite-dimensional sewing proofs.
from sage.all import FreeGroup, QQ, matrix

checks = {}
def record(name, condition):
    if condition is not True and condition is not False:
        raise TypeError("Non-Boolean check: " + name)
    checks[name] = condition
    if condition is not True:
        raise AssertionError(name)

group = FreeGroup(["u", "t1", "t2", "m1", "m2", "h1"])
u, t1, t2, m1, m2, h1 = group.gens()
p1 = (t1*u)**-1 * m1 * (t1*u)
p2 = (t2*u)**-1 * m2 * (t2*u)
record("incident_path_1", p1 == u**-1*t1**-1*m1*t1*u)
record("incident_path_2", p2 == u**-1*t2**-1*m2*t2*u)
record("ordered_composite", p1*p2 == u**-1*t1**-1*m1*t1*t2**-1*m2*t2*u)
record("puncture_frame_covariance",
       (h1**-1*t1*u)**-1*(h1**-1*m1*h1)*(h1**-1*t1*u) == p1)
record("deleted_transport_changes_data", p1 != t1**-1*m1*t1)
record("order_change_requires_braid", p1*p2 != p2*p1)

# Integer labels are twice the spin. Only levels one and two are checked.
def fuse(a, b, level):
    return list(range(abs(a-b), min(a+b, 2*level-a-b)+1, 2))
def counts(paths):
    return {a: paths.count(a) for a in set(paths)}
record("level_one_pair", fuse(1,1,1) == [0])
record("level_two_pair", fuse(1,1,2) == [0,2])
record("level_two_psi_sigma", fuse(2,1,2) == [1])
record("level_two_psi_psi", fuse(2,2,2) == [0])
for level in (1,2):
    tested = []
    for a in range(level+1):
        for b in range(level+1):
            for c in range(level+1):
                left = [z for x in fuse(a,b,level) for z in fuse(x,c,level)]
                right = [z for x in fuse(b,c,level) for z in fuse(a,x,level)]
                tested.append(counts(left) == counts(right))
    record("fusion_associativity_level_" + str(level), all(tested))
for level, expected in ((1,1),(2,2)):
    paths = [(a,b,c) for a in fuse(1,1,level)
             for b in fuse(a,1,level) for c in fuse(b,1,level) if c == 0]
    record("four_puncture_vacuum_paths_level_" + str(level), len(paths) == expected)
e = matrix(QQ, [[1,0],[0,0]])
f = matrix(QQ, [[1,-1],[-1,1]])/2
record("Jones_projectors", e*e == e and f*f == f)
record("Jones_reduction", e*f*e == e/2 and f*e*f == f/2)
record("channel_projection_has_kernel", e.rank() == 1 and e.ncols() == 2)
print({"allPassed": all(checks.values()), "count": len(checks), "checks": checks,
       "scope": "Free-group identities and levels 1,2 only; no Connes/AMM proof by finite tests."})

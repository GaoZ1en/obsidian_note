# Finite character check; completeness is established separately in the note.
import json
R = PowerSeriesRing(QQ, 'q', default_prec=15)
q = R.gen()
gravity = sum((2*j+1)*sum(q**(j+1+2*p)+q**(j+2+2*p)
                         for p in range(7)) for j in range(2,14))
maxwell = sum((2*j+1)*sum(q**(j+1+2*p)+q**(j+2+2*p)
                         for p in range(7)) for j in range(1,14))
checks = {
    "gravity_through_energy_14": gravity.add_bigoh(15) ==
        ((5*q**3-3*q**4)/(1-q)**3).add_bigoh(15),
    "maxwell_through_energy_14": maxwell.add_bigoh(15) ==
        ((3*q**2-q**3)/(1-q)**3).add_bigoh(15),
}
assert all(value is True for value in checks.values()), checks
print(json.dumps(checks, sort_keys=True))

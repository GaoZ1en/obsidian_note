A = WeylCharacterRing('A1', style='coroots')
f = A((1,))
a = A((2,))
R = PolynomialRing(QQ, 'x'); x = R.gen()
t2 = x**2 + (-x)**2
t4 = x**4 + (-x)**4

checks = [
    ("A1_fundamental_dimension_2", f.degree() == 2),
    ("A1_adjoint_dimension_3", a.degree() == 3),
    ("A1_tensor_square", f*f == A((0,))+a),
    ("SU2_quartic_trace", t4 == t2**2/2),
    ("half_doublet_gamma_one_quarter", t4/2 == t2**2/4),
    ("single_negative_half_doublet_fails_mod12", ZZ(-1) % 12 == 11),
    ("full_negative_doublet_fails_mod12", ZZ(-2) % 12 == 10),
]
for label, value in checks:
    print(label, value)
assert all(value is True for _, value in checks)


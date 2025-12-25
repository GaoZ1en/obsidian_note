import cmath

def check_identity(q, N_cutoff=50):
    # LHS
    lhs = 1.0
    for l in range(N_cutoff):
        for lp in range(N_cutoff):
            term = (1 - (q**(l+1)) * (q.conjugate()**(lp+1))) / \
                   ((1 - (q**(l+1)) * (q.conjugate()**lp)) * (1 - (q**l) * (q.conjugate()**(lp+1))))
            lhs *= term
            
    # RHS
    rhs = 1.0
    for l in range(1, N_cutoff):
        rhs *= 1 / (abs(1 - q**l)**2)
        
    # Factor N = prod (1 - q^m qbar^n)
    factor_n = 1.0
    for m in range(1, N_cutoff):
        for n in range(1, N_cutoff):
            factor_n *= (1 - (q**m) * (q.conjugate()**n))
            
    return lhs, rhs, factor_n

q = 0.5 + 0.1j
lhs, rhs, factor_n = check_identity(q, N_cutoff=20)
print(f"q = {q}")
print(f"LHS = {lhs}")
print(f"RHS = {rhs}")
print(f"Factor N = {factor_n}")
print(f"RHS / N = {rhs / factor_n}")
print(f"LHS / (RHS / N) = {lhs / (rhs / factor_n)}")

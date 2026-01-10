import sympy as sp

def calculate_field_strength():
    t, r, phi = sp.symbols('t r phi', real=True)
    m = sp.Symbol('m', integer=True, positive=True) # interpreting m >= 1 for the first case
    
    # Generic function to compute F from h
    def compute_F(h_t, h_r, h_phi, phase_factor):
        # Metric g_mn
        g_tt = -(1 + r**2)
        g_rr = 1 / (1 + r**2)
        g_pp = r**2
        
        # Covariant components A_mu = g_mu_nu h^nu
        A_t = g_tt * h_t
        A_r = g_rr * h_r
        A_phi = g_pp * h_phi
        
        # Derivatives
        # F_tr = dt A_r - dr A_t
        F_tr = sp.diff(A_r, t) - sp.diff(A_t, r)
        
        # F_tphi = dt A_phi - dphi A_t
        F_tphi = sp.diff(A_phi, t) - sp.diff(A_t, phi)
        
        # F_rphi = dr A_phi - dphi A_r
        F_rphi = sp.diff(A_phi, r) - sp.diff(A_r, phi)
        
        return F_tr, F_tphi, F_rphi, A_t, A_r, A_phi

    print("--- Case 1: h+, m >= 1, n=0 ---")
    # Expression from file:
    # h^t = e^{-im(t-phi)} r^m (1+r^2)^{-(m+2)/2}
    # h^r = -i e^{-im(t-phi)} r^{m-1} (1+r^2)^{-m/2}
    # h^phi = e^{-im(t-phi)} r^{m-2} (1+r^2)^{-m/2}
    
    phase_plus = sp.exp(-sp.I * m * (t - phi))
    h_t_plus = phase_plus * r**m * (1 + r**2)**(-(m + 2) / 2)
    h_r_plus = -sp.I * phase_plus * r**(m - 1) * (1 + r**2)**(-m / 2)
    h_phi_plus = phase_plus * r**(m - 2) * (1 + r**2)**(-m / 2)
    
    F_tr, F_tphi, F_rphi, At, Ar, Aphi = compute_F(h_t_plus, h_r_plus, h_phi_plus, phase_plus)
    
    print("A_t =", sp.simplify(At / phase_plus))
    print("A_r =", sp.simplify(Ar / phase_plus))
    print("A_phi =", sp.simplify(Aphi / phase_plus))
    
    print("F_tr / phase =", sp.simplify(F_tr / phase_plus))
    print("F_tphi / phase =", sp.simplify(F_tphi / phase_plus))
    print("F_rphi / phase =", sp.simplify(F_rphi / phase_plus))
    
    print("\n--- Case 2: h-, m <= -1, n=0 ---")
    # Let k = -m where m <= -1, so k >= 1
    k = sp.Symbol('k', integer=True, positive=True) 
    # Expression from file:
    # m in file is negative. Let's substitute m -> -k
    # h^t = e^{i(-k)(t+phi)} r^k (1+r^2)^{-(k+2)/2}
    # h^r = -i e^{i(-k)(t+phi)} r^{k-1} (1+r^2)^{-k/2}  (Note: file has r^{-m-1} = r^{k-1} and (1+r^2)^{m/2} = (1+r^2)^{-k/2} ? Wait check file again)
    
    # File check:
    # h^r = -i e^{im(t+phi)} r^{-m-1} (1+r^2)^{m/2}
    # if m = -k, then r^{k-1} (1+r^2)^{-k/2}
    # h^phi = -e^{im(t+phi)} r^{-m-2} (1+r^2)^{m/2}
    # if m = -k, then -e^{-ik(t+phi)} r^{k-2} (1+r^2)^{-k/2}
    
    phase_minus = sp.exp(-sp.I * k * (t + phi))
    h_t_minus = phase_minus * r**k * (1 + r**2)**(-(k + 2) / 2)
    h_r_minus = -sp.I * phase_minus * r**(k - 1) * (1 + r**2)**(-k / 2)
    h_phi_minus = -phase_minus * r**(k - 2) * (1 + r**2)**(-k / 2)
    
    F_tr_m, F_tphi_m, F_rphi_m, At_m, Ar_m, Aphi_m = compute_F(h_t_minus, h_r_minus, h_phi_minus, phase_minus)
    
    print("A_t =", sp.simplify(At_m / phase_minus))
    print("A_r =", sp.simplify(Ar_m / phase_minus))
    print("A_phi =", sp.simplify(Aphi_m / phase_minus))

    print("F_tr / phase =", sp.simplify(F_tr_m / phase_minus))
    print("F_tphi / phase =", sp.simplify(F_tphi_m / phase_minus))
    print("F_rphi / phase =", sp.simplify(F_rphi_m / phase_minus))

if __name__ == "__main__":
    calculate_field_strength()

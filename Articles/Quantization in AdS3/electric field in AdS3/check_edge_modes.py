from sympy import symbols, simplify, series, limit, oo

r, t, phi = symbols('r t phi', real=True, positive=True)
m = symbols('m', integer=True)

# Edge mode formulas from the text
# h_{+, m>=1, n=0}
# We check the phi component which seems most singular
# h_phi = e^{-im(t-phi)} r^{m-2} (1+r^2)^{-m/2}

def check_h_phi_plus(m_val):
    # (1+r^2)^(-m/2) approx 1 near r=0
    # h_phi ~ r^{m-2}
    if m_val == 1:
        return "r^{-1} (Divergent)"
    elif m_val == 2:
        return "r^0 (Constant)"
    elif m_val > 2:
        return f"r^{m_val-2} (Regular -> 0)"
    return "Unknown"

# h_{-, m<=-1, n=0}
# h_phi = -e^{im(t+phi)} r^{-m-2} (1+r^2)^{m/2}
# Let k = -m >= 1
# h_phi ~ r^{k-2}
def check_h_phi_minus(m_val): # m_val is negative
    k = -m_val
    if k == 1:
        return "r^{-1} (Divergent)"
    elif k == 2:
        return "r^0 (Constant)"
    elif k > 2:
        return f"r^{k-2} (Regular -> 0)"
    return "Unknown"

print("Edge Mode Behavior at Origin (r->0):")
print(f"m=1 (+ mode): {check_h_phi_plus(1)}")
print(f"m=2 (+ mode): {check_h_phi_plus(2)}")
print(f"m=-1 (- mode): {check_h_phi_minus(-1)}")
print(f"m=-2 (- mode): {check_h_phi_minus(-2)}")

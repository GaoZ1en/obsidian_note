
import numpy as np
from scipy.special import gamma, psi
import sympy

def check_connection_coefficients():
    # We are looking at the solution regular at z=1 (r=0):
    # u1(z) = F(a, b, a+b, 1-z)
    # Variable z is 1/(1+r^2). z=1 is Origin. z=0 is Infinity.
    # We want to expand u1(z) near z=0 (Infinity).
    # u1(z) ~ A * y1(z) + B * y2(z)
    # y1(z) ~ 1  (Regular at z=0) -> corresponds to r^-1
    # y2(z) ~ ln z (Log at z=0) -> corresponds to r^-1 ln r
    
    # We use the transformation formula 15.3.9 from Abramowitz & Stegun
    # But applied inversely or using the specific one for z -> 1-z.
    # Actually, formula 15.3.7 connects F(a,b,c,z) to F(a,b,1+a+b-c, 1-z).
    # Here our function is DEFINED at 1-z.
    # Let w = 1-z. We have F(a,b, a+b, w).
    # We want to expand in terms of z = 1-w.
    # The expansion of F(a, b, a+b, 1-z) in powers of z involves ln(z)?
    
    # Let's perform this symbolically using sympy to get the exact coefficient B.
    
    a, b = sympy.symbols('a b')
    z = sympy.symbols('z')
    
    # The function is f(z) = hyper([a, b], [a+b], 1-z)
    # We want the expansion at z=0.
    
    # According to DLMF 15.8.4 (Analytic Continuation)
    # F(a, b, c; 1-z) = (Gamma(c)Gamma(c-a-b) / Gamma(c-a)Gamma(c-b)) * F(a, b, a+b-c+1, z)  <-- if c-a-b non-integer
    # THIS IS NOT APPLICABLE directly because we have integer differences?
    # Our parameters in the `hyper` at 1-z are A=a, B=b, C=a+b.
    # So C - A - B = (a+b) - a - b = 0. INTEGER.
    # This is the Logarithmic case.
    
    # DLMF 15.8.5 (Logarithmic case for integer difference m=0)
    # w1(1-z) = (Gamma(a+b)/(Gamma(a)Gamma(b))) * [ -ln(z) - 2*Euler + psi(a) + psi(b) ] + ...
    # Wait, let's verify the leading Log term coefficient.
    
    # It says:
    # F(a, b, a+b, 1-z) = (Gamma(a+b) / (Gamma(a)*Gamma(b))) * ( -ln(z) + ... ) + (Regular terms)
    # The coefficient of ln(z) is -Gamma(a+b) / (Gamma(a)*Gamma(b)).
    
    print("Coefficient of ln(z) term in the expansion of F(a, b, a+b, 1-z) at z=0 is:")
    print("Coeff = - Gamma(a+b) / (Gamma(a) * Gamma(b))")
    
    # If this coefficient is NOT zero, then the Regular-at-Origin solution contains a Log-at-Infinity component.
    # This means to select the Regular-at-Origin solution, we MUST accept the Log-at-Infinity behavior.
    # UNLESS Gamma(a) or Gamma(b) is infinite (i.e. poles).
    
    return
    
check_connection_coefficients()

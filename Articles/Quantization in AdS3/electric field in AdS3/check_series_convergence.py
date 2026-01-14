
import sympy

def check_series_convergence():
    # Parameters
    m = sympy.symbols('m', integer=True, nonnnegative=True)
    omega = sympy.symbols('omega', real=True)
    m_pm = sympy.symbols('m_pm', real=True, nonnegative=True) # Represents |m_pm|
    
    # Hypergeometric parameters
    # a = (|m_pm| - omega + 1)/2
    # b = (|m_pm| + omega + 1)/2
    # c = 1
    
    # Convergence condition for 2F1(a,b;c;1) is Re(c - a - b) > 0.
    
    a = (m_pm - omega + 1) / 2
    b = (m_pm + omega + 1) / 2
    c = 1
    
    diff = c - a - b
    print(f"c - a - b = {diff}")
    
    # substitute m_pm
    # The condition for convergence is diff > 0.
    # -m_pm > 0  => m_pm < 0.
    # Since m_pm = |m +/- 1| >= 0, this is strictly never met for m_pm > 0.
    # If m_pm = 0, diff = 0.
    # Gauss test for diff=0: The series sum( 1/n ) diverges.
    
    return diff

check_series_convergence()

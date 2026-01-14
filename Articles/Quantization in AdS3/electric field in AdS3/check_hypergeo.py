from sympy import symbols, Function, dsolve, series, limit, oo
import sympy

z = symbols('z')
Phi = Function('Phi')(z)
omega, m_pm = symbols('omega m_pm')

# The ODE provided in the markdown
# 4z(1-z)Phi'' - 4zPhi' + (1/z + omega^2 - m_pm^2/(1-z))Phi = 0
ode = 4*z*(1-z)*Phi.diff(z, 2) - 4*z*Phi.diff(z) + (1/z + omega**2 - m_pm**2/(1-z))*Phi

# We are interested in the behavior near z=1 (which corresponds to r=0)
# Let's verify the indicial equation at z=1.
# Substitute z = 1 + x, where x -> 0.
x = symbols('x')
Phi_x = Function('Phi')(x)
ode_x = ode.subs(z, 1+x).subs(Phi.diff(z, 2), Phi_x.diff(x, 2)).subs(Phi.diff(z), Phi_x.diff(x)).subs(Phi, Phi_x)

# Multiply by x (which is -(1-z)) to clear the denominator in the term -m_pm^2/(1-z) = -m_pm^2/(-x) = m_pm^2/x ??
# Wait, 1-z = -x. So -m_pm^2/(1-z) = -m_pm^2/(-x) = m_pm^2/x.
# Let's just look at the leading order terms for Euler-Cauchy form near x=0.
# The term causing singularity at x=0 is m_pm^2/x. And x in front of Phi''.

# Let's use sympy's generalized series expansion or just solve indicial equation manually in the print output logic.
# 4(1+x)(-x)Phi'' - 4(1+x)Phi' + (1/(1+x) + omega^2 - m_pm^2/(-x))Phi = 0
# -4x Phi'' - 4 Phi' + (m_pm^2/x) Phi = 0 (leading order)
# Multiply by x:
# -4x^2 Phi'' - 4x Phi' + m_pm^2 Phi = 0
# 4x^2 Phi'' + 4x Phi' - m_pm^2 Phi = 0
# Indicial equation: 4*r*(r-1) + 4*r - m_pm^2 = 0
# 4r^2 - 4r + 4r - m_pm^2 = 0 => 4r^2 = m_pm^2 => r = +/- m_pm/2

# Let's print this transformation and result.
print("Indicial equation analysis near z=1 (r=0):")
print("Let z = 1 + x. Leading order ODE near x=0:")
print("4x^2 Phi'' + 4x Phi' - m_pm^2 Phi = 0")
print("Characteristic exponents lambda:")
print("4*lambda*(lambda-1) + 4*lambda - m_pm^2 = 0")
print("4*lambda^2 - m_pm^2 = 0")
print("lambda = +/- |m_pm|/2")

print("\nRelationship to r:")
print("z = 1/(1+r^2) => 1-z = r^2/(1+r^2) approx r^2 as r->0.")
print("So x = z-1 approx -r^2.")
print("The coordinate relevant for scaling is 1-z ~ r^2.")
print("Solutions go as (1-z)^lambda ~ (r^2)^lambda = r^(2*lambda).")

print("\nExponents in terms of r:")
print("Solution 1: r^(2 * (|m_pm|/2)) = r^|m_pm|")
print("Solution 2: r^(2 * (-|m_pm|/2)) = r^(-|m_pm|)")

print("\nConclusion:")
print("If |m_pm| != 0, Solution 1 goes to 0 (regular), Solution 2 goes to infinity (divergent).")
print("If |m_pm| == 0, roots are degenerate (0). Solutions are constant and ln(1-z) ~ ln(r^2) ~ ln(r). ln(r) diverges.")

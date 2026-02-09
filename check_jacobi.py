
import sympy
from sympy import gamma, hyper, symbols, limit, oo

def check_jacobi_limits():
    """
    Checks the commutation of limits for the Jacobi polynomial definition.
    n -> N (non-negative integer)
    alpha -> -K (negative integer)
    """
    n, alpha, beta, z = symbols('n alpha beta z')
    
    # Define Jacobi polynomial via hypergeometric function
    # P_n^(alpha, beta)(z) = (gamma(n + alpha + 1) / (gamma(n + 1) * gamma(alpha + 1))) * 2F1(-n, n + alpha + beta + 1; alpha + 1; (1 - z) / 2)
    
    def jacobi_expr(n_val, alpha_val):
        return (gamma(n_val + alpha_val + 1) / (gamma(n_val + 1) * gamma(alpha_val + 1))) * \
               hyper([-n_val, n_val + alpha_val + beta + 1], [alpha_val + 1], (1 - z) / 2)

    # Test values
    N_target = 3  # Target integer for n
    K_target = 1  # Target positive integer for -K (so alpha -> -1)
    alpha_target = -K_target # -1
    
    print(f"Testing limits for N={N_target}, alpha -> {alpha_target}")

    # Case 1: Limit n -> N first, then alpha -> -K
    # When n is an integer N, the hypergeometric series terminates.
    # P_N = sum_{k=0}^N ...
    # We can evaluate the expression at n=N (symbolically) and then take the limit alpha -> -K.
    
    try:
        expr_n_fixed = jacobi_expr(N_target, alpha)
        # Simplify explicitly for integer n? hyper usually handles polynomial reduction for integer -a.
        # However, for generic alpha, it keeps it as hyper or polynomial.
        limit_1 = limit(expr_n_fixed, alpha, alpha_target)
        print("\nLimit 1 (n -> N first, then alpha -> -K):")
        print(limit_1)
    except Exception as e:
        print(f"\nLimit 1 failed: {e}")

    # Case 2: Limit alpha -> -K first, then n -> N
    # For generic n, the series does not terminate. 
    # The term 1/gamma(alpha+1) goes to 0. 
    # The hyper function has a pole at c = alpha+1 = negative integer?
    # hyper(a, b, c, z) / gamma(c) is often the regularized hypergeometric function which is entire.
    # Our expression has 1/gamma(alpha+1).
    # so we are effectively looking at hyper_regularized.
    
    try:
        # We need to take limit of the expression E(n, alpha) as alpha -> -K keeping n generic
        # generic n means non-integer.
        # Sympy might struggle with generic n for hyper limit, but let's try.
        expr_alpha_limit = limit(jacobi_expr(n, alpha), alpha, alpha_target)
        print("\nExpression after alpha -> -K (with generic n):")
        print(expr_alpha_limit)
        
        # Then take n -> N
        limit_2 = limit(expr_alpha_limit, n, N_target)
        print("\nLimit 2 (alpha -> -K first, then n -> N):")
        print(limit_2)
        
    except Exception as e:
        print(f"\nLimit 2 failed: {e}")

    # Let's also check strict equality?
    # But usually P_n^(-k, beta) is defined.
    # If the limits are different, one of them is the "standard" definition.
    
if __name__ == "__main__":
    check_jacobi_limits()

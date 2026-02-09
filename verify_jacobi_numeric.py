
import math

def gamma_inv_limit(k):
    """Computes limit of 1/Gamma(x) as x -> k (integer)"""
    # 1/Gamma is entire.
    if k <= 0:
        return 0.0 # Standard zero
    return 1.0 / math.gamma(k)

def check_coeffs():
    # Parameters
    N_list = [1, 2, 3]
    K_list = [1, 2, 3] # alpha = -K
    beta = 1.0 # arbitrary

    for N in N_list:
        for K in K_list:
            alpha_target = -K
            print(f"--- Checking N={N}, alpha -> {alpha_target} ---")
            
            # Check for a range of j
            for j in range(N + K + 2):
                # We analyze the coefficient:
                # C(n, alpha) = [ Gamma(n+alpha+1) / Gamma(n+1) ] * [ (-n)_j (n+alpha+beta+1)_j / j! ] * [ 1 / Gamma(alpha+1+j) ]
                # We removed Gamma(alpha+1)*(alpha+1)_j and replaced with Gamma(alpha+1+j)
                
                # Limit 1: n -> N first, then alpha -> -K
                # n=N is fixed integer.
                # C1 = [ Gamma(N+alpha+1) / Gamma(N+1) ] * [ (-N)_j (N+alpha+beta+1)_j / j! ] * [ 1 / Gamma(alpha+1+j) ]
                # Now alpha -> -K.
                
                # Calculate parts for C1:
                # Part 1: Gamma(N - K + 1) might be singular if N - K + 1 <= 0.
                # Let's consider alpha = -K + epsilon
                # We need to compute limit of the product.
                
                 # Let's compute numerically with epsilon
                epsilon = 1e-9
                
                # C1: Set n=N_exact, alpha = -K + eps
                # use N as float to allow computation but treat as integer for (-N)_j logic if implemented manually?
                # Actually, (-N)_j is manually computed as product.
                
                def falling_factorial(x, k):
                    res = 1.0
                    for i in range(k):
                        res *= (x - i)
                    return res
                
                def rising_factorial(x, k):
                    res = 1.0
                    for i in range(k):
                        res *= (x + i)
                    return res

                # Path 1: n=N, alpha -> -K
                alpha_p1 = -K + epsilon
                n_p1 = float(N)
                
                term1_p1 = math.gamma(n_p1 + alpha_p1 + 1)
                term2_p1 = math.gamma(n_p1 + 1)
                term3_p1 = falling_factorial(-n_p1, j)
                term4_p1 = rising_factorial(n_p1 + alpha_p1 + beta + 1, j)
                term5_p1 = math.gamma(alpha_p1 + 1 + j)
                
                # C1_val = (term1 / term2) * (term3 * term4 / factorial(j)) * (1/term5)
                # Note: term5 might be huge (near pole) -> 1/term5 approx 0
                # or normal.
                
                # We handle 1/Gamma to avoid overflow if possible, but python math.gamma overflows at ~171.
                # For small ints it's fine.
                
                try:
                    val_p1 = (term1_p1 / term2_p1) * (term3_p1 * term4_p1 / math.factorial(j)) / term5_p1
                except ValueError:
                    # Likely gamma domain error or overflow.
                    # Handle poles manually? 
                    # If arg of gamma is close to neg int, it's large.
                    val_p1 = float('nan')

                
                # Path 2: alpha = -K, n -> N
                # First alpha -> -K (generic n).
                # Then n -> N.
                # So we eval at alpha = -K, n = N + epsilon
                
                alpha_p2 = -K # exact? No, limit approach. 
                # If we set alpha=-K exactly, Gamma(alpha+1+j) is infinity for j < K.
                # So 1/Gamma is 0.
                # For j >= K, Gamma is finite. 
                
                # So let's use alpha = -K + epsilon, but n = N + epsilon * (something? No, independent limits).
                # The question is lim_{n->N} [ lim_{alpha->-K} C(n, alpha) ].
                # So alpha is "closer" to -K than n is to N.
                # Effectively alpha = -K + eps_small, n = N + eps_large.
                # Or just compute the limit algebraicly for Path 2.
                
                # Algorithm for Path 2 value:
                # 1. Evaluate limit alpha->-K for generic n.
                #    If j < K: Gamma(alpha+1+j) ~ pole -> 1/Gamma -> 0. Result 0.
                #    If j >= K: Gamma(alpha+1+j) is finite. 
                #       Result = [Gamma(n-K+1)/Gamma(n+1)] * [(-n)_j (n-K+beta+1)_j/j!] * [1/Gamma(-K+1+j)]
                # 2. Evaluate n->N.
                #    If Result was 0 (j<K), it stays 0.
                #    If Result was expression (j>=K), plug in n=N.
                
                val_p2 = 0.0
                if j < K:
                    val_p2 = 0.0
                else:
                    # j >= K
                    # Calculate at n=N, alpha=-K exactly
                    # Check for poles in the n-part.
                    # Gamma(N - K + 1). If N - K + 1 <= 0 (i.e. N < K), this is a pole!
                    # But wait, does (-n)_j cancel it?
                    # (-n)_j at n=N is (-N)_j.
                    # If j >= K and N < K, then j > N.
                    # (-N)_j contains factor 0?
                    # (-N)_j = (-N)(-N+1)...(-N+j-1).
                    # Zeros at indices k=0 to N.
                    # Terms are -N, -N+1, ..., 0, ..., -N+j-1.
                    # Since j > N, the term 0 is present. So (-N)_j = 0.
                    
                    # So we have Gamma(N-K+1) [Pole] * 0 [from (-N)_j].
                    # Indeterminate form infinity * 0.
                    # We need to resolve this limit carefully.
                    # n -> N.
                    # Gamma(n-K+1) ~ 1/(n-N + (N-K+1 - (negative int?))) -> No.
                    # Pole is at integer <= 0.
                    # If N < K, let M = K - N - 1 >= 0. Arg is -M.
                    # Gamma(x) near -M is ~ (-1)^M / (M! (x+M)).
                    
                    # (-n)_j near N.
                    # One factor is (-n + N) = -(n-N).
                    # So (-n)_j ~ (const) * (n-N).
                    
                    # So Prod ~ [1/(n-N)] * [(n-N)] ~ finite constant.
                    
                    # So Path 2 might be non-zero even if N < K?
                    pass 
                
                # To be precise, let's just compute with n = N + 1e-5, alpha = -K + 1e-12
                # This approximates lim n->N (lim alpha->-K)
                # Make alpha much closer to target than n.
                
                n_p2 = float(N) + 1e-5
                alpha_p2 = float(-K) + 1e-12
                
                term1_p2 = math.gamma(n_p2 + alpha_p2 + 1)
                term2_p2 = math.gamma(n_p2 + 1)
                term3_p2 = falling_factorial(-n_p2, j)
                term4_p2 = rising_factorial(n_p2 + alpha_p2 + beta + 1, j)
                term5_p2 = math.gamma(alpha_p2 + 1 + j)
                
                val_p2_approx = (term1_p2 / term2_p2) * (term3_p2 * term4_p2 / math.factorial(j)) / term5_p2
                
                # Comparison
                # Path 1 (alpha -> -K after n=N) was calculated as val_p1 (using alpha=-K+e, n=N)
                
                # Re-eval val_p1 with clearer separation if needed, but the previous one effectively did 
                # n=N eactly, alpha approx.
                # However, for N < K, Gamma(N+alpha+1) has a pole at alpha=-K?
                # Arg is N-K+1. If N-K+1 <= 0, then yes.
                # Example N=1, K=3. Arg = -1. Gamma(-1+eps) ~ 1/eps.
                # So for Path 1, some terms might blow up if not cancelled?
                
                print(f"  j={j}: Path1 (n fixed)={val_p1:.4g}, Path2 (alpha fixed)={val_p2_approx:.4g}")

if __name__ == "__main__":
    check_coeffs()

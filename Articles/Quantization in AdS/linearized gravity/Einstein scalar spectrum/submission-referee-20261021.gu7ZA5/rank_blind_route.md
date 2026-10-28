# Blind independent rank route

Written before reading the submitted Appendix B (2026-10-21).

For N=3 let U_P=Sym^P of the two-dimensional standard S3 representation, represented by polynomials in x=z1-z3,y=z2-z3. Positivity of c_k reduces the physical rank to the dimension of the span of S3-averages of equal-pair-Casimir vectors v_{P,k} tensor v_{Q,k}, 0<=k<=min(P,Q). C12 has simple eigenvalues (Delta+k)(Delta+k-1), and the vectors have transposition parity (-1)^k.

Independent direct polynomial computation in exact Sage arithmetic, Delta=3/2,2,3, all 0<=P<=6 and P<=Q<=10, gives the following conjecture (not yet a general proof):

- m=min(P,Q), d=abs(P-Q).
- d<=1: rank=m, except rank(0,0)=1.
- d>=2: rank=m+1, except rank(1,3)=rank(3,1)=1.
- In particular rank(0,1)=0.

The (1,3) exception is forced by dim H=1. No mass exception was found in this finite set.

Proposed analytic route: a dependence is a diagonal rectangular tensor T in the C12 eigenbases whose three pair-orbit vectors sum to zero. Such tensors lie in the S3 standard isotype. Use the scalar sum C12+C23+C31=[P(P+3 Delta-1)+3 Delta(Delta-1)] I and the tridiagonality of C23 in the C12 eigenbasis to turn the group-average condition into a rectangular Casimir matrix identity. Boundary rows of that identity should decide injectivity at unequal degrees. This route is recorded prior to inspection, without assuming any proposed theorem.

The blind computation constructed C12 and the 3-cycle directly by monomial substitution, diagonalized C12 over QQ, and ranked the vectors e_kk+R_P e_kk R_Q^t+R_P^2 e_kk (R_Q^2)^t. It did not load or execute any submission script.

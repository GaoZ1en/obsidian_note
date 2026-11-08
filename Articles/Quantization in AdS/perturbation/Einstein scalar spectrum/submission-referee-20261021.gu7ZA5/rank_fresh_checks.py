"""Independent exact checks, no submission imports. Run with Sage Python.

Construction uses monomials in x=z1-z3,y=z2-z3, direct differential
Casimirs, and direct substitution for permutations; no Racah formula.
"""
from sage.all import QQ, PolynomialRing, matrix, vector, identity_matrix, diagonal_matrix, FractionField, factor
from pathlib import Path
import json

OUT = Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/rank_exact_results.json')

def data(n, D, F=QQ):
    R = PolynomialRing(F, names=('x', 'y'))
    x, y = R.gens()
    bas = [x**j*y**(n-j) for j in range(n+1)]
    def vec(f):
        return vector(F, [f.monomial_coefficient(b) for b in bas])
    def op(fn):
        return matrix(F, [list(vec(fn(f))) for f in bas]).transpose()
    A = op(lambda f: -(x-y)**2*f.derivative(x).derivative(y)
           + D*(x-y)*(f.derivative(x)-f.derivative(y)) + D*(D-1)*f)
    B = op(lambda f: y**2*(f.derivative(x).derivative(y)+f.derivative(y,2))
           + D*y*(f.derivative(x)+2*f.derivative(y)) + D*(D-1)*f)
    C = op(lambda f: x**2*(f.derivative(x,2)+f.derivative(x).derivative(y))
           + D*x*(2*f.derivative(x)+f.derivative(y)) + D*(D-1)*f)
    cyc = op(lambda f: f(y-x, -x))
    swap = op(lambda f: f(y, x))
    V = matrix(F, [list((A-(D+k)*(D+k-1)*identity_matrix(F,n+1))
                       .right_kernel().basis()[0]) for k in range(n+1)]).transpose()
    Vi = V.inverse()
    # Normalize the eigenvectors to coefficient 1 on r^k u^(n-k).
    RU = PolynomialRing(F, names=('r','u'))
    r, u = RU.gens()
    norms = []
    for k in range(n+1):
        f = sum(V[j,k]*(u+r/2)**j*(u-r/2)**(n-j) for j in range(n+1))
        norms.append(f.monomial_coefficient(r**k*u**(n-k)))
    Vf = V*diagonal_matrix(F,[1/c for c in norms])
    return {'cycle': Vi*cyc*V, 'B': Vi*B*V, 'sum': A+B+C,
            'swap': Vi*swap*V, 'B_normalized': Vf.inverse()*B*Vf}

def projected_channels(p, q, dp, dq, F=QQ):
    rp, rq = dp['cycle'], dq['cycle']
    M = matrix(F, (p+1)*(q+1), q+1)
    for k in range(q+1):
        T = matrix(F,p+1,q+1)
        T[k,k] = 1
        G = (T+rp*T*rq.transpose()+rp**2*T*(rq**2).transpose())/3
        M.set_column(k, vector(G.list()))
    return M

def expected(p,q):
    if (p,q)==(0,0): return 1
    if p-q<=1: return q
    if (p,q)==(3,1): return 1
    return q+1

out = {'construction':'Direct monomial differential Casimirs and permutation substitutions; no submission scripts loaded.',
       'blind_grid': [], 'targeted': [], 'symbolic': []}
for D in [QQ(3)/2, QQ(2), QQ(3)]:
    dat = [data(n,D) for n in range(11)]
    for q in range(7):
        for p in range(q,11):
            rank = int(projected_channels(p,q,dat[p],dat[q]).rank())
            assert rank == expected(p,q)
            out['blind_grid'].append({'P':p,'Q':q,'Delta':str(D),'rank':rank})

for p,q,D in [(7,3,QQ(2)),(8,3,QQ(6)),(11,5,QQ(2)),(12,4,QQ(6)),
              (10,4,QQ(3)/2),(3,1,QQ(1)/7),(5,3,QQ(1)/7),
              (6,5,QQ(1)/7),(6,6,QQ(1)/7),(2,0,QQ(1)),(0,0,QQ(1)),(1,0,QQ(1))]:
    rank = int(projected_channels(p,q,data(p,D),data(q,D)).rank())
    assert rank == expected(p,q)
    resonances = [k for k in range(q+1) if (p+k)%2 and p-k>1
                  and p*(p+3*D-1)-q*(q+3*D-1)==(D+p)*(D+p-1)-(D+k)*(D+k-1)]
    out['targeted'].append({'P':p,'Q':q,'Delta':str(D),'rank':rank,
                            'last_row_resonance_columns':resonances})

F = FractionField(PolynomialRing(QQ,'d'))
d = F.gen()
symdata = [data(n,d,F) for n in range(7)]
for n in range(7):
    dat = symdata[n]
    B = dat['B']
    assert dat['sum'] == (n*(n+3*d-1)+3*d*(d-1))*identity_matrix(F,n+1)
    assert dat['swap'] == diagonal_matrix(F,[(-1)**k for k in range(n+1)])
    assert all(B[j,k]==0 for j in range(n+1) for k in range(n+1) if abs(j-k)>1)
    assert all(B[j,j]==(n*(n+3*d-1)+3*d*(d-1)-(d+j)*(d+j-1))/2 for j in range(n+1))
    assert all(B[j,j+1]!=0 and B[j+1,j]!=0 for j in range(n))
    assert all(dat['B_normalized'][k-1,k] == -k*(n-k+d) for k in range(1,n+1))
    out['symbolic'].append({'n':n, 'sum_parity_bandwidth_diagonal_offdiagonal':'pass'})
for p,q in [(2,0),(3,1),(4,2),(5,3)]:
    M = projected_channels(p,q,symdata[p],symdata[q],F)
    K = matrix(F,q+1,q+1,lambda j,k:M[j*(q+1)+j,k])
    determinant = K.det()
    if (p,q)==(4,2):
        assert determinant==(d+3)*(3*d+4)*(3*d+5)/(18*(2*d+1)**2*(2*d+3)**2*(2*d+5))
    out['symbolic'].append({'P':p,'Q':q,'rank_over_QQ_d':int(M.rank()),
                            'compressed_determinant':str(factor(determinant)) if determinant else '0'})

R = PolynomialRing(QQ,names=('p','q','a','g','D'))
p,q,a,g,D = R.gens()
s = lambda n:n*(n+3*D-1)+3*D*(D-1)
l = lambda k:(D+k)*(D+k-1)
assert s(q+g)-s(q)-l(q+g)+l(q-a)==(g-2*a)*D-a*(2*q-a-1)
assert l(q+2)-l(q-1)-s(q+2)+s(q)==2*(q-1)
assert l(q+1)-l(q-a)-s(q+1)+s(q)==(2*a-1)*D+a*(2*q-a-1)
out['symbolic'].append({'general_boundary_identities':'pass'})

out['summary'] = {'blind_exact_ranks':len(out['blind_grid']),
                  'targeted_exact_ranks':len(out['targeted']),
                  'symbolic_degrees':list(range(7)),
                  'status':'all assertions passed',
                  'earlier_exploratory_error':'A first interactive run attempted to factor determinant zero at (3,1); corrected here by treating zero separately. No mathematical check failed.'}
OUT.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps(out['summary'],indent=2))
print('targeted:',json.dumps(out['targeted']))
print('symbolic:',json.dumps(out['symbolic']))
print('saved:',str(OUT))

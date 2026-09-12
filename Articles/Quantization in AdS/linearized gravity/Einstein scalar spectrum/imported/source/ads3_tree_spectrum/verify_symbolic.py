"""All-index rational certificates for the proposed analytic proof.

These tests simplify identities with symbolic n, Delta, h and the hypergeometric
series index. They are not a proof by sampling a finite number of levels.
The mathematical reduction of the field theory to these identities is in paper.tex.
Requires SymPy. Raises AssertionError on any nonzero residual.
"""
import json
import sympy as s


def run():
    d,h,n,j=s.symbols('Delta h n j', positive=True)
    mu=d*(d-2)
    checks=[]
    def zero(name, expr):
        ans=s.cancel(s.factor(expr))
        assert ans==0, (name,ans)
        checks.append(name)

    # Hypergeometric coefficient proof of the three-term crossed Casimir action.
    r1=j*(2*h+j-1)/(h+j-1)**2
    r2=j*(j-1)*(2*h+j-1)*(2*h+j-2)/((h+j-1)**2*(h+j-2)**2)
    lower=(h-1)**2*(2*h+j-2)*(2*h+j-1)/((h+j-1)**2*(2*h-2)*(2*h-1))
    upper=j*(j-1)*(2*h)*(2*h+1)/(h*h*(h+j-1)**2)
    block_a=(d-h)**2
    block_b=(mu-h*(h-1))/2
    block_c=h*h*(d+h-1)**2/(4*(2*h-1)*(2*h+1))
    lhs=(h+j-d)**2+r1*(-2*(h+j-1)*(h+j-1-d)-d)+r2*(h+j-2)**2
    zero('crossed Casimir: arbitrary hypergeometric coefficient j>=2',lhs-block_a*lower-block_b*r1-block_c*upper)
    # Leading coefficient and the next one, before division by series coefficients.
    zero('crossed Casimir: coefficient j=0',(h-d)**2-block_a)
    zero('crossed Casimir: coefficient j=1',h/2*(h+1-d)**2-2*h*(h-d)-d-block_a*(h-1)/2-block_b)

    def a(k):
        H=d+k
        return (k+1)*H*(d+H-1)/(2*(2*H-1))
    def c(k):
        H=d+k
        return k*(H-1)*(d+H-2)/(2*(2*H-1))
    def b(k): return (mu-(d+k)*(d+k-1))/2
    def U(k): return 4*(mu-2*(d+k)*(d+k-1))
    def X0(k): return U(k)*(2*(d+k)-2)/(2*(d+k)-1)
    zero('Markov row sum a+b+c',a(n)+b(n)+c(n))
    zero('crossed universal recurrence L U=2 U',a(n)*U(n+1)+b(n)*U(n)+c(n)*U(n-1)-2*U(n))
    H=d+n; C=H*(H-1)
    S0=4*(C-mu)*(2*C+mu)/(2*H-1)
    S1=4*H*(n+1)*(2*d+n-1)*(2*H**2-mu)/((2*H-1)*(2*H+1))
    zero('crossed recurrence: diagonal source',2*a(n)*U(n)+2*c(n)*U(n-1)+(2*b(n)-2)*X0(n)-S0)
    zero('crossed recurrence: adjacent source',a(n+1)*U(n)+c(n+1)*X0(n)+a(n)*X0(n+1)+c(n)*U(n-1)+(b(n+1)+b(n)-2)*U(n)-S1)
    # Away from the diagonal, one coordinate acts on a constant and the other on U.
    zero('crossed recurrence: gap at least two',a(n)*U(n+1)+b(n)*U(n)+c(n)*U(n-1)-2*U(n))
    zero('lower endpoint c_0',c(0))

    # Finite-band uniqueness certificate. Rows 0 and 1 already remove both freedoms.
    u,v=s.symbols('u v')
    e2=[v];e1=[u]
    for k in range(3):
        e2.append(s.factor(-c(k+3)*e2[k]/a(k)))
        e1.append(s.factor(-(c(k+2)*e1[k]+(b(k)+b(k+2)-2)*e2[k])/a(k)))
    e0=[s.factor((a(k)*e1[k]+(c(k)*e1[k-1] if k else 0))/(1-b(k))) for k in range(4)]
    eq=[]
    for k in range(2):
        eq.append(s.factor(c(k+1)*e0[k]+a(k)*e0[k+1]+(b(k+1)+b(k)-2)*e1[k]+a(k+1)*e2[k]+(c(k)*e2[k-1] if k else 0)))
    mat=s.Matrix([[s.diff(e,z) for z in (u,v)] for e in eq])
    det=960*(d+1)**2*(3*d**5+24*d**4+63*d**3+68*d**2+33*d+6)/(d*(2*d+3)*(2*d+5)*(3*d+2)*(5*d+4))
    zero('finite-band uniqueness determinant',mat.det()-det)

    # Local primary normalization ratios. Squared CG ratios avoid radicals.
    p=s.symbols('p', nonnegative=True)
    # v_{p}^{n+1}/v_p^n and v_{p+1}^{n+1}/v_p^n.
    # Their product with a one-particle ladder coefficient has constant magnitude.
    R1sq=H*(n+1)*(2*d+n-1)/(2*(2*H-1))
    ratio_same=(n+1)/(n+1-p)*(d+n)**2/(d+n-p)*(2*d+n-1)/((2*d+2*n-1)*(2*d+2*n))
    zero('spin-one centre sum, first term',ratio_same*(n-p+1)*(d+n-p)-R1sq)
    ratio_shift=(n+1)/(p+1)*(d+n)**2/(d+p)*(2*d+n-1)/((2*d+2*n-1)*(2*d+2*n))
    zero('spin-one centre sum, second term',ratio_shift*(p+1)*(d+p)-R1sq)
    R2sq=H*(H+1)*(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/(4*(2*H-1)*(2*H+1))
    ratio2=(n+1)*(n+2)/((p+1)*(n+1-p))*(d+n)**2*(d+n+1)**2/((d+p)*(d+n-p))*(2*d+n-1)*(2*d+n)/((2*d+2*n-1)*(2*d+2*n)*(2*d+2*n+1)*(2*d+2*n+2))
    zero('spin-two centre sum',ratio2*(p+1)*(d+p)*(n-p+1)*(d+n-p)-R2sq)

    # Contact source from the scalar F and vector J form factors.
    Fnorm=1/(4*s.pi*(2*H-1))
    Jnorm=H*(n+1)*(2*d+n-1)/(s.pi*(2*H-1)*(2*H+1))
    zero('contact diagonal normalization',16*s.pi*(C-mu)*(2*C+mu)*Fnorm-S0)
    zero('contact adjacent normalization',16*s.pi*(2*H**2-mu)/4*Jnorm-S1)
    spin0s=-2*(C+mu)**2/((2*H-3)*(2*H-1)*(2*H+1))
    spin2s=(n+1)*(n+2)*(2*d+n-1)*(2*d+n)/((2*H-1)*(2*H+1)*(2*H+3))
    tau2norm=4*s.pi*(R2sq/(2*s.pi**2))/(2*H+3)
    zero('annihilation spin-two normalization',16*s.pi/(8*H*(H+1))*tau2norm-spin2s)
    full0=U(n)+2*(15*C*C-(12+10*mu)*C-mu*mu+6*mu)/((2*H-3)*(2*H-1)*(2*H+1))
    zero('total spin-zero formula',X0(n)+spin0s-full0)
    g00=2*d*d*(7+2*d-8*d*d)/(4*d*d-1)
    zero('ground state agrees with exact circular integral',full0.subs(n,0)-g00)
    zero('first radial excitation',full0.subs(n,1)+2*d*d*(8*d*d+46*d+47)/((2*d+1)*(2*d+3)))
    zero('lowest spin-two primary',(U(n)+spin2s).subs(n,0)+4*d*(d+1)*(4*d*d+4*d-1)/((2*d+1)*(2*d+3)))
    zero('removable Delta=3/2 scalar point',s.limit(g00,d,s.Rational(3,2))+s.Rational(9,2))
    return {'status':'PASS','symbolic_identity_count':len(checks),'identities':checks,'uniqueness_determinant':str(s.factor(det))}

if __name__=='__main__':
    print(json.dumps(run(),indent=2))

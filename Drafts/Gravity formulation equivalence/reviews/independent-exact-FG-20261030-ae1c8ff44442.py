"""Exact FG/DS algebra suite; Python 3 + SymPy.

This is the Python body of the successful independent verification run.
It checks flatness, trace normalization, all nine exact FG-flow residuals,
and the Hill equation/Wronskian normalization.

The recorded execution used Sage 10.9's SymPy environment, with this Python
body passed to exec(r'''...''') to avoid Sage preparsing integer literals.
No symbolic work was repeated when exporting this standalone source.

Original successful result:
/Users/koishi/.dsh/research-results/session-ae1c8ff44442/ce849c951f20-research-result.json
"""

import sympy as s
r,u,v,ell=s.symbols('r u v ell', nonzero=True, real=True)
a=s.Function('a')(u); b=s.Function('b')(v); p=s.Function('p')(u); q=s.Function('q')(v)
J=s.diag(s.Rational(1,2),-s.Rational(1,2)); Z=s.zeros(2)
A=[J/r,s.Matrix([[0,a/r],[r,0]]),Z]
B=[-J/r,Z,s.Matrix([[0,-r],[-b/r,0]])]
x=[r,u,v]
def curv(C,i,j): return (C[j].diff(x[i])-C[i].diff(x[j])+C[i]*C[j]-C[j]*C[i]).applyfunc(s.simplify)
print('flat_A', all(curv(A,i,j)==Z for i in range(3) for j in range(i+1,3)))
print('flat_B', all(curv(B,i,j)==Z for i in range(3) for j in range(i+1,3)))
e=[ell*(A[i]-B[i])/2 for i in range(3)]
g=s.Matrix(3,3,lambda i,j:s.simplify(2*s.trace(e[i]*e[j])))
print('g_over_ell2',g/ell**2)
D=r**4-a*b
xi=s.Matrix([-r*(s.diff(p,u)+s.diff(q,v))/2,p+(b*s.diff(p,u,2)-r**2*s.diff(q,v,2))/(2*D),q+(a*s.diff(q,v,2)-r**2*s.diff(p,u,2))/(2*D)])
lie=s.Matrix(3,3,lambda i,j:sum(xi[k]*s.diff(g[i,j],x[k])+g[k,j]*s.diff(xi[k],x[i])+g[i,k]*s.diff(xi[k],x[j]) for k in range(3)))
da=p*s.diff(a,u)+2*a*s.diff(p,u)-s.diff(p,u,3)/2
db=q*s.diff(b,v)+2*b*s.diff(q,v)-s.diff(q,v,3)/2
target=ell**2*s.Matrix([[0,0,0],[0,da,(b*da+a*db)/(2*r**2)],[0,(b*da+a*db)/(2*r**2),db]])
res=(lie-target).applyfunc(lambda z:s.factor(s.together(z)))
print('FG_vector_residual',res)
print('FG_vector_verified',res==s.zeros(3))
f=s.Function('f')(u)
y1=s.cos(f/2)/s.sqrt(s.diff(f,u)); y2=s.sin(f/2)/s.sqrt(s.diff(f,u))
Sch=s.diff(f,u,3)/s.diff(f,u)-s.Rational(3,2)*(s.diff(f,u,2)/s.diff(f,u))**2
L=-s.diff(f,u)**2/4-Sch/2
print('Hill_residuals',[s.simplify(s.diff(y,u,2)-L*y) for y in [y1,y2]])
print('Hill_Wronskian',s.simplify(y1*s.diff(y2,u)-s.diff(y1,u)*y2))

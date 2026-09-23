from sage.all import *
R=PolynomialRing(QQ,names=('x','y'))
x,y=R.gens()
directions=[(1,0),(0,1),(-1,-1)]
ranks=[matrix(QQ,[[u**j*v**(m-j) for j in range(m+1)] for u,v in directions]).rank() for m in range(13)]
W=WeylCharacterRing('A1',style='coroots')

checks = [{"label":"A homogeneous ray restrictions degrees 0 through 12","condition":"ranks == [1,2]+[3]*11"},{"label":"A residual junction gauge jet rank","condition":"matrix(QQ,[[1,1,1]]).right_kernel().dimension() + 1 == 3"},{"label":"D SU2 fundamental times spin j highest weights 1 through 8","condition":"all(W((n,))*W((1,)) == W((n+1,))+W((n-1,)) for n in range(1,9))"},{"label":"E primitive diagonal lattice kernel","condition":"matrix(ZZ,[[1,1]]).right_kernel().basis_matrix().row(0) in [vector(ZZ,[1,-1]),vector(ZZ,[-1,1])]"},{"label":"E polynomial diagonal kernel","condition":"R.ideal(x-y).reduce((x-y)*(x**2+2*x*y+3)) == 0"}]
results = [(c['label'],eval(c['condition'])) for c in checks]
for label, passed in results:
    print(label, passed)
assert all(passed is True for label, passed in results)

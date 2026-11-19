# Bounded exact investigation of non-null supersymmetry enhancement loci.
src=open('susy_exact_check.py',encoding='utf-8').read().split('\nverify(2)')[0]
src=src.replace("            curvature_operators.append(C)","            curvature_operators.append(C)\n            if i==3 and j==4: print('factor_R_34_Hker',cm(gam(4,3),cm(C,T)))")
exec(src)
verify(2)
verify(0)

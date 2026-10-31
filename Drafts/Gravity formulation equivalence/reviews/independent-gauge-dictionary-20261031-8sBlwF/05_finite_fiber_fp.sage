from sage.all import *
import json
G=matrix(QQ,[[1,0],[2,0],[0,1],[0,2]])
P=matrix(QQ,[[-2,0],[1,0],[0,-2],[0,1]])
L=P*P.transpose()/5
M=matrix(QQ,[[1,-2],[0,-5]])
B=matrix(QQ,[[1,0,1,0],[0,1,0,1]])
HA=M*G.transpose()/5+B*L
HL=G.transpose()
SA=P-G*(HA*G).inverse()*HA*P
SL=P-G*(HL*G).inverse()*HL*P
checks={
'G_adjoint_G_equals_5I':G.transpose()*G==5*identity_matrix(QQ,2),
'adapted_FP_triangular':HA*G==M,
'lorenz_FP_equals_5I':HL*G==5*identity_matrix(QQ,2),
'adapted_section_condition':HA*SA==zero_matrix(QQ,2),
'lorenz_section_condition':HL*SL==zero_matrix(QQ,2),
'same_quotient_quadratic_form':SA.transpose()*L*SA==SL.transpose()*L*SL==5*identity_matrix(QQ,2),
'same_field_volume_jacobian':abs(SA.augment(G).det())==abs(SL.augment(G).det())==25
}
print(json.dumps({'checks':checks,'adapted_FP_det':int((HA*G).det()),'lorenz_FP_det':int((HL*G).det()),'adapted_delta_jacobian':str(abs(SA.augment(G).det())/abs((HA*G).det())),'lorenz_delta_jacobian':str(abs(SL.augment(G).det())/abs((HL*G).det())),'FP_times_delta_jacobian_both':int(25),'all_passed':all(checks.values())},indent=2))
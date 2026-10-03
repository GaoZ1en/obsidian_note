
Clear[r,dr,q1,q2,u,v,w,M,a,om,mm,ang,h,z];
del=r^2-2 M r+a^2; kk=(r^2+a^2)om-a mm;
pot=kk^2/del-a^2 om^2+2 a mm om-ang[om];
green=Expand[D[dr[r](u[r]v'[r]-u'[r]v[r]),r]-(u[r](D[dr[r]v'[r],r]+q2[r]v[r])-v[r](D[dr[r]u'[r],r]+q1[r]u[r])+(q1[r]-q2[r])u[r]v[r])];
mat={{z,2 z},{0,1+z}};
tt=DiagonalMatrix[{Exp[-I z h],Exp[I z h]}]; ph=tt.mat.Inverse[tt];
right={1,0}; left={1,0}; n0=left.(D[mat,z]/.z->0).right;
ng=(left.Inverse[tt]/.z->0).(D[ph,z]/.z->0).(tt.right/.z->0);
res=<|
"radial_Green_identity_off_shell"->Simplify[green],
"Kerr_frequency_derivative"->Simplify[D[pot,om]-(2(r^2+a^2)kk/del-2a^2 om+2 a mm-ang'[om])],
"analytic_pencil_residue_similarity_example"->Simplify[ng-n0],
"normal_form_quadratic_coefficient"->Expand[(cc bb1 bb2+bb(lk+ll)bb1 bb2-lj bb bb1 bb2)-(cc+(lk+ll-lj)bb)bb1 bb2]
|>;res

Clear[ph,phc,dp,dpc,A,e,z];
lag[z_]:=-(dpc+I e (A-z)phc)(dp-I e (A-z)ph);
jm=I e(phc(dp-I e A ph)-(dpc+I e A phc)ph);
<|"linear_current_source_from_connection_shift"->Expand[(D[lag[z],z]/.z->0)-jm]|>

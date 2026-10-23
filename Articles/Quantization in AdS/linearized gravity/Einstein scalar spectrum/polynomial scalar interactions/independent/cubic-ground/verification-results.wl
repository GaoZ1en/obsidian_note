<|"Conventions" -> "Radius=1, H3=lambda3/6 integral r dr dtheta :phi^3:, KG[a,a^dagger]=1; \
positive-at-origin radial Jacobi phase", "NormChecksExpected1" -> 
  {{{3/2, 0, 1}, {3/2, 1, 1}, {3/2, 2, 1}, {3/2, 3, 1}, {3/2, 4, 1}, {3/2, 5, 1}}, 
   {{2, 0, 1}, {2, 1, 1}, {2, 2, 1}, {2, 3, 1}, {2, 4, 1}, {2, 5, 1}}, 
   {{7/3, 0, 1}, {7/3, 1, 1}, {7/3, 2, 1}, {7/3, 3, 1}, {7/3, 4, 1}, {7/3, 5, 1}}}, 
 "OverlapResidualsExpected0" -> {{{3/2, 0, 0}, {3/2, 1, 0}, {3/2, 2, 0}, {3/2, 3, 0}, {3/2, 4, 0}, 
    {3/2, 5, 0}, {3/2, 6, 0}}, {{2, 0, 0}, {2, 1, 0}, {2, 2, 0}, {2, 3, 0}, {2, 4, 0}, {2, 5, 0}, 
    {2, 6, 0}}, {{7/3, 0, 0}, {7/3, 1, 0}, {7/3, 2, 0}, {7/3, 3, 0}, {7/3, 4, 0}, {7/3, 5, 0}, 
    {7/3, 6, 0}}, {{4, 0, 0}, {4, 1, 0}, {4, 2, 0}, {4, 3, 0}, {4, 4, 0}, {4, 5, 0}, {4, 6, 0}}}, 
 "SourceDifferentialIdentityResidual" -> 0, "GroundOscillatorPolynomialTimesC0SquaredOverDelta" -> 
  -1/18 + n/6 - (5*n^2)/6, "GroundOscillatorConnectedTimesC0SquaredOverDelta" -> -5/3, 
 "DeltaThreeHalvesTerm" -> (180 - 96*n*(3 + 2*n))/((-3 + 4*n)*(1 + 4*n)^2*(3 + 4*n)*(5 + 4*n)^2*
    (9 + 4*n)*Pi), "DeltaThreeHalvesExactSum" -> 1/8 - 29/(60*Pi), 
 "DeltaThreeHalvesExpectedResidual" -> 0, "DeltaThreeHalvesNumerical" -> 
  -0.0288497783221654912432543045934305499666443242157745671228`35., 
 "EvenDeltaExactValues" -> {{2, -5/(192*Pi)}, {4, -127/(60480*Pi)}, {6, -3529/(6336000*Pi)}, 
   {8, -21103/(94174080*Pi)}, {10, -46249433/(413517726720*Pi)}, 
   {12, -114324857/(1794078538560*Pi)}}, "GenericDeltaNumericalComparisons" -> 
  {<|"Delta" -> 6/5, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0911869093022010454118156998494371318776773194051087049037`30., 
    "BindingClosed" -> -0.0911869099757894175011560559816642122853148831969718988907`30., 
    "PartialMinusClosed" -> 
     6.73588372089340356132227080407637563791863193987`21.567432088281485*^-10, 
    "PlusMinus2DeltaPartial" -> 0.0148023572829288479454268518123402874839462930599675845214`30., 
    "PlusMinus2DeltaExact" -> 0.0148023570583980036987429095398543863499311426469918572123`30., 
    "DifferenceInSChannel" -> 
     2.245308442466839422724859011340151504129757273091`21.87991513444054*^-10|>, 
   <|"Delta" -> 3/2, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0288497783220522608011278825702831416876439198891930914242`30., 
    "BindingClosed" -> -0.0288497783221654912432543045934305499666443242157745671228`30., 
    "PartialMinusClosed" -> 
     1.132304421264220231474082790004043265814756986`18.292790726983228*^-13, 
    "PlusMinus2DeltaPartial" -> 0.0053051647697675884222386610042144958446497621786688183515`30., 
    "PlusMinus2DeltaExact" -> 0.005305164769729844525629458779083812067815321524681881625`30., 
    "DifferenceInSChannel" -> 
     3.77438966092022251306837768344406539869367266`18.551117861304704*^-14|>, 
   <|"Delta" -> 7/3, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0045334494948150499036015329948719093838976565428347816262`30., 
    "BindingClosed" -> -0.0045334494948150499038071714737790025791651377215901331111`30., 
    "PartialMinusClosed" -> 2.056384789070931952674811787553514849`10.35564560529076*^-22, 
    "PlusMinus2DeltaPartial" -> 0.0009301262907967909233931936781400429546082856444923944954`30., 
    "PlusMinus2DeltaExact" -> 0.000930126290796790923324645370358850167733855072509161064`30., 
    "DifferenceInSChannel" -> 6.85483077811927868744305719832334314`10.56642482213203*^-23|>, 
   <|"Delta" -> 3, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0018025718664504351512707311885602989666082782248452464356`30., 
    "BindingClosed" -> -0.0018025718664504351512707320198536077627332096730883018009`30., 
    "PartialMinusClosed" -> 8.312933087961249314482430553653`5.36283170059678*^-28, 
    "PlusMinus2DeltaPartial" -> 0.0003789403406949888946878187613332335756160864966208168497`30., 
    "PlusMinus2DeltaExact" -> 0.0003789403406949888946878184842202722905582372517629915447`30., 
    "DifferenceInSChannel" -> 2.77112961285057849244857825305`5.563056002417874*^-28|>, 
   <|"Delta" -> 7/2, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0010522249224605338563302636908712257277448531603149729589`30., 
    "BindingClosed" -> -0.0010522249224605338563302636908963611286542794046401751052`30., 
    "PartialMinusClosed" -> 2.51354009094262443252021463`1.0771472368889694*^-32, 
    "PlusMinus2DeltaPartial" -> 0.0002229060827617581733457755789614804563866650546457168897`30., 
    "PlusMinus2DeltaExact" -> 0.0002229060827617581733457755789531013473871983833899950262`30., 
    "DifferenceInSChannel" -> 8.3791089994666712557218635`1.2740459244385358*^-33|>, 
   <|"Delta" -> 9/2, "Cutoff" -> 300, "BindingPartial" -> 
     -0.0004514628752814044198670168315228908922156605449611331044`30., 
    "BindingClosed" -> -0.0004514628752814044198670168315228908925180387122379472628`30., 
    "PartialMinusClosed" -> 0``33.04434796114458, "PlusMinus2DeltaPartial" -> 
     0.000096108057422642110971548166287750218720648701019443252`30., 
    "PlusMinus2DeltaExact" -> 0.0000961080574226421109715481662877502186198427812442369859`30., 
    "DifferenceInSChannel" -> 0``33.71621020514299|>}, "DirectFiniteFockChecks" -> 
  {<|"Delta" -> 3/2, "Modes" -> {"radial n=0", "radial n=1", "radial n=2", "ell=1 cosine", 
      "ell=1 sine"}, "IndividualShifts" -> 
     {<|"N" -> 0, "E2OverLambda2" -> -1001951014/(85395509199*Pi), 
       "ByNongroundOccupation0Through3" -> {-2/(675*Pi), -164/(1939275*Pi), 
         -1609864/(230773725*Pi), -3649787696/(2134887729975*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {}|>, 
      <|"N" -> 1, "E2OverLambda2" -> -160207811626/(2386050992325*Pi), 
       "ByNongroundOccupation0Through3" -> {-26/(675*Pi), -9332/(16591575*Pi), 
         -1271047016/(48231708525*Pi), -3649787696/(2134887729975*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {}|>, 
      <|"N" -> 2, "E2OverLambda2" -> -2882150785018/(13520955623175*Pi), 
       "ByNongroundOccupation0Through3" -> {-22/(135*Pi), -412028/(149324175*Pi), 
         -2205632456/(48231708525*Pi), -3649787696/(2134887729975*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {}|>}, "ConnectedByNongroundOccupation" -> 
     {-4/(45*Pi), -5704/(3318315*Pi), 0, 0}, "DirectConnected" -> -901996/(9954945*Pi), 
    "SingleModeSumThroughN2" -> -901996/(9954945*Pi), "Difference" -> 0, 
    "AllProjectedAmplitudesZero" -> True, "ConnectedNumerical" -> 
     -0.02884136919874840599966952685865255197`25.|>, 
   <|"Delta" -> 2, "Modes" -> {"radial n=0", "radial n=1", "radial n=2", "ell=1 cosine", 
      "ell=1 sine"}, "IndividualShifts" -> {<|"N" -> 0, "E2OverLambda2" -> -6133/(1693440*Pi), 
       "ByNongroundOccupation0Through3" -> {-1/1152*1/Pi, 0, -121/(53760*Pi), -1703/(3386880*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {}|>, 
      <|"N" -> 1, "E2OverLambda2" -> -34861/(1693440*Pi), "ByNongroundOccupation0Through3" -> 
        {-13/(1152*Pi), 0, -473/(53760*Pi), -1703/(3386880*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {}|>, 
      <|"N" -> 2, "E2OverLambda2" -> -107689/(1693440*Pi), "ByNongroundOccupation0Through3" -> 
        {-55/(1152*Pi), 0, -55/(3584*Pi), -1703/(3386880*Pi)}, 
       "ProjectedZeroDenominatorStatesAndAmplitudes" -> {{{0, 1, 0, 0, 0}, 0}}|>}, 
    "ConnectedByNongroundOccupation" -> {-5/(192*Pi), 0, 0, 0}, "DirectConnected" -> -5/(192*Pi), 
    "SingleModeSumThroughN2" -> -5/(192*Pi), "Difference" -> 0, "AllProjectedAmplitudesZero" -> 
     True, "ConnectedNumerical" -> -0.00828931995270288207129602934231845636`25.|>}, 
 "BFRightLimit" -> (1 - 7*Zeta[3])/(8*Pi), "Messages" -> {}|>
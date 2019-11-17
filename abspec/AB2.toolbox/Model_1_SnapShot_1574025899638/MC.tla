---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574025894535275000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574025894535276000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1574025894536278000 ==
ABS!FairSpec
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_1574025894536279000 ==
AB!Spec
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 22:24:54 CET 2019 by martin

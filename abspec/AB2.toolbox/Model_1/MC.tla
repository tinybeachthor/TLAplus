---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574026031578295000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574026031578296000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1574026031578298000 ==
ABS!Spec
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_1574026031578299000 ==
AB!Spec
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 22:27:11 CET 2019 by martin

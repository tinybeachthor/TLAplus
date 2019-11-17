---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574025751115265000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574025751115266000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1574025751115268000 ==
ABS!Spec
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_1574025751115269000 ==
AB!Spec
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 22:22:31 CET 2019 by martin

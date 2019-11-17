---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574017316160246000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574017316160247000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1574017316160249000 ==
ABS!Spec
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 20:01:56 CET 2019 by martin

---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574017300771239000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574017300771240000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 20:01:40 CET 2019 by martin

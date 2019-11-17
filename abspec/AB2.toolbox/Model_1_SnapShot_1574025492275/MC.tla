---- MODULE MC ----
EXTENDS AB2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
d1, d2, d3
----

\* MV CONSTANT definitions Data
const_1574025490250255000 == 
{d1, d2, d3}
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1574025490250256000 ==
/\ Len(AtoB2) < 4
/\ Len(BtoA2) < 4
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1574025490250258000 ==
ABS!Spec
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_1574025490250259000 ==
AB!Spec
----
=============================================================================
\* Modification History
\* Created Sun Nov 17 22:18:10 CET 2019 by martin

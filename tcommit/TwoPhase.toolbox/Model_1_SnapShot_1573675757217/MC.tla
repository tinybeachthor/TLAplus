---- MODULE MC ----
EXTENDS TwoPhase, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_1573675748154120000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_1573675748154121000 == 
Permutations(const_1573675748154120000)
----

=============================================================================
\* Modification History
\* Created Wed Nov 13 21:09:08 CET 2019 by martin

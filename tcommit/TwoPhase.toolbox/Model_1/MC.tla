---- MODULE MC ----
EXTENDS TwoPhase, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_1573851767361143000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_1573851767361144000 == 
Permutations(const_1573851767361143000)
----

=============================================================================
\* Modification History
\* Created Fri Nov 15 22:02:47 CET 2019 by martin

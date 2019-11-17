---- MODULE MC ----
EXTENDS TwoPhase, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_1573675650793113000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_1573675650793114000 == 
Permutations(const_1573675650793113000)
----

=============================================================================
\* Modification History
\* Created Wed Nov 13 21:07:30 CET 2019 by martin

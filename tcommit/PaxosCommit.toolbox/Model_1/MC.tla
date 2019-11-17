---- MODULE MC ----
EXTENDS PaxosCommit, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2
----

\* MV CONSTANT definitions Acceptor
const_1573770343442131000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions RM
const_1573770343442132000 == 
{r1, r2}
----

\* SYMMETRY definition
symm_1573770343442133000 == 
Permutations(const_1573770343442132000)
----

\* CONSTANT definitions @modelParameterConstants:0Ballot
const_1573770343442134000 == 
{0,1}
----

\* CONSTANT definitions @modelParameterConstants:2Majority
const_1573770343442135000 == 
{{a1,a2}, {a1,a3}, {a2,a3}}
----

=============================================================================
\* Modification History
\* Created Thu Nov 14 23:25:43 CET 2019 by martin

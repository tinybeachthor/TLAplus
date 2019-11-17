--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers

VARIABLES i, pc

Init == /\ pc = "start"
        /\ i = 0

Pick == \/ /\ pc = "start"
           /\ i' \in 0..1000
           /\ pc' = "middle"
           
Add1 == \/ /\ pc = "middle"
           /\ i' = i + 1
           /\ pc' = "done"

Next == Pick \/ Add1

-----------------------------------------------------------------------------

SimpleSpec == Init /\ [][Next]_<<pc, i>>

=============================================================================
\* Modification History
\* Last modified Fri Nov 15 22:32:58 CET 2019 by martin
\* Created Sun Sep 22 21:55:55 CEST 2019 by martin

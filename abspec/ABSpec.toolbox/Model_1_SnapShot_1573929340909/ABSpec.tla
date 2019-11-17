------------------------------- MODULE ABSpec -------------------------------

EXTENDS Integers

CONSTANT Data

VARIABLES AVar, BVar

TypeOK == /\ AVar \in Data \X {0, 1}
          /\ BVar \in Data \X {0, 1}

vars == <<AVar, BVar>>

Init == /\ AVar \in Data \X {1}
        /\ BVar = AVar
       
\* Send a value from A
A == /\ AVar = BVar
     /\ \E d \in Data : AVar' = <<d, 1-AVar[2]>>
     /\ UNCHANGED BVar

\* Receive a value on B
B == /\ AVar /= BVar
     /\ BVar' = AVar
     /\ UNCHANGED AVar

Next == A \/ B

Spec == Init /\ [][Next]_<<vars>>

=============================================================================
\* Modification History
\* Last modified Sat Nov 16 19:34:13 CET 2019 by martin
\* Created Sat Nov 16 19:26:21 CET 2019 by martin

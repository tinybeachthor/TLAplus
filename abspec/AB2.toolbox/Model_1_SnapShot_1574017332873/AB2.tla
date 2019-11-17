-------------------------------- MODULE AB2 --------------------------------

EXTENDS Integers, Sequences

CONSTANT Data, Bad
ASSUME Bad \notin (Data \X {0, 1}) \union {0, 1}

VARIABLES AVar, BVar, AtoB2, BtoA2
vars == <<AVar, BVar, AtoB2, BtoA2>>

TypeOK == /\ AVar \in Data \X {0, 1}
          /\ BVar \in Data \X {0, 1}
          /\ AtoB2 \in Seq((Data \X {0, 1}) \union {Bad})
          /\ BtoA2 \in Seq({0, 1, Bad})
          
Init == /\ AVar \in Data \X {1}
        /\ BVar = AVar
        /\ AtoB2 = <<>>
        /\ BtoA2 = <<>>

ASnd == /\ AtoB2' = Append(AtoB2, AVar)
        /\ UNCHANGED <<AVar, BtoA2, BVar>>
BSnd == /\ BtoA2' = Append(BtoA2, BVar[2])
        /\ UNCHANGED <<AVar, AtoB2, BVar>>

ARcv == /\ BtoA2 /= <<>>
        /\ IF Head(BtoA2) = AVar[2]
              THEN \E d \in Data:
                        AVar' = <<d, 1-AVar[2]>>
              ELSE UNCHANGED AVar
        /\ BtoA2' = Tail(BtoA2)
        /\ UNCHANGED <<BVar, AtoB2>>
        
BRcv == /\ AtoB2 /= <<>>
        /\ IF (Head(AtoB2) /= Bad) /\ (Head(AtoB2)[2] /= BVar[2])
              THEN BVar' = Head(AtoB2)
              ELSE UNCHANGED BVar
        /\ AtoB2' = Tail(AtoB2)
        /\ UNCHANGED <<AVar, BtoA2>>
        
CorruptMsg == /\ \/ /\ \E i \in 1..Len(AtoB2): 
                            AtoB2' = [AtoB2 EXCEPT![i] = Bad]
                    /\ UNCHANGED BtoA2
                 \/ /\ \E i \in 1..Len(BtoA2):
                            BtoA2' = [BtoA2 EXCEPT![i] = Bad]
                    /\ UNCHANGED AtoB2
              /\ UNCHANGED <<AVar, BVar>>
        
Next == ASnd \/ ARcv \/ BSnd \/ BRcv \/ CorruptMsg

Spec == Init /\ [][Next]_vars

FairSpec == Spec /\ SF_vars(ARcv) /\ SF_vars(BRcv) /\
                    WF_vars(ASnd) /\ WF_vars(BSnd)

-----------------------------------------------------------------------------

ABS == INSTANCE ABSpec

THEOREM Spec => ABS!Spec
THEOREM FairSpec => ABS!FairSpec


=============================================================================
\* Modification History
\* Last modified Sun Nov 17 20:01:36 CET 2019 by martin
\* Created Sun Nov 17 19:29:22 CET 2019 by martin

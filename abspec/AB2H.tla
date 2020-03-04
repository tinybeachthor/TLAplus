-------------------------------- MODULE AB2H --------------------------------

EXTENDS Integers, Sequences

CONSTANTS Data, Bad
ASSUME Bad \notin (Data \X {0,1}) \union {0,1}

VARIABLES AVar, BVar, AtoB2, BtoA2

AB2 == INSTANCE AB2

----

VARIABLES AtoB, BtoA

----

RECURSIVE RemoveBad(_)
RemoveBad(seq) ==
    IF seq = <<>>
        THEN <<>>
        ELSE IF Head(seq) = Bad
                THEN RemoveBad(Tail(seq))
                ELSE <<Head(seq)>> \o RemoveBad(Tail(seq))

SpecH == /\ AB2!Spec
         /\ [] /\ AtoB = RemoveBad(AtoB2)
               /\ BtoA = RemoveBad(BtoA2)

----

AB == INSTANCE AB
THEOREM SpecH => AB!Spec


=============================================================================
\* Modification History
\* Last modified Sun Nov 17 22:12:06 CET 2019 by martin
\* Created Sun Nov 17 21:55:57 CET 2019 by martin

% example.pl
likes(john, mary).
likes(mary, chocolate).
likes(john, chocolate).

mother_child(trude, sally).
father_child(tom, sally).
father_child(mike, tom).

sibling(X, Y) :- parent_child(Z, X), parent_child(Z, Y).

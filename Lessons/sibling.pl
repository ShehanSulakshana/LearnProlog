parent(john, mary).
parent(john,alice).
parent(jane,mary).
parent(jane, alice).
parent(paul, sophie).
parent(linda, sophie).

%RULE
sibling(X, Y ) :- parent(Z,X) ,  parent(Z,Y) ,  X\=Y.
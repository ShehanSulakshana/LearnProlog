%Facts
parent(john,mary).
parent(mary,alice).
parent(alice,sophie).

%BASE RULE
ancestor(X,Y) :- parent(X,Y).

%RECURSIVE RULE
ancestor(X,Y) :- parent(X,Z) , ancestor(Z,Y).
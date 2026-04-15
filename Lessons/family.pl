parent(nolan , john).
parent(john , mary).
parent(mary, alice).
parent(john, bob).
parent(bob, mark).

grandparent(X,Y) :- parent(X,Z) , parent(Z,Y).

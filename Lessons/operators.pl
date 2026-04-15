% CUSTOM OPERATORS
:- op(150 ,  xfy, likes).
:- op(150 ,  xfy, owns).
:- op(150 ,  xf, is_female).
:- op(150 ,  xf, isa_cat).


% FEMALE PERSONS
is_female(sara).
is_female(amy).

% OWNERSHIP FACTS
sara owns kitty.
amy owns sparky.

% PET TYPES
kitty isa_cat.
sparky isa_cat.

% AGE FACTS
age(john, 30).
age(sara, 25).
age(amy,32).


% RULE
john likes X :- X is_female, X owns Pet, age(john , A1), age(X, A2), A2<A1.


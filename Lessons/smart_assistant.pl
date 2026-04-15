% ======== RULE DEFINITION =========
eligible(yes) :-
    current_age(Age),
    has_passport(true),
    has_insurance(true),
    Age >= 18.

eligible(no) :-
    \+ eligible(yes).

% ======== MAIN PROGRAM =========
start :-
    nl,
    write('=== Smart Trip Assistant ==='), nl,
    write('What is your name ? '),
    read(Name),
    write('Hello, '), write(Name), write('!'), nl,

    write('Enter your age : '),
    read(Age),
    assertz(current_age(Age)),

    write('Do you have a valid passport? (yes/no) '),
    read(PassportInput),
    (PassportInput == yes -> Passport = true ; Passport = false),
    assertz(has_passport(Passport)),

    write('Do you have travel insurance ? (yes/no) '),
    read(InsuranceInput),
    (InsuranceInput == yes -> Insurance = true ; Insurance = false),
    assertz(has_insurance(Insurance)),

    write('Are you vaccinated ? (yes/no) '),
    read(VaccineInput),
    (VaccineInput == yes -> Vaccine = true ; Vaccine = false),

    nl,
    write('Evaluating your travel eligibility...'), nl,

    % AND
    (Age >= 18, Passport == true, Insurance == true ->
        write('You are eligible for international travel!'), nl
    ;   true
    ),

    % OR
    (Vaccine == true ; Age < 12 ->
        write('You meet the health requirement for the trip.'), nl
    ;
        write('Health requirement not met (Must be vaccinated or under 12).'), nl
    ),

    % NOT
    (Insurance == false ->
        write('Tip : You should get travel insurance'), nl
    ;
        true
    ),

    % IFF
    eligible(X),
    write('Final eligibility (IFF Rule) : '), write(X), nl,

    % Clean up
    retractall(current_age(_)),
    retractall(has_passport(_)),
    retractall(has_insurance(_)),

    write('Thank you! Safe travels!').

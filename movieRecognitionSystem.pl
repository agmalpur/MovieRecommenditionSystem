go :-
    hypothesis(Movie),
    nl,
    write('The movie maybe..'),
    nl,
    write(Movie),
    nl,
    undo.
hypothesis(chak_de_india)      :- chak_de_india ,!.
hypothesis(three_idiots)       :- three_idiots ,!.
hypothesis(sultan)             :- sultan,!.
hypothesis(student_of_the_year):-student_of_the_year,!.
hypothesis(tanaji)             :-tanaji,!.
hypothesis(unknown).
chak_de_india:-
    verify(hockey),
    verify(shahruk_khan),
    verify(girls_team),
    verify(nationalism),
    verify(team),
    verify(india),
    verify(dedication),
    write('This a very inspirational movie').
three_idiots:-
    verify(amir_khan),
    verify(rancho),
    verify(comedy),
    verify(friends),
    verify(kareena_kapoor),
    verify(college),
    verify(engineering),
    verify(creativity),
    verify(entertainment),
    verify(motivational),
    write('It is a must watch movie').
sultan:-
    verify(salman_khan),
    verify(kareena_kapoor),
    verify(inspirational),
    verify(hardwork),
    verify(wrestling),
    verify(championship),
    verify(girls),
    verify(sisters),
    write('It is a movie based on wrestling').
student_of_the_year:-
    verify(alia_bhat),
    verify(varun_dhavan),
    verify(siddhart_malhotra),
    verify(college_life),
    verify(dance),
    verify(love_triangle),
    verify(competition),
    verify(two_parts),
    write('It is a very nice and happy movie').
tanaji:-
    verify(ajay_devgan),
    verify(mavla),
    verify(shivanji_maharaj),
    verify(traditional),
    verify(enthusiastic),
    verify(powerful),
    verify(energetic),
    write('It is a historic movie').

ask(Question) :-
    write('Does the movie have the following: '),
    nl,
    write(Question),
    nl,
    write('?'),
    read(Response),
    nl,
    (   (Response==yes ; Response==y)
    ->
    assert(yes(Question));
    assert(no(Question)),fail).
:- dynamic yes/1,no/1.
verify(S):-
    (   yes(S)
    ->
    true;
    (   no(S)
    ->
    fail;
    ask(S))).
undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.


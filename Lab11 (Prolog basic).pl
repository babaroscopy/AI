% ==========================================================
% Simple Prolog Program with Comments and Rule Explanation
% ==========================================================

% ----------------------------
%        FACTS (Knowledge)
% ----------------------------

% General Notes:
% • Predicates (relationship names) begin with lowercase letters.
% • Constants (objects like 'tom', 'mia') also begin with lowercase.
% • Strings can be enclosed in quotes.
% • Each fact ends with a period.

% -- Tom is a cat
cat(tom).

% -- Kunal loves to eat pasta
loves_to_eat(kunal, pasta).

% -- Hair is black in color
of_color(hair, black).

% -- Nawaz loves to play games
loves_to_play_games(nawaz).

% -- Pratyusha is lazy
lazy(pratyusha).


dances(lili).
search_for_food(tom).
lovesCricket(jack).
lovesCricket(bili).
isClosed(school).
free(ryan).

% Lili also sings
sings(lili).

% Pratyusha likes sleeping
likes_to_sleep(pratyusha).

% Mia is beautiful
beautiful(mia).

% Vincent is romantic
romantic(vincent).

% -- Relationships of love (fictional)
loves(vincent, mia).
loves(marcellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).



% ----------------------------
%        RULES (Logic)
% ----------------------------

% Notes:
% • Rules define conditional relationships.
% • A rule is written as:
%     head :- body.
% • This is read as: "head is true if body is true".
% • ',' means AND; ';' means OR

% -- Lili is happy if she dances
happy(lili) :- dances(lili).

% -- Tom is hungry if he is searching for food
hungry(tom) :- search_for_food(tom).

% -- Jack and Bili are friends if both love to play cricket
friends(jack, bili) :- lovesCricket(jack), lovesCricket(bili).

% -- Ryan will go to play if school is closed and he is free
go_to_play(ryan) :- isClosed(school), free(ryan).

% -- Someone is jealous of another if both love the same person
jealous(X, Y) :-
    loves(X, Z),
    loves(Y, Z).

% -- A person is artistic if they dance or sing
artistic(X) :- dances(X).
artistic(X) :- sings(X).

% -- A person is foodie if they love to eat something
foodie(X) :- loves_to_eat(X, _).

% -- Someone is romantic if they love someone who is beautiful
romantic_person(X) :-
    loves(X, Y),
    beautiful(Y).

% -- A person is sleepy if they are lazy and like to sleep
sleepy(X) :-
    lazy(X),
    likes_to_sleep(X).

% -- Mutual love (both love each other)
mutual_love(X, Y) :-
    loves(X, Y),
    loves(Y, X).


% ----------------------------
%        QUERIES
% ----------------------------

/** <examples>

?- loves(X, mia).
% Who loves Mia?

?- jealous(X, Y).
% Who is jealous of whom? (due to love triangle)

?- hungry(tom).
% Is Tom hungry?

?- go_to_play(ryan).
% Will Ryan go to play?

?- friends(jack, bili).
% Are Jack and Bili friends?

?- happy(lili).
% Is Lili happy?

?- artistic(lili).
% Is Lili artistic?

?- foodie(kunal).
% Is Kunal a foodie?

?- romantic_person(vincent).
% Is Vincent romantic (because he loves someone beautiful)?

?- sleepy(pratyusha).
% Is Pratyusha sleepy?

?- mutual_love(pumpkin, honey_bunny).
% Do Pumpkin and Honey Bunny love each other?

?- go_to_play(ryan).
% Can Ryan go to play?

?- jealous(X, Y).
% Who is jealous of whom?

?- friends(X, Y).
% Who are friends?

?- romantic(X).
% Who is romantic?

*/

% ----------------------------
%         EXTENSIONS
% ----------------------------

% You can extend the above program by adding facts to make queries succeed.
% Example:
% dances(lili).
% search_for_food(tom).
% lovesCricket(jack).
% lovesCricket(bili).
% isClosed(school).
% free(ryan).

% These facts, when added, will activate the rules written above.

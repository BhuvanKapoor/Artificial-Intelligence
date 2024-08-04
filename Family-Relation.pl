%% FACTS

% genders
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).

% parents
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

%% RULES
grandparent(X,Y) :- parent(X,Z) , parent(Z,Y).
grandchild(X,Y) :- parent(Y,Z) , parent(Z,X).

mother(X,Y) :- parent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).

offspring(X,Y) :- parent(Y,X).

sister(X,Y) :- same_parent(X,Y), female(X), different(X,Y).
brother(X,Y) :- same_parent(X,Y), male(X), different(X,Y).

same_parent(X,Y) :- parent(Z,X) , parent(Z,Y).
different(X,Y) :- not(X=Y).

% ARTI 303 - Programming for AI
% Lab 9 - Prolog Operators
% Task 1 - A Boolean Expression

% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Negation
neg(true, false).
neg(false, true).

% Boolean expression:
% (A AND B) OR (NOT A AND NOT B)

logicGate(A, B, Output) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, Output).


% ARTI 303 - Programming for AI
% Lab 9 - Prolog Operators
% Task 2 - sumlist

% Base case: empty list
sumlist([], 0).

% Recursive case: add the head to the sum of the tail
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, RestSum),
    Sum is Head + RestSum.

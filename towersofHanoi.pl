move(1,X,Y,_) :-
   write('Move top disk from '), write(X), write(' to '), write(Y), nl.
move(N,X,Y,Z) :-
   N>1,
   M is N-1,
   move(M,X,Z,Y),
   move(1,X,Y,_),
   move(M,Z,Y,X).
%minimum number of moves to solve are (2^n)-1

%Sample query
%?- move(4,source,target,auxiliary).
%moves 4 disks fom the source to a target using the auxiliary

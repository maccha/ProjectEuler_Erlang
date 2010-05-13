-module(problem001).
-compile(export_all).

fizzmultiply(SUM, N) ->
	if
	     N rem 3 == 0 -> SUM+N;
	     N rem 5 == 0 -> SUM+N;
	     true -> SUM
	end.

fizzmulti(SUM, N, MAX) ->
%	io:format("~p~n", [fizzmultiply(SUM, N)]),
	if N =< MAX -> fizzmulti(fizzmultiply(SUM, N), N+1, MAX);
	   true -> io:format("~p~n",  [SUM])
	end.

fizzmulti(MAX) -> fizzmulti(0, 1, MAX-1).


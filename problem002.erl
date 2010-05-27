-module(problem002).
-compile(export_all).


fiboculc(N, M, C, MAX) ->
    if C < MAX -> fiboculc(M, N+M, C+1, MAX);
        true -> io:format("~p~n", [M])
    end.

fibo(MAX)->
    fiboculc(1, 2, 1, MAX-1).

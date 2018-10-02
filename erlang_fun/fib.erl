-module(fib).
-export([fib_test/0, fib/1]).

fib_test() ->
    T = fib(1),
	io:format("T is ~w~n", [T]),
	T1 = fib(2),
	io:format("T1 is ~w~n", [T1]),
	T2 = fib(12),
	io:format("T2 is ~w~n", [T2]),
	T3 = fib(0),
	io:format("T3 is ~w~n", [T3]).

fib(0, Cur, Sum, List) -> 
    List ++ [Cur] ++ [Sum];
fib(N, Cur, Sum, List) ->
    fib(N-1, Sum, Cur + Sum, List ++ [Cur] ).

fib(0) ->
    [];
fib(1) ->
    [1];
fib(N) ->
    fib(N-2, 1, 1, []).
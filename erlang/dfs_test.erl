#!/usr/bin/env escript
%%! -smp enable -sname dfs
%% To run: `erlc dfs.erl && escript dfs_test.erl`

-export([main/1]).

-define(NODES, [{1,  [2, 7, 8]},
                {2,  [1, 3, 6]},
                {3,  [2, 4, 5]},
                {4,  [3]},
                {5,  [3]},
                {6,  [2]},
                {7,  [1]},
                {8,  [1, 9, 12]},
                {9,  [8, 10, 11]},
                {10, [9]},
                {11, [9]},
                {12, [8]}]).

main(_) -> io:format("~p~n", [dfs:visit(1, ?NODES)]).

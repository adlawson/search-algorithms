#!/usr/bin/env escript
%%! -smp enable -sname bfs
%% To run: `erlc bfs.erl && escript bfs_test.erl`

-export([main/1]).

-define(NODES, [{1,  [2, 3, 4]},
                {2,  [1, 5, 6]},
                {3,  [1]},
                {4,  [1, 7, 8]},
                {5,  [2, 9, 10]},
                {6,  [2]},
                {7,  [4, 11, 12]},
                {8,  [4]},
                {9,  [5]},
                {10, [5]},
                {11, [7]},
                {12, [7]}]).

main(_) -> io:format("~p~n", [bfs:visit(1, ?NODES)]).

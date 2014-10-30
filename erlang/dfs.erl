-module(dfs).

-export([visit/2]).

visit(Start, Nodes) ->
    visit(Start, Nodes, []).

visit(Node, Nodes, Visited) ->
    Fn = fun(N, Acc) -> visit_recur(N, Nodes, Acc) end,
    lists:foldl(Fn, Visited ++ [Node], proplists:get_value(Node, Nodes)).

visit_recur(Node, Nodes, Visited) ->
    case lists:member(Node, Visited) of
        true  ->
            Visited;
        false ->
            visit(Node, Nodes, Visited)
    end.

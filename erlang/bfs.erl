-module(bfs).

-export([visit/2]).

visit(Start, Nodes) ->
    visit(Start, Nodes, []).

visit(Node, Nodes, Visited) ->
    visit_frontier([Node], Nodes, Visited).

visit_frontier([]=_, _, Visited) ->
    Visited;

visit_frontier([_|_]=Frontier, Nodes, _Visited) ->
    Visited = _Visited ++ Frontier,
    Fn = fun(N) -> not(lists:member(N, Visited)) end,
    Next = lists:filter(Fn, frontier_adj(Frontier, Nodes)),
    visit_frontier(Next, Nodes, Visited).

frontier_adj(Frontier, Nodes) ->
    Fn = fun(N, Acc) -> Acc ++ proplists:get_value(N, Nodes) end,
    lists:foldl(Fn, [], Frontier).

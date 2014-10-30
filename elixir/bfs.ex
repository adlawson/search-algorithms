defmodule Bfs do
    @moduledoc """
    Breadth First Search
    """

    @type t :: Keyword.t
    @type n :: non_neg_integer

    @doc """
    Visit all nodes in breadth first order and return a list of the nodes in the
    order they were visited.

    ## Examples

        iex> Bfs.visit(1, [{1,[2,3]}, {2,[1]}, {3,[1]}])
        [1,2,3]

    """
    @spec visit(n, t) :: t
    def visit(start, nodes) do
        visit(start, nodes, [])
    end

    defp visit(node, nodes, visited) do
        visit_frontier([node], nodes, visited)
    end

    defp visit_frontier([]=_, _, visited) do
        visited
    end

    defp visit_frontier([_|_]=frontier, nodes, visited) do
        v = visited ++ frontier
        x = Enum.filter(frontier_adj(frontier, nodes), fn(n) ->
            !Enum.member?(visited, n)
        end)
        visit_frontier(x, nodes, v)
    end

    defp frontier_adj(frontier, nodes) do
        Enum.reduce(frontier, [], fn(n, acc) ->
            acc ++ nodes[n]
        end)
    end
end

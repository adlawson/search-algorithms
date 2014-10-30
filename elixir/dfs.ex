defmodule Dfs do
    @moduledoc """
    Depth First Search
    """

    @type t :: Keyword.t
    @type n :: non_neg_integer

    @doc """
    Visit all nodes in depth first order and return a list of the nodes in the
    order they were visited.

    ## Examples

        iex> Dfs.visit(1, [{1,[2,3]}, {2,[1]}, {3,[1]}])
        [1,2,3]

    """
    @spec visit(n, t) :: t
    def visit(start, nodes) do
        visit(start, nodes, [])
    end

    defp visit(node, nodes, visited) do
        Enum.reduce(nodes[node], visited ++ [node], fn(n, acc) ->
            visit_recur(n, nodes, acc)
        end)
    end

    defp visit_recur(node, nodes, visited) do
        case Enum.member?(visited, node) do
            true  -> visited
            false -> visit(node, nodes, visited)
        end
    end
end

# To run: `julia dfs_test.jl`
include("dfs.jl")

nodes = [
     1 => [2, 7, 8],
     2 => [1, 3, 6],
     3 => [2, 4, 5],
     4 => [3],
     5 => [3],
     6 => [2],
     7 => [1],
     8 => [1, 9, 12],
     9 => [8, 10, 11],
    10 => [9],
    11 => [9],
    12 => [8]
]

visited = Number[]
Dfs.visit(1, nodes, n -> push!(visited, n))

print_joined(STDOUT, visited, ", ")
println()

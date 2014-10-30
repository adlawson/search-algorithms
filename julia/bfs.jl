module Bfs

    export visit

    function visit(start::Number, nodes::Dict{Int,Array{Int,1}}, fn::Function)
        frontier = Number[start]
        visited  = Number[]

        function next_visit(node::Number)
            filter(n -> !in(n, visited), nodes[node])
        end

        while 0 < length(frontier)
            next = Number[]
            for node = frontier
                push!(visited, node)
                append!(next, next_visit(node))
                fn(node)
            end
            frontier = next
        end
    end

end

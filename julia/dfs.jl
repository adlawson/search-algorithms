module Dfs

    export visit

    function visit(start::Number, nodes::Dict{Int,Array{Int,1}}, fn::Function)
        function visit_recur(node, visited)
            push!(visited, node)
            fn(node)
            for n = nodes[node]
                if !in(n, visited)
                    visit_recur(n, visited)
                end
            end
        end
        visit_recur(start, Number[])
    end

end

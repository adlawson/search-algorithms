function bfs(start, nodes, fn)
    local frontier = {start}
    local visited = {}
    local next = {}
    local next_visit = function(node)
        local next = {}
        local iter = function (n) return not visited[n] end
        for _, n in ipairs(nodes[node]) do
            if iter(n) then table.insert(next, n) end
        end
        return next
    end

    while 0 < #frontier do
        next = {}
        for _, node in ipairs(frontier) do
            table.insert(visited, node)
            fn(node)
            for _, n in ipairs(next_visit(node)) do
                table.insert(next, n)
            end
        end
        frontier = next
    end
end

return bfs

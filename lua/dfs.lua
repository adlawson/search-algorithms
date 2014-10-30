function dfs(start, nodes, fn)
    function dfs_recur(node, visited)
        visited[node] = true
        fn(node)
        for _, n in ipairs(nodes[node]) do
            if not visited[n] then
                dfs_recur(n, visited)
            end
        end
    end
    dfs_recur(start, {})
end

return dfs

def visit(start, nodes, fn):
    def visit_recur(node, visited):
        adj = sorted(nodes[node])
        visited.append(node)
        fn(node)
        for node in adj:
            if node not in visited:
                visit_recur(node, visited)
    visit_recur(start, []);

def visit(start, nodes, fn):
    frontier = [start]
    level = 0
    levels = {}

    while 0 < len(frontier):
        next = []
        for node in frontier:
            fn(node)
            levels[node] = level

            for adj in sorted(nodes[node]):
                if adj not in levels:
                    next.append(adj)
        frontier = next
        level += 1

# To run: python -B dfs_test.py
import dfs

nodes = {
     1: [2, 7, 8],
     2: [1, 3, 6],
     3: [2, 4, 5],
     4: [3],
     5: [3],
     6: [2],
     7: [1],
     8: [1, 9, 12],
     9: [8, 10, 11],
    10: [9],
    11: [9],
    12: [8]
}

visited = []
dfs.visit(1, nodes, (lambda n: visited.append(str(n))))

print ", ".join(visited)

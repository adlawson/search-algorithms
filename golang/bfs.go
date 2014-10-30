package main

func bfs(start int, nodes map[int][]int, fn func (int)) {
    frontier := []int{start}
    visited := map[int]bool{}
    next := []int{}

    for 0 < len(frontier) {
        next = []int{}
        for _, node := range frontier {
            visited[node] = true
            fn(node)
            for _, n := range bfs_frontier(node, nodes, visited) {
                next = append(next, n)
            }
        }
        frontier = next
    }
}

func bfs_frontier(node int, nodes map[int][]int, visited map[int]bool) []int {
    next := []int{}
    iter := func (n int) bool { _, ok := visited[n]; return !ok }
    for _, n := range nodes[node] {
        if iter(n) {
            next = append(next, n)
        }
    }
    return next
}

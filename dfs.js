module.exports = (function () {

    'use strict';

    function visit(graph, fn, visited) {

        for (var node in graph) {
            if (-1 === visited.indexOf(node)) {
                visited.push(node);
                fn(node);
                visit(graph[node], fn, visited);
            }
        }
    };

    function dfs(node, graph, fn) {
        var nodes = {};
        nodes[node] = graph[node];
        visit(nodes, fn, []);
    }

    return dfs;

})();

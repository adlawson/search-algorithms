module.exports = (function () {

    'use strict';


    function dfs(start, nodes, fn) {
        (function dfs_recur(node, visited) {
            var adj = nodes[node];
            visited.push(node);
            fn(node);
            for (var i in adj) {
                var node = adj[i];
                if (0 > visited.indexOf(node)) {
                    dfs_recur(node, visited);
                }
            }
        })(start, []);
    };

    return dfs;

})();

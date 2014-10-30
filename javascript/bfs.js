module.exports = (function () {

    'use strict';

    function bfs(start, nodes, fn) {
        var frontier = [start];
        var level = 0, levels = {};

        while (0 < frontier.length >>> 0) {
            var next = [];
            for (var i in frontier) {
                var node = frontier[i];
                levels[node] = level;
                fn(node);

                for (var i in nodes[node]) {
                    var adj = nodes[node][i];
                    if (void(0) === levels[adj]) {
                        next.push(adj);
                    }
                }
            }
            frontier = next;
            level += 1;
        }
    }

    return bfs;

})();

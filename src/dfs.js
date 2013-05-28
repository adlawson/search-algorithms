/**
 * Depth First Search
 * @link https://github.com/adlawson/dfs-js
 * @author Andrew Lawson (http://adlawson.com)
 */
(function(globals) {

    /**
     * @param {Object} graph
     * @param {Function} fn
     * @param {Array} visited
     */
    var visit = function(graph, fn, visited) {
        for (node in graph) {
            if (-1 === visited.indexOf(node)) {
                visited.push(node);
                fn(node);
                visit(graph[node], fn, visited);
            }
        }
    };

    /**
     * @param {Number} node
     * @param {Object} graph
     * @param {Function} fn
     */
    var dfs = function(node, graph, fn) {
        var nodes = {};
        nodes[node] = graph[node];
        visit(nodes, fn, []);
    }

    /**
     * Export
     */
    if (typeof define === 'function' && define.amd) {
        define(function() {
            return dfs;
        });
    } else if (typeof module === 'object' && module !== null) {
        module.exports = dfs;
    } else {
        globals.dfs = dfs;
    }

}).call(this);

/**
 * Depth First Search
 * @link https://github.com/adlawson/dfs-js
 * @author Andrew Lawson (http://adlawson.com)
 */
(function(dfs) {

    var graph = {
        "1":  {},
        "2":  {},
        "3":  {},
        "4":  {},
        "5":  {},
        "6":  {},
        "7":  {},
        "8":  {},
        "9":  {},
        "10": {},
        "11": {},
        "12": {}
    };

    [[1,2], [1,7], [1,8], [2,3], [2,6], [3,4], [3,5], [8,9], [8,12], [9,10], [9,11]].forEach(function(edge) {
        graph[edge[0]][edge[1]] = graph[edge[1]];
        graph[edge[1]][edge[0]] = graph[edge[0]];
    });

    var visited = [];
    dfs(1, graph, function(n) {
        visited.push(n);
    });

    console.log(visited.join(', '));

}).call(this, require('../src/dfs.js'));

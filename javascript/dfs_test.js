// To run: node dfs_test.js
(function (dfs) {

    'use strict';

    var nodes = {
         "1": [2, 7, 8],
         "2": [1, 3, 6],
         "3": [2, 4, 5],
         "4": [3],
         "5": [3],
         "6": [2],
         "7": [1],
         "8": [1, 9, 12],
         "9": [8, 10, 11],
        "10": [9],
        "11": [9],
        "12": [8]
    };

    var visited = [];
    dfs(1, nodes, function (n) {
        visited.push(n);
    });

    console.log(visited.join(', '));

})(require('./dfs.js'));

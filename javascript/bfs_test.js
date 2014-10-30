// To run: node bfs_test.js
(function (bfs) {

    'use strict';

    var nodes = {
         "1": [2, 3, 4],
         "2": [1, 5, 6],
         "3": [1],
         "4": [1, 7, 8],
         "5": [2, 9, 10],
         "6": [2],
         "7": [4, 11, 12],
         "8": [4],
         "9": [5],
        "10": [5],
        "11": [7],
        "12": [7]
    };

    var visited = [];
    bfs(1, nodes, function (n) {
        visited.push(n);
    });

    console.log(visited.join(', '));

})(require('./bfs.js'));

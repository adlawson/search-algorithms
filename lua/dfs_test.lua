-- To run: `lua dfs_test.lua`
local dfs = require("dfs")
local nodes = {
     [1] = {2, 7, 8},
     [2] = {1, 3, 6},
     [3] = {2, 4, 5},
     [4] = {3},
     [5] = {3},
     [6] = {2},
     [7] = {1},
     [8] = {1, 9, 12},
     [9] = {8, 10, 11},
    [10] = {9},
    [11] = {9},
    [12] = {8}
}

local visited = {};
dfs(1, nodes, function (n)
    table.insert(visited, n)
end)

print(table.concat(visited, ", "))

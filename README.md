# Search Algorithms
This is a series of exercises to help me improve my understanding of programming
languages, styles, and algorithms. It may also be useful to others for learning
or for reference.

## Algorithms
Each algorithm has a very simple test case that matches the basic diagrams shown
below. To run a test, see the head of the test file for instructions on how to
execute it.

If you'd like some help setting up a basic environment to run the test in, you
can download a Vagrant VM from [my Vagrantfiles repository][vagrantfiles].

```bash
cd erlang
curl -O https://raw.githubusercontent.com/adlawson/vagrantfiles/master/erlang/Vagrantfile
vagrant up && vagrant ssh
cd /srv
erlc bfs.erl
escript bfs_test.erl
```

<img src="http://upload.wikimedia.org/wikipedia/commons/1/1f/Depth-first-tree.svg" alt="Depth First Search" align="right" height="140"/>
### [Depth First Search][dfs]
Implementation as described by [Prof. Erik Demaine][demaine] in a
[recorded lecture][dfs-video] at MIT. The graph constructed in the test is
represented in the diagram shown on the right.

<img src="http://upload.wikimedia.org/wikipedia/commons/3/33/Breadth-first-tree.svg" alt="Breadth First Search" align="right" height="140"/>
### [Breadth First Search][bfs]
Implementation as described by [Prof. Erik Demaine][demaine] in a
[recorded lecture][bfs-video] at MIT. The graph constructed in the test is
represented in the diagram shown on the right.

## Implementations
| [Elixir][elixir] | [Erlang][erlang]   | [Golang][golang] | [JavaScript][js] | [Julia][julia]   | [Lua][lua]         | [Python][python] |
| ---------------- | ------------------ | ---------------- | ---------------- | ---------------- | ------------------ | ---------------- |
| [bfs.ex][bfs-ex] | [bfs.erl][bfs-erl] | [bfs.go][bfs-go] | [bfs.js][bfs-js] | [bfs.jl][bfs-jl] | [bfs.lua][bfs-lua] | [bfs.py][bfs-py] |
| [dfs.ex][dfs-ex] | [dfs.erl][dfs-erl] | [dfs.go][dfs-go] | [dfs.js][dfs-js] | [dfs.jl][dfs-jl] | [dfs.lua][dfs-lua] | [dfs.py][dfs-py] |

## License
```
The MIT License (MIT)

Copyright (c) 2014 Andrew Lawson <http://adlawson.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```

[vagrantfiles]: https://github.com/adlawson/vagrantfiles
[demaine]:      http://en.wikipedia.org/wiki/Erik_Demaine
[bfs]:          http://en.wikipedia.org/wiki/Breadth-first_search
[bfs-video]:    http://www.youtube.com/watch?v=s-CYnVz-uh4
[dfs]:          http://en.wikipedia.org/wiki/Depth-first_search
[dfs-video]:    http://www.youtube.com/watch?v=AfSk24UTFS8
[dfs-ex]:       elixir/dfs.ex
[dfs-erl]:      erlang/dfs.erl
[dfs-go]:       gloang/dfs.go
[dfs-js]:       javascript/dfs.js
[dfs-jl]:       julia/dfs.jl
[dfs-lua]:      lua/dfs.lua
[dfs-py]:       python/dfs.py
[bfs-ex]:       elixir/bfs.ex
[bfs-erl]:      erlang/bfs.erl
[bfs-go]:       gloang/bfs.go
[bfs-js]:       javascript/bfs.js
[bfs-jl]:       julia/bfs.jl
[bfs-lua]:      lua/bfs.lua
[bfs-py]:       python/bfs.py
[elixir]:       elixir
[erlang]:       erlang
[golang]:       golang
[js]:           javascript
[julia]:        julia
[lua]:          lua
[python]:       python

# Game of Life

This is a turn-by-turn framework for game of life. The code in
[`instructions.rb`](./instructions.rb) should be edited to return the
appropriate value for each cell in the game of life.

The turn iterates through each of the cells in the grid that is given in
`data/in.txt`. The game is advanced by issuing

`$ ./game play`

at the command line. The output can be viewed in `data/out.txt`. Then, issue

`$ ./game reset`

to copy `data/out.txt` -> `data/in.txt` and erase `data/out.txt`.

## Rules

1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by over-population.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## Data

The data can be any space and newline separated grid of integers, although it is
recommended to use `1` for **alive** and `0` for **dead**. See
[`data/sample.txt`](./data/sample.txt) for an example. 

## Presentation

This is designed as a simple classroom demonstration. Opening `data/in.txt` and
`data/out.txt` in a reloading editor (ie Sublime, gvim, etc) will function as a
primitive GUI, allowing the visualization of changes.

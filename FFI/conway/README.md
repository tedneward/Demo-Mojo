# Conway's Game of Life

This is an implementation of one of Mojo's examples, Conway's Game of Life

To make this work, you must have a Pixifile that has both modular, Python, and pygame
in it. In this directory, that's already done for you:

```
$ pixi init .
$ pixi add modular
$ pixi add "python>=3.11,<3.13" "pygame>=2.6.1,<3"
```

To run this, use `pixi run mojo life.mojo`.

There are two different implementations of the Grid in Mojo; one (gridv1) 
uses a `List[List[Int]]`, which is not the world's most efficient implementation.
The other (gridv2) makes the Grid look more like a native type as a two-dimensional
array of byte values and works with the block of memory directly using
pointer arithmetic. Flipping between the two requires finding the two places in the
`life.mojo` code (one in the `imports`, one at the bottom of the file where the Grid
is instantiated inside `main()`) and commenting out the V1 and uncommenting the V2
lines.


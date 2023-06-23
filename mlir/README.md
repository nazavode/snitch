# MLIR for Snitch

Tools to build MLIR and LLVM IR sources for Snitch, and run them via Verilator.

* [`runtime/`](runtime/) - runtime support for specific dialects (e.g.: [`vector.print`](https://mlir.llvm.org/docs/Dialects/Vector/#vectorprint-vectorprintop))
* [GNU Make rules](Makefile.rules) to compile and link a mix of `.c` and `.ll` sources down to ELF static binaries

## Prerequisites

Build tools in this folder assume that the following prerequisites are satisfied:

1. The [Snitch runtime](/sw/snRuntime/) has been built for Verilator (a.k.a. *cluster*)
2. The [Verilator model](/hw/system/snitch_cluster/) has been built

## How To (via Docker image)

```shell
$ docker run -v <repo>:/src -ti ghcr.io/pulp-platform/snitch bash
# In container:
$ cd /src/mlir/example/echo
$ make run
```

**Note:** if the repository mount point is not `/src`, make sure to tell the Make rules about it:

```shell
$ make run \
  SNITCH_RUNTIME_SRC=/mymountpoint/sw/snRuntime \
  SNITCH_RUNTIME_LIB=/mymountpoint/sw/snRuntime/build/snRuntime-cluster.a
```

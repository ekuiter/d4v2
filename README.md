# d4 project

*This version of d4 can also be compiled on Apple Silicon Macs. Se also [here](https://github.com/SoftVarE-Group/d4v2/tree/mt-kahypar) for a Nix version.*

In order to compile the project cmake (version>=3.1) and ninja have to
be installed. The following command lines then build and compile the
project as a static executable.

## Linux

```
./build.sh -s
```

The executable is called d4 and is in the build repository.

```
./build/d4 -h
```

## Linux/macOS/Windows (Docker)

```
docker build -t d4 .
docker run --rm -v some_file.cnf:/input d4 -i /input -m counting
```

Quick alias (can be added to `.bashrc`):

```
d4() { docker run --rm -v ./$:/input d4 -i /input -m counting }
```
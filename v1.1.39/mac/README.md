
## macOS binaries

These binaries were created via
[buildScript.sh](https://github.com/x13org/x13prebuilt/tree/master/osx/buildScript.sh)
in this directory. It downloads the tarball, expands it and
calls `make`. 

On macOS, static linking is not possible. In order to build a portable
application, we removed the `-static` flag from the makefile and included the
needed Fortran libraries in the tarball, then changed the path with Apple's
`install_name_tool`. This procedure has been suggested by Allin Cottrell and was
applied before in [Gretl](http://gretl.sourceforge.net/mac-intel-quartz.html).
Many thanks!

The binaries were created on macOS 10.12.4 Sierra with 
[gfortran 6.3](https://gcc.gnu.org/wiki/GFortranBinaries).

### Author

Christoph Sax

### Additional License Information

The macOS tarball contains gfortran libraries licensed under GPL-3.


#LIB.SH
Implementing LIBC for bash, purely in bash.

#FAQ
Q: But... why?
A: Why not?

Q: Really. Why?
A: I was bored. :/

#REQUIREMENTS
So far, the only necessary packages are `bash` and `bc` for mathematical functions.

#HOWTO
Simply include the desired file via `source srd/stdlib.h && source src/file.sh`. To include all, add `source lib.sh` to your script.

Since bash/sh does not have C-style returns, every return value is saved in the $RETVAL variable.

#LICENSE
This is available under the GPLv3.0. See License.txt for more info

https://en.wikipedia.org/wiki/C_standard_library

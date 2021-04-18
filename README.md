#LIB.SH
Implementing LIBC for bash, purely in bash.

#HOWTO
Simply include the desired file via `source src/file.sh`. To include all, add `source lib.sh` to your script.

Since bash/sh does not have C-style returns, every return value is saved in the $RETVAL variable.

#LICENSE
This is available under the GPLv3.0. See License.txt for more info

https://en.wikipedia.org/wiki/C_standard_library

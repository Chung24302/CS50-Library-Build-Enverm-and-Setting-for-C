# CS50-Library-Build-Enverm-and-Setting-for-C

### Install packages
Install make, if you Not installed it.
```bash
sudo apt install make
```
Install clang
```bash
sudo apt install clang
```

### Setting argument
Edit `~/.bashrc` or `~/.zshrc` and enter these arguments [[2]](https://cs50.readthedocs.io/libraries/cs50/c/) at the file end.

```bash
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
```
### Building CS50 Library from source
Get source code form github and build it.
```bash
git clone https://github.com/cs50/libcs50.git
cd libcs50/
sudo make install
```
By default, we install to `/usr/local`.
If you'd like to change the installation location, run `sudo DESTDIR=/path/to/install make install` as desired. [[1]](https://github.com/cs50/libcs50)

### Troubleshooting
Error 1:
```
src/cs50.c:41:10: fatal error: 'ctype.h' file not found.
```

Solution:
I think I don't have C library  in my system, just install gcc library  to fix it.
```
sudo apt install gcc
```

### Reference

[CS50's github](https://github.com/cs50/libcs50)

[CS50's Doc](https://cs50.readthedocs.io/libraries/cs50/c/)

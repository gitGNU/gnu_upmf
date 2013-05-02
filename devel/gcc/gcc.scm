'((type         . draft)
  (mode         . autotools)
  (name         . "gcc")
  (section      . "devel")
  (description  . "GNU Compiler Collection")
  (options      . "--enable-shared --enable-threads=posix --enable-__cxa_atexit --enable-clocale=gnu --enable-languages=c,c++ --disable-multilib --disable-bootstrap --disable-install-libiberty --with-system-zlib")
  (releases     . (("4.8.0" . "http://ftp.gnu.org/gnu/gcc/gcc-4.8.0/gcc-4.8.0.tar.bz2")))
  (install-info . #t)
  (pre-hook     . ("case `uname -m` in i?86) sed -i 's/^T_CFLAGS =$/& -fomit-frame-pointer/' gcc/Makefile.in ;; esac"
                   "sed -i 's/install_to_$(INSTALL_DEST) //' libiberty/Makefile.in"
                   "sed -i -e /autogen/d -e /check.sh/d fixincludes/Makefile.in"
                   "mv -v libmudflap/testsuite/libmudflap.c++/pass41-frag.cxx{,.disable}"))
  (autotools-settings . (dedicate-directory)))

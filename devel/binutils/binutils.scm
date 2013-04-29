'((type draft)
  (mode               . autotools)
  (name               . "binutils")
  (section            . "devel")
  (description        . "A linker, an assembler, and other tools for handling object files")
  (options            . "--enable-shared")
  (releases           . (("2.23.2" . "http://ftp.gnu.org/gnu/binutils/binutils-2.23.2.tar.bz2")))
  (autotools-settings . (dedicate-directory))
  (install-info       . #t)
  (pre-hook           . ("rm -fv etc/standards.info"
			 "sed -i.bak '/^INFO/s/standards.info //' etc/Makefile.in"
			 "sed -i -e 's/@colophon/@@colophon/' -e 's/doc@cygnus.com/doc@@cygnus.com/' bfd/doc/bfd.texinfo")))

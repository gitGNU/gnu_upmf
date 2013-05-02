'((type         . draft)
  (mode         . autotools)
  (name         . "ncurses")
  (section      . "libs")
  (description  . "Libraries for terminal-independent handling of character screens")
  (options      . "--with-shared --enable-pc-files --enable-widec")
  (releases     . (("5.9" . "ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz")))
  (post-hook    . ((string-append "mkdir -pv "
                                  package-prefix-2
                                  "/lib/pkgconfig")
                   (string-append "mv -v usr/lib/pkgconfig/*.pc "
                                  package-prefix-2
                                  "/lib/pkgconfig")
                   "rm -rv usr")))

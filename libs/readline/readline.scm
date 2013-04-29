'((type         . draft)
  (mode         . autotools)
  (name         . "readline")
  (section      . "libs")
  (description  . "A set of libraries that offers command-line editing and history capabilities")
  (options      . "")
  (releases     . (("6.2" . "http://ftp.gnu.org/gnu/readline/readline-6.2.tar.gz")))
  (install-info . #t)
  ;; Don't move old libraries to <libraryname>.old. This causes linking bugs sometimes.
  (pre-hook     . ("sed -i '/MV.*old/d' Makefile.in"
		   "sed -i '/{OLDSUFF}/c:' support/shlib-install"))
  (patches      . ((name . "readline-6.2-fixes-1")
		   (for-version . ("6.2")))))

'((type . draft)
  (mode . autotools)
  (name . "bash")
  (section . "shells")
  (description . "Bash is an sh-compatible shell that incorporates useful \
features from the Korn shell (ksh) and C shell (csh).")
  (options . "--without-bash-malloc \\
            --with-installed-readline")
  (releases . (("4.2" . "http://ftp.gnu.org/gnu/bash/bash-4.2.tar.gz")))
  (patches . (((name . "bash-4.2-fixes-11")
	       (for-version . ("4.2")))))
  (install-info . #t))

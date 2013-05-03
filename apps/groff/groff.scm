'((type         . draft)
  (mode         . autotools)
  (name         . "groff")
  (section      . "apps")
  (description  . "Programs for processing and formatting text")
  (options      . "")
  (releases     . (("1.22.2" . "http://ftp.gnu.org/gnu/groff/groff-1.22.2.tar.gz")))
  (install-info . #t)
  (post-hook    . ((string-append "ln -sv eqn "
                                  package-prefix-2
                                  "/bin/geqn")
                   (string-append "ln -sv tbl "
                                  package-prefix-2
                                  "/bin/gtbl"))))

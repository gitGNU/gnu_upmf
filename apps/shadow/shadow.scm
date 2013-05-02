'((type         . draft)
  (mode         . autotools)
  (name         . "shadow")
  (section      . "apps")
  (description  . "Programs for handling passwords in a secure way")
  (options      . "--sysconfdir=/etc")
  (releases     . (("4.1.5.1" . "http://pkg-shadow.alioth.debian.org/releases/shadow-4.1.5.1.tar.bz2")))
  (pre-hook     . ("sed -i 's/groups$(EXEEXT) //' src/Makefile.in"
                   "find man -name Makefile.in -exec sed -i 's/groups\.1 / /' {} \;"
                   "sed -i -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD SHA512@' \\
                           -e 's@/var/spool/mail@/var/mail@' etc/login.defs")))

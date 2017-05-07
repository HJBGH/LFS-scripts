#!bin/bash
#Library check script from Linux From Scratch, I didn't make this
for lib in lib{gmp,mpfr,mpc}.la; do
    echo $lib: $(if find /usr/lib* -name $lib|
        grep -q $lib;then :;else echo not;fi) found
done
unset lib


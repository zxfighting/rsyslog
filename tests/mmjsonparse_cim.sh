# added 2014-07-15 by rgerhards
# This file is part of the rsyslog project, released under ASL 2.0
echo ===============================================================================
echo \[mmjsonparse_cim.sh\]: basic test for mmjsonparse module with "cim" cookie
source $srcdir/diag.sh init
source $srcdir/diag.sh startup mmjsonparse_cim.conf
source $srcdir/diag.sh tcpflood -m 5000 -j "@cim: "
echo doing shutdown
source $srcdir/diag.sh shutdown-when-empty
echo wait on shutdown
source $srcdir/diag.sh wait-shutdown 
source $srcdir/diag.sh seq-check  0 4999
source $srcdir/diag.sh exit

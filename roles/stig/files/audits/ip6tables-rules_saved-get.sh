source /tmp/lib.sh

if is_active 'firewalld'; then exit $SKIP; fi
if is_active 'nftables'; then exit $SKIP; fi
if is_not_installed 'ip6tables'; then exit $SKIP; fi
exit $REV

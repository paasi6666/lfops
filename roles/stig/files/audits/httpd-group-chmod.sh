source /tmp/lib.sh
source /tmp/lib-apache-httpd.sh

audit_lines=$(find -L $APACHE_PREFIX \! -type l -perm /g=w -ls)
if [ -n "$audit_lines" ]; then
    echo files in the Apache directory with group write access
    echo -----------------------------------------------------
    echo ''
    echo "$audit_lines"
    echo ''
    exit $FAIL
fi
exit $PASS

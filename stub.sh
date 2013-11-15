#!/bin/sh
self=`which "$0" 2>/dev/null`
test $? != 0 -a -f "$0" && self="./$0"
test "$OSTYPE" = cygwin && self="$(cygpath -am "$self")"
java=java
test -n "$JAVA_HOME" && java="$JAVA_HOME/bin/java"
exec "$java" $JAVA_OPTS -jar $self "$@"
exit 1

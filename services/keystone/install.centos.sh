#!/bin/bash

CURRENT_DIR="${BASH_SOURCE%/*}"

## CONSTANTS
KEYSTONE_SQL_INSTALL="$CURRENT_DIR/support/install.sql"

log "Installing Keystone module" ":h1"

log "Processing keystone install sql file" ":u"

proccesed_sql=``

echo -e "$proccesed_sql"

read_file "$KEYSTONE_SQL_INSTALL"  | m4 -DKEYSTONE_DBPASS=$KEYSTONE_DBPASS | mysql -u root -p$MYSQL_ROOT_PASS


log "Installing Keystone Package" ":h2"
yum -y -q install openstack-keystone python-keystoneclient
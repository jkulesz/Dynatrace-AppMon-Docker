#!/bin/bash
INSTALLER_URL="$1"
INSTALLER_FILE_NAME=`basename ${INSTALLER_URL}`

cd /tmp
curl --insecure -L -O ${INSTALLER_URL}
tar -xf ./${INSTALLER_FILE_NAME}
sh ./dynatrace-wsagent-*.sh
cp -R ./dynatrace-${VERSION}/* ${DT_HOME}
rm -rf /tmp/*
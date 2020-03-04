#!/bin/bash

ACMD_COMMIT=$(cat go.mod | \
        grep github.com/Actinium-project/acmd | \
        tail -n1 | \
        awk -F " " '{ print $2 }' | \
        awk -F "/" '{ print $1 }')
echo "Fetching acmd at $ACMD_COMMIT"

pushd /tmp
GO111MODULE=on go get -v github.com/Actinium-project/acmd@$ACMD_COMMIT
popd

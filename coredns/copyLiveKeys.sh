#!/bin/bash

# If your keys are generated somewhere else, like by another server that auto gens the keys, create symlinks to the cert and private key
# and add a cron job. Ex: cron to run weekly, midnight on sundays 0 0 * * 0

DIR=`dirname "$0"`

cp "$DIR/cert.pem.softlink" "$DIR/cert.pem"
cp "$DIR/key.pem.softlink" "$DIR/key.pem"

echo Copied cert keys

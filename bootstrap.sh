#!/bin/bash
export DISCOURSE_HOSTNAME=$WEDEPLOY_SERVICE_ID-$WEDEPLOY_PROJECT_ID.$WEDEPLOY_SERVICE_DOMAIN
/pups/bin/pups app.yml
/sbin/boot
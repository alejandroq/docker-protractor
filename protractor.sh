#!/usr/bin/env bash -e
#
# MAINTAINED BY: alejandro.quesada@icf.com
#
# This script runs selenium based e2e tests in a Docker Container.
#
uid=$(stat -c %u ${PWD})
gid=$(stat -c %g ${PWD})

groupadd -o -g $gid protractor
useradd -m -o -u $uid -g $gid protractor

# Chrome, starting with version 56, refuses to run when launched by root.
# Therefore, we need to run it as a regular user, taking care
# to set the uid and gid of that user to match those of the current directory owner.
# Otherwise protractor could experience problems reading files from the current directory.
#  below will require --net=host to run protractor locally or special command to run else where.
# sudo -u protractor xvfb-run --server-args="-screen 0 ${SCREEN_RES}" -a protractor $@
webdriver-manager start --detach &
sleep 4
# replace config with your protractor json
sudo -u protractor xvfb-run --server-args="-screen 0 ${SCREEN_RES}" -a protractor ./config.json
#!/bin/sh

ssh kirei@122.248.32.237 <<EOF
 cd ~/projects/express-jenkins-testing
 git pull
 npm install --production
 pm2 restart all
 exit
EOF
#!/bin/sh

ssh kirei@122.248.32.237 <<EOF
 cd ~/projects/express-jenkins-testing
 git pull
 npm install --production
 npm i -g pm2
 export BUILD_ID=dontKillMePlease
 pm2 startOrRestart ecosystem.config.js
 pm2 save
 exit
EOF
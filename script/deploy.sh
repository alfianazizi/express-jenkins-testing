#!/bin/sh

ssh kirei@122.248.32.237 <<EOF
 whoami
 cd ~/projects/express-jenkins-testing
 pwd
 git pull
 npm install --production
 /home/kirei/.nvm/versions/node/v12.18.3/bin/pm2 startOrRestart ecosystem.config.js
 /home/kirei/.nvm/versions/node/v12.18.3/bin/pm2 save
 exit
EOF
#!/bin/bash
GIT_USER_NAME=$(grep 'name = ' /home/user/.gitconfig | sed 's/^.*= //')
GIT_USER_EMAIL=$(grep 'email = ' /home/user/.gitconfig | sed 's/^.*= //')
sqitch config --user engine.mysql.client /usr/local/mysql/bin/mysql
sqitch config --user user.name "${GIT_USER_NAME}"
sqitch config --user user.email "${GIT_USER_EMAIL}"
sqitch deploy -t "${ENV_NAME}"
#!/bin/bash
# set timeout 10

sudo apt update

sudo apt -y upgrade

inform_human 'Step 1: Update system'

sudo apt update

inform_human 'Step 2: Add Node.js APT Repository'

sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

inform_human 'Step 3: Install Node.js 12 on Ubuntu / Debian / Linux Mint'

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

inform_human 'You can as well install development tools used to build native addons:'

sudo apt -y install nodejs

sudo apt -y  install gcc g++ make

inform_human 'Postgres Installation'

inform_human 'Step 1: Update system first'

sudo apt update

sudo apt -y install vim bash-completion wget

sudo apt -y upgrade

inform_human 'Step 2: Add PostgreSQL 12 repository'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

inform_human 'After importing GPG key, add repository contents to your Ubuntu 18.04/16.04 system:'

echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list

inform_human 'Step 3: Install PostgreSQL 12 on Ubuntu 20.04/18.04/16.04 LTS'

sudo apt update

sudo apt -y install postgresql-12 postgresql-client-12

inform_human 'Step 4: Test PostgreSQL Connection'





#!/usr/bin/env sh

echo "Installing Librarian-Chef"
command -v librarian-chef > /dev/null || /usr/bin/env gem install librarian --no-ri --no-rdoc --no-user-install

echo "Running Librarian-Chef"
cd /vagrant
librarian-chef install --path=$1
echo "*.*" > "$1/.gitignore"
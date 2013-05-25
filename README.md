Bootstrap-Env
========================

A Vagrant + Chef Solo based development workstation bootstrapper.
An Ubuntu-12.04 provisionerless box provided by opscode is used for bootstrapping.

#### pre-requisites ####
```
   # install virtual-box or vmware as a vagrant provider.

   # install vagrant 1.2.x
   $ wget http://downloads.vagrantup.com/
   $ vagrant plugin install vagrant-vbguest
   $ vagrant plugin install vagrant-omnibus

   # chef gems for vagrant vm provisoning.
   $ gem install chef
   $ gem install librarian-chef
```

#### bootstrap vm ####
```
   $ librarian-chef install
   $ vagrant up
```

#### adding packages ####
- few packages are added to base/ developer roles.
- to be updated.

#### customize shell environment ####
- configure-shell.sh  
- configure-emacs.sh
- configure-dotfiles.sh
- install-packages.sh


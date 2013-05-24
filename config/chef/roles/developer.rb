name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
 role[base]
 recipe[apt]
 recipe[htop]
 recipe[curl]
 recipe[emacs]

 recipe[mysql::client]
 recipe[mysql::server]

 recipe[java]
 recipe[build-essential]

 recipe[git]
 recipe[subversion]

 recipe[maven]
)

default_attributes(
 :java => {
   :install_flavor => "oracle",
   :oracle => {
     "accept_oracle_download_terms" => true
   }
 },
 :authorization => {
   :sudo => {
     :users => %w(csharma),
     :groups => %w(admin wheel sysadmin),
     :passwordless => true
   }
 },
 :maven => {
   :version => 3,
   :steup_bin => true
 },
 :mysql => {
   :server_repl_password => "123",
   :server_root_password => "123",
   :server_debian_password => "123"
 }
)
override_attributes(
 :users => "csharma"
)

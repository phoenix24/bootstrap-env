name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
 role[base]
 recipe[apt]
 recipe[htop]
 recipe[curl]
 recipe[emacs]
 recipe[mysql]

 recipe[java]
 recipe[build-essential]

 recipe[git]
 recipe[subversion]

 recipe[maven]
)

default_attributes(
 :java => {
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
 }
)
override_attributes(
 :users => "csharma"
)

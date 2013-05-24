name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
 role[base]
 recipe[apt]

 recipe[emacs]

 recipe[git]
 recipe[build-essential]
)

default_attributes(
 :java => {
   :install_flavor => "oracle",
   :jdk_version => "7",
   :oracle => {
     "accept_oracle_download_terms" => true
   }
 },
 :python => {
   :install_method => "pip"
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

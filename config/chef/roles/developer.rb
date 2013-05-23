name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
 role[base]
 recipe[apt]
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
 }
)
override_attributes(
 :users => "csharma"
)

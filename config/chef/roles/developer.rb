name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
	role[base]
)

default_attributes(
 :mysql => {
   :server_root_password => "pass-1-5-6-woo",
   :server_repl_password => "pass-1-5-6-bar",
   :server_debian_password => "pass-1-5-6-hoo"
 },
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

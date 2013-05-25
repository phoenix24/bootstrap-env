name "base"
description "Base role applied to all machines"

run_list %w(
 recipe[user::data_bag]
 recipe[sudo]
)

default_attributes(
 :authorization => {
   :sudo => {
     :users => %w(csharma vagrant),
     :groups => %w(admin wheel sysadmin),
     :passwordless => true
   }
 }
)

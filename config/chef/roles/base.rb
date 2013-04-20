name "base"
description "Base role applied to all machines"

run_list %w(
 recipe[users::sysadmins]
 recipe[user::data_bag]
 recipe[sudo]
)

default_attributes(
 :authorization => {
   :sudo => {
     :users => %w(csharma),
     :groups => %w(admin wheel sysadmin),
     :passwordless => true
   }
 }
)

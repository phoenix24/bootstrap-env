name "developer"
description "Role for combined Development Box, used for Developer VMs"

run_list %w(
	role[base]
	recipe[git]
	recipe[vim]
	recipe[emacs]
	recipe[apache2]
	recipe[mysql::server]
	recipe[build-essential]
)

default_attributes(
	:mysql => {
		:server_root_password => "pass-1-5-6-woo",
		:server_repl_password => "pass-1-5-6-bar",
		:server_debian_password => "pass-1-5-6-hoo"
	},
	:authorization => {
		:sudo => {
			:users => %w(csharma developer ubuntu),
			:passwordless => true
		}
	}
)

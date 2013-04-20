name "base"
description "Base role applied to all machines"
run_list(
	"recipe[users::sysadmins]",
	"recipe[sudo]",
	"recipe[apt]"
)

default_attributes(
	:authorization => {
		:sudo => {
			:users => %w(csharma),
			:passwordless => true
		}
	}
)

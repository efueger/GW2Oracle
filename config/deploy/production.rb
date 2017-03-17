server 'gw2.sleiarion.net', user: 'gw2', roles: %w{app db web}

set :ssh_options, {
		keys: %w(~/.ssh/id_rsa),
		forward_agent: false,
		auth_methods: %w(publickey)
}

fx_version 'cerulean'
game 'gta5'

name "wex_beanmachine"
description "Bean Machine"
author "Tobix"
version "1.0.0"
lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'shared/*.lua',
	'locales/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

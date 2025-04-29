fx_version 'cerulean'
game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Star Studios'
description 'Universal Development Framework for RedM'
version '1.0.0'

shared_scripts {
    'star.lua',
    'config.lua'
}

server_scripts {
    'framework/init.lua',
    'inventory/init.lua',
    'notifications/init.lua',

    'modules/animations.lua',

    'server/utils.lua',
    'server/commands.lua',
    'server/debug.lua'
}

client_scripts {
    'client/utils.lua',
    'client/debug.lua'
}
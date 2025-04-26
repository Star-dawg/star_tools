fx_version 'cerulean'
game 'rdr3'

author 'Star Studios'
description 'Star Tools - Cross-framework dev toolkit for RedM'
version '1.0.0'

server_scripts {
    'config.lua',
    'server/bridge.lua',
    'server/player.lua',
    'server/inventory.lua',
    'server/money.lua',
    'server/events.lua',
}

client_scripts {
    'client/notify.lua',
    'client/animation.lua',
    'client/ui.lua',
    'client/menu.lua',
    'client/bridge.lua',
}

provide 'star'

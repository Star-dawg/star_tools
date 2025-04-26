# Star Tools

Star Tools is a lightweight, cross-framework development toolkit for RedM.

## Features
- Unified item/money/player/event wrappers
- Notification, animation, menu, and UI abstractions
- Works with VORP, RedEM:RP, QBR, RSG

## Installation
1. Clone or download this repo into your server's resources folder
2. Add `start star_tools` to your server.cfg
3. Set your framework in `config.lua`

## Usage
### Server
```lua
local star = exports.star_tools:star()
star.addItem(source, "whiskey", 1)
```

### Client
```lua
star.sendNotification("Hello!", "info", 4000)
star.openMenu("Menu Title", { ... })
```

MIT License

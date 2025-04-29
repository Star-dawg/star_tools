# ⭐ StarTools - Universal Framework Dev Kit for RedM

StarTools is a modular, dynamic development toolkit designed to work seamlessly with any major RedM framework and inventory/notification system.

---

## ✨ Features

- ✅ **Framework auto-detection**: VORP, RSG, RedM:RP, QBCore, Custom
- ✅ **Inventory integration**: VORP Inventory, RSG Inventory, QBCore, RedM:RP, Custom
- ✅ **Notification bridge**: Supports VORP, RSG, RedM:RP, ox_lib, jo_lib, and custom fallback
- ✅ **Unified star API**: Write scripts once, use on any framework
- ✅ **Client + Server bridge support**
- ✅ **Modules**: Animations, Notifications
- ✅ **Debug mode**: Enables detailed bridge load logs
- ✅ **Test Commands**:
  - `/star_test` – shows detected framework/inventory, tests player data & money
  - `/star_notifytest` – triggers various notification types using the active system

---

## 🗂️ Folder Structure

```
star_tools/
├── framework/        ← framework-specific logic (client/server)
├── inventory/        ← inventory bridge files (server)
├── notifications/    ← notification systems (client/server)
├── modules/          ← shared logic: animations, notifications
├── server/           ← server utils, test commands
├── client/           ← client utils
├── shared/           ← shared constants, utils
├── star.lua          ← global shared object
├── config.lua        ← config options
├── fxmanifest.lua
```

---

## ⚙️ Installation

1. Place `star_tools` inside your server's `resources/` folder.
2. Add this line to your `server.cfg`:
   ```
   ensure star_tools
   ```
3. Start your server. If `Config.Debug = true`, you’ll see which bridge modules were loaded.

---

## 🔧 Config (in `config.lua`)

```lua
Config = {}

-- Set your framework manually or use "auto"
Config.Framework = "auto"

-- Enable or disable console bridge logs
Config.Debug = true
```

---

## 🧠 API Example

```lua
-- Get player data
local data = star.getPlayerData(source)

-- Add/remove currency
star.addMoney(source, 100)
star.removeMoney(source, 20)

-- Add inventory item (if inventory system supports it)
star.addInventoryItem(source, "bread", 1)

-- Send notifications
star.notifyLeft(source, "Welcome", "You joined the server", "generic_textures", "tick", 4000, "COLOR_WHITE")

-- Trigger animation (client)
star.playAnimation('amb_work@world_human_hammering@male_a@idle_a', 'idle_a')
```

---

## 🧪 Commands

### `/star_test`
- Logs full player data (from your framework)
- Adds money and item (if supported)
- Confirms inventory and framework bridges are working

### `/star_notifytest`
- Sends:
  - NotifyLeft
  - NotifyTip
  - NotifyCenter
  - NotifyObjective
  - NotifySimpleTop

✅ Uses whatever notification system is detected.

---

## 🛠 Frameworks Supported

- [x] **VORP** (`vorp_core`)
- [x] **RSG** (`rsg_core`)
- [x] **RedM:RP** (`redem_roleplay`)
- [x] **QBCore** (`qb-core`)
- [x] **Custom** (fallback logic with debug messages)

---

## 📦 Notifications Supported

- [x] `ox_lib` (client + server via event)
- [x] `jo_lib` (client)
- [x] `vorp_core` (client + server)
- [x] `rsg_core` (client + server)
- [x] `redem_roleplay` (fallback via chat message)
- [x] Custom (prints to console)

---

## 🔍 How Detection Works

Each `init.lua` dynamically detects active resources at runtime:

- `framework/init.lua`: detects active framework
- `inventory/init.lua`: loads inventory bridge for that framework
- `notifications/init.lua`: detects ox_lib, jo_lib, vorp, rsg, redmrp, or fallback

Each bridge file implements the `star.` functions for consistency.

---

## 💡 Tip

All code is namespaced via `star.` so you can plug it into any of your scripts without conflicts.

Example:
```lua
if star.getJob then
    print("Player job: " .. star.getJob(source))
end
```

---

## ✅ Ready to Use

You can now use `star_tools` as a base for:
- universal job menus
- inventory-based shops
- framework-agnostic UI systems
- and more...

---

Created with love for devs who want to write clean, flexible code.  
Happy scripting!

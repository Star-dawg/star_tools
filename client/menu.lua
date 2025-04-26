local menu = {}

local UseOxLib = GetResourceState("ox_lib") == "started"

function menu.openMenu(title, options)
    if UseOxLib then
        local elements = {}
        for _, option in ipairs(options) do
            elements[#elements+1] = {
                title = option.label,
                description = option.description or "",
                icon = option.icon or "",
                args = option.args or {},
                event = option.event,
            }
        end
        lib.registerContext({
            id = title:lower():gsub("%s+", "_"),
            title = title,
            options = elements
        })
        lib.showContext(title:lower():gsub("%s+", "_"))
    elseif Config.Framework == "QBR" then
        exports["qbr_menu"]:openMenu({ header = title, menu = options })
    elseif Config.Framework == "REDM" then
        exports["redemrp_menu"]:open(title, options)
    end
end

RegisterNetEvent("star:openMenu", function(title, options)
    menu.openMenu(title, options)
end)

return menu

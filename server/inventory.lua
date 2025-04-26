local Framework = Config.Framework
local inventory = {}

function inventory.addItem(source, item, amount)
    if Framework == "QBR" then
        exports.ox_inventory:AddItem(source, item, amount)
    end
end

function inventory.removeItem(source, item, amount)
    if Framework == "QBR" then
        exports.ox_inventory:RemoveItem(source, item, amount)
    end
end

return inventory

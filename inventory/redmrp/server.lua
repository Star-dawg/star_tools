-- RedM:RP Inventory Server Bridge

function star.addItem(source, item, count)
    TriggerEvent("redemrp_inventory:addItem", source, item, count or 1)
end

function star.removeItem(source, item, count)
    TriggerEvent("redemrp_inventory:removeItem", source, item, count or 1)
end

function star.giveWeapon(source, weaponName, ammo)
    TriggerEvent("redemrp_inventory:addWeapon", source, weaponName, ammo or 10)
end

function star.removeWeapon(source, weaponName)
    TriggerEvent("redemrp_inventory:removeWeapon", source, weaponName)
end

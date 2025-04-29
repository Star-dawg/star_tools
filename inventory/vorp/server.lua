-- VORP Inventory Server Bridge

function star.addItem(source, itemName, count)
    exports.vorp_inventory:addItem(source, itemName, count or 1)
end

function star.removeItem(source, itemName, count)
    exports.vorp_inventory:subItem(source, itemName, count or 1)
end

function star.giveWeapon(source, weaponName, ammo)
    exports.vorp_inventory:addWeapon(source, weaponName, ammo or 10)
end

function star.removeWeapon(source, weaponName)
    exports.vorp_inventory:removeWeapon(source, weaponName)
end

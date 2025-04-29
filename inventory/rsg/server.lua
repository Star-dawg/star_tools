-- RSG Inventory Server Bridge
function star.addItem(source, itemName, amount)
    exports.rsg_core:AddItem(source, itemName, amount or 1)
end

function star.removeItem(source, itemName, amount)
    exports.rsg_core:RemoveItem(source, itemName, amount or 1)
end

function star.giveWeapon(source, weaponName, ammo)
    exports.rsg_core:AddWeapon(source, weaponName, ammo or 10)
end

function star.removeWeapon(source, weaponName)
    exports.rsg_core:RemoveWeapon(source, weaponName)
end

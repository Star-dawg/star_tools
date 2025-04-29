-- Custom Inventory Server Bridge
function star.addItem(source, item, count)
    print("[StarTools] addInventoryItem called: " .. item .. " x" .. (count or 1))
end

function star.removeyItem(source, item, count)
    print("[StarTools] removeInventoryItem called: " .. item .. " x" .. (count or 1))
end

function star.giveWeapon(source, weaponName, ammo)
    print("[StarTools] giveWeapon called: " .. weaponName)
end

function star.removeWeapon(source, weaponName)
    print("[StarTools] removeWeapon called: " .. weaponName)
end

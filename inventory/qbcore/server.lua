-- QBCore Inventory Server Bridge
local QBCore = exports['qb-core']:GetCoreObject()

function star.addItem(source, item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.AddItem(item, count or 1)
    end
end

function star.removeItem(source, item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.RemoveItem(item, count or 1)
    end
end

function star.giveWeapon(source, weaponName, ammo)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.AddItem(weaponName, 1)
    end
end

function star.removeWeapon(source, weaponName)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        Player.Functions.RemoveItem(weaponName, 1)
    end
end

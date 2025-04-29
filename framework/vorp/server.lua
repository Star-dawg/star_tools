-- VORP Framework Server Bridge
local Core = exports.vorp_core:GetCore()

function star.getPlayerData(source)
    local user = Core.getUser(source)
    if not user then return {} end

    local character = user.getUsedCharacter
    if not character then return {} end

    return {
        identifier = character.identifier,
        charIdentifier = character.charIdentifier,
        group = character.group,
        job = character.job,
        jobGrade = character.jobGrade,
        jobLabel = character.jobLabel,
        money = character.money,
        gold = character.gold,
        rol = character.rol,
        xp = character.xp,
        firstname = character.firstname,
        lastname = character.lastname,
        status = character.status,
        coords = character.coords,
        isDead = character.isdead,
        age = character.age,
        gender = character.gender,
        charDescription = character.charDescription,
        nickname = character.nickname,
        invCapacity = character.invCapacity,
        skills = character.skills
    }
end

function star.addMoney(source, amount)
    local user = Core.getUser(source)
    if not user then return end
    local character = user.getUsedCharacter
    if not character then return end
    character.addCurrency(0, amount)
end

function star.removeMoney(source, amount)
    local user = Core.getUser(source)
    if not user then return end
    local character = user.getUsedCharacter
    if not character then return end
    character.removeCurrency(0, amount)
end

function star.addGold(source, amount)
    local user = Core.getUser(source)
    if not user then return end
    local character = user.getUsedCharacter
    if not character then return end
    character.addCurrency(1, amount)
end

function star.removeGold(source, amount)
    local user = Core.getUser(source)
    if not user then return end
    local character = user.getUsedCharacter
    if not character then return end
    character.removeCurrency(1, amount)
end

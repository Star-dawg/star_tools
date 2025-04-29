CreateThread(function()
    if Config.Framework ~= "auto" then
        star.Framework = Config.Framework
    else
        if GetResourceState('vorp_core') == 'started' then
            star.Framework = "vorp"
        elseif GetResourceState('rsg_core') == 'started' then
            star.Framework = "rsg"
        elseif GetResourceState('redem_roleplay') == 'started' then
            star.Framework = "redmrp"
        elseif GetResourceState('qb-core') == 'started' then
            star.Framework = "qbcore"
        else
            star.Framework = "custom"
        end
    end

    local file = ("framework/%s/%s.lua"):format(star.Framework, IsDuplicityVersion() and "server" or "client")
    local code = LoadResourceFile(GetCurrentResourceName(), file)
    if code then
        assert(load(code))()
        print("[StarTools] Loaded Framework: " .. star.Framework)
    else
        print("[StarTools] Failed to load framework bridge:", file)
    end
end)

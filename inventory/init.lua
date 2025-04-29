CreateThread(function()
    local framework = star.Framework or Config.Framework or "custom"
    local file = ("inventory/%s/server.lua"):format(framework)

    local code = LoadResourceFile(GetCurrentResourceName(), file)
    if code then
        assert(load(code))()
        print("[StarTools] Loaded Inventory Bridge: " .. framework)
    else
        print("[StarTools] Failed to load inventory bridge:", file)
    end
end)

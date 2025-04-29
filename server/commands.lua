-- StarTools Debug Commands

RegisterCommand("star_test", function(source)
    local data = star.getPlayerData(source)
    print("[StarTools] getPlayerData result:")
    print(json.encode(data))

    star.addMoney(source, 5)
    star.removeMoney(source, 2)

    if star.addItem then
        star.addItem(source, "a_c_fishbluegil_01_ms", 1)
    end
end, true)

RegisterCommand("star_notifytest", function(source)
    -- Make sure to test all major styles
    star.notifyLeft(source, "StarTools Test", "NotifyLeft", "generic_textures", "tick", 4000, "COLOR_WHITE")
    star.notifyTip(source, "StarTools Tip", "Notification", 4000)
    star.notifyCenter(source, "StarTools Center", 4000)
    star.notifyObjective(source, "StarTools Objective", 4000)
    star.notifySimpleTop(source, "StarTools SimpleTop", "Subtitle", 4000)
end, true)

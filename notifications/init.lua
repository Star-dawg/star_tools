CreateThread(function()
    local notif

    if GetResourceState('ox_lib') == 'started' then
        notif = "ox_lib"
    elseif GetResourceState('jo_lib') == 'started' then
        notif = "jo_lib"
    elseif GetResourceState('vorp_core') == 'started' then
        notif = "vorp"
    elseif GetResourceState('rsg_core') == 'started' then
        notif = "rsg"
    elseif GetResourceState('redem_roleplay') == 'started' then
        notif = "redmrp"
    else
        notif = "custom"
    end

    star.NotificationSystem = notif

    local file = ("notifications/%s/%s.lua"):format(notif, IsDuplicityVersion() and "server" or "client")
    local code = LoadResourceFile(GetCurrentResourceName(), file)
    if code then
        assert(load(code))()
        print("[StarTools] Notification system set to:", notif)
    else
        print("[StarTools] Failed to load notification bridge:", file)
    end
end)

local animation = {}

function animation.playAnim(dict, name, duration, flag)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(10) end
    TaskPlayAnim(PlayerPedId(), dict, name, 8.0, -8.0, duration or -1, flag or 1, 0, false, false, false)
end

function animation.clearAnim()
    ClearPedTasks(PlayerPedId())
end

RegisterNetEvent("star:playAnim", function(dict, name, duration, flag)
    animation.playAnim(dict, name, duration, flag)
end)

RegisterNetEvent("star:clearAnim", function()
    animation.clearAnim()
end)

return animation

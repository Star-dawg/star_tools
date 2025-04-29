function star.playAnimation(animDict, animName)
    local playerPed = PlayerPedId()
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(10)
    end
    TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, -1, 0, 0, false, false, false)
end

function star.clearAnimations()
    ClearPedTasks(PlayerPedId())
end

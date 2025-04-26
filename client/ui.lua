local ui = {}

function ui.progressBar(text, time)
    if Config.Framework == "QBR" then
        exports["qbr_progressbar"]:Progress({name = "star_tools", duration = time, label = text})
    elseif Config.Framework == "REDM" then
        exports["redemrp_progressbar"]:startProgressBar(text, time)
    end
end

function ui.promptInput(title, default)
    if Config.Framework == "QBR" then
        return exports["qbr_input"]:GetInput({title = title, default = default or ""})
    end
end

RegisterNetEvent("star:progressBar", function(text, time)
    ui.progressBar(text, time)
end)

return ui

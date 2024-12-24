
function notify(text, type)
    if WEX.NotifyType == "ox" then
        if type == "succes" then
        lib.notify({
            title = WEX.NotifyTtile,
            description = text,
            type = 'success'
        })
    elseif type == "error" then
        lib.notify({
            title = WEX.NotifyTtile,
            description = text,
            type = 'error'
        })
    end
elseif WEX.NotifyType == "okok" then
    if type == "succes" then
        exports['okokNotify']:Alert(WEX.NotifyTtile, text, 1500, 'success', true)
    elseif type == "error" then
        exports['okokNotify']:Alert(WEX.NotifyTtile, text, 1500, 'error', true)
    end
elseif WEX.NotifyType == "esx" then
    if type == "succes" then
        TriggerClientEvent('esx:showNotification', source, text, 'success', 1500)
    elseif type == "error" then
        TriggerClientEvent('esx:showNotification', source, text, 'error', 1500)
    end
elseif WEX.NotifyType == "custom" then
    if type == "succes" then
        print(text)
    elseif type == "error" then
        print(text)
    end
    end
end
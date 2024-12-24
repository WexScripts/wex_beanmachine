function missingCup()
    TriggerClientEvent('ox_lib:notify', source, {
        title = 'coffee machine',
        description = "You must have a cup",
        type = 'error'
    })
end
RegisterServerEvent("wex_beanmachine:addi")
AddEventHandler("wex_beanmachine:addi", function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Validate item existence and count
    if not item or not count or type(count) ~= "number" or count <= 0 then
        print(("Invalid input detected from player %s. Item: %s, Count: %d"):format(xPlayer.identifier, item, count))
        return
    end


    -- Limit the amount of items that can be added (optional security measure)
    local maxCount = 2 -- Set a maximum limit
    if count > maxCount then
        print(("Player %s tried to add too many items: %s, Count: %d"):format(xPlayer.identifier, item, count))
        return
    end

    -- Add item to the player's inventory if everything is valid
    xPlayer.addInventoryItem(item, count)
    print(("Player %s added %d of %s to their inventory."):format(xPlayer.identifier, count, item))
end)

-- Helper function to check if a table contains a value
function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end


RegisterServerEvent('wex_beanmachine:crafti')
AddEventHandler('wex_beanmachine:crafti', function(item1, item2, need, get)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Check if player is valid
    if not xPlayer then
        print("Invalid player attempting to craft.")
        return
    end

    -- Ensure items are valid
    if not item1 or not item2 then
        print("Invalid items provided for crafting.")
        return
    end

    -- Validate the amount of needed and received items
    if type(need) ~= "number" or type(get) ~= "number" then
        print("Invalid crafting amounts.")
        return
    end


    -- Ensure the player has enough of the first item
    local count = xPlayer.getInventoryItem(item1).count
    if count == need then
  
        -- Perform the crafting: Remove the required items, add the crafted item
        xPlayer.removeInventoryItem(item1, need)
        xPlayer.addInventoryItem(item2, get)

        print(("Player %s crafted %d of %s from %d of %s"):format(xPlayer.identifier, get, item2, need, item1))
    else
        -- Handle insufficient items
        missingCup()
        print(("Player %s attempted crafting but did not have enough %s."):format(xPlayer.identifier, item1))
    end
end)


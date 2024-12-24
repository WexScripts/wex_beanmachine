
local Locale = require('locales.'..WEX.Locale..'') -- Nebo require('locales.en')
for k, v in ipairs(WEX.Tables) do
    exports.ox_target:addBoxZone({
        coords = v.position,
        size = v.size,
        rotation = v.rotation,
        debug = WEX.Debug,
        distance = 0.5,
        options = {
            {
                onSelect = function()
                    OpenMenu()
                end,
                icon = 'fa-solid fa-clipboard',
                distance = 3.0,
                label = Locale.main.CheckMenu,
            }
        }
    })
end

for k, v in ipairs(WEX.CrucibleStash) do
exports.ox_target:addBoxZone({
    coords = v.position,
    size = v.size,
    rotation = v.rotation,
    debug = WEX.Debug,
    distance = 0.5,
    options = {
        {
            onSelect = function()
                lib.progressCircle({
                    duration = 2000,
                    label =  Locale.main.TakeCupProgress,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true,

                    },
                    anim = {
                        dict = 'mini@repair',
                        clip = 'fixing_a_ped'
                    },
                })
                TriggerServerEvent("wex_beanmachine:addi", WEX.CupItem, 1)
            end,
            icon = 'fa-solid fa-mug-hot',
            distance = 3.0,
            label =  Locale.main.TakeCup,
            groups = {[WEX.BeanMachineJob] = 0}
        }
    }
})
end
for k, v in ipairs(WEX.CoffeeCraft) do
exports.ox_target:addBoxZone({
    coords = v.position,
    size = v.size,
    rotation = v.rotation,
    debug = WEX.Debug,
    distance = 0.5,
    options = {
        {
            onSelect = function()
--[[                 lib.progressCircle({
                    duration = 2000,
                    label = "Berete kelímek...",
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true,

                    },
                    anim = {
                        dict = 'mini@repair',
                        clip = 'fixing_a_ped'
                    },
                })
                TriggerServerEvent("wex_beanmachine:addi", "trash_coffee", 1) ]]
                CraftCafe()
            end,
            icon = 'fa-solid fa-mug-hot',
            distance = 3.0,
            label = Locale.main.CoffeeMachineT,
            groups = {[WEX.BeanMachineJob] = 0}
        }
    }
})
end


for k, v in ipairs(WEX.Cookies) do
exports.ox_target:addBoxZone({
    coords = v.position,
    size = v.size,
    rotation = v.rotation,
    debug = WEX.Debug,
    distance = 0.5,
    options = {
        {
            onSelect = function()
                lib.progressCircle({
                    duration = 2000,
                    label = Locale.main.TakeDonutProgress,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true,

                    },
                    anim = {
                        dict = 'mini@repair',
                        clip = 'fixing_a_ped'
                    },
                })
                TriggerServerEvent("wex_beanmachine:addi", "donut", 1)
            end,
            icon = "fa-solid fa-cookie-bite",
            distance = 3.0,
            label = Locale.main.TakeDonut,
             groups = {[WEX.BeanMachineJob] = 0}
        }
    }
})
end

function OpenMenu()

      local options = {}
      for k, v in pairs(WEX.CafeMenu) do
  table.insert(options, {
      title = v.title,
      icon = v.icon,
      metadata = v.metadata,
      onSelect = function()       
      end
  })
end      
      lib.registerContext({
        id = 'wex_beanmachine:menu',
        title = Locale.main.MenuTitle,
        options = options
    })
     lib.showContext("wex_beanmachine:menu")
end


function CraftCafe()
    lib.registerContext({
        id = 'wex_beanmachine:craftMenu',
        title = 'Vyberte Kafe',
        options = {
        }
      })
      lib.showContext('wex_beanmachine:craftMenu')


      
      local options = {}
      for k, v in pairs(WEX.CoffeeCraftItems) do
  table.insert(options, {
      title = v.title,
      icon = v.icon,
      metadata = v.metadata,
      onSelect = function()    
        lib.progressCircle({
            duration = 2000,
         label = Locale.main.CoffeeMachineP,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
                combat = true,

            },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_ped'
            },
        })
        TriggerServerEvent('wex_beanmachine:crafti', v.needItem, v.getItem, 1, 1)   
      end
  })
end      
      lib.registerContext({
        id = 'wex_beanmachine:coffeeCraft',
        title =  Locale.main.CoffeeMachineM,
        options = options
    })
     lib.showContext("wex_beanmachine:coffeeCraft")
end








local blips = {}

CreateThread(function()
        local blip = AddBlipForCoord(WEX.Blip.Coords.x, WEX.Blip.Coords.y, WEX.Blip.Coords.z)
        SetBlipSprite(blip, WEX.Blip.Sprite)
        SetBlipDisplay(blip, 4) -- WEX.Blipiditelné na mapě i minimapě
        SetBlipScale(blip, WEX.Blip.Size)
        SetBlipPriority(blip, 234)
        SetBlipFlashes(blip, false)
        SetBlipColour(blip, WEX.Blip.Color)
        SetBlipAlpha(blip, WEX.Blip.Opacity)
        SetBlipAsShortRange(blip, true)
        SetBlipHiddenOnLegend(blip, false)
        ShowTickOnBlip(blip, false)
        ShowHeightOnBlip(blip, false)
        SetBlipShrink(blip, false)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(WEX.Blip.Label and WEX.Blip.Label or name)
        EndTextCommandSetBlipName(blip)
        table.insert(blips, blip)
end)

AddEventHandler('onResourceStop', function()
    for _, blip in pairs(blips) do
        RemoveBlip(blip)
    end
end)
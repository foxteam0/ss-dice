local QBCore = exports['qb-core']:GetCoreObject()

function MyChatAddMessage(message)
    if Config.chatSettings.display then
        TriggerEvent("chat:addMessage", message)
    end
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

RegisterNetEvent('ss-dice:Throw')
AddEventHandler('ss-dice:Throw', function(itemName)

    QBCore.Functions.Progressbar("zar_atma", "Zar atılıyor...", 3000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        loadAnimDict("anim@mp_player_intcelebrationmale@wank")
        TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)

        Citizen.Wait(1500)
        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 2.0, 'dice', 0.3)
        Citizen.Wait(1500) 

        local playerName = GetPlayerName(PlayerId())
        local diceResult = math.random(1, 6)
        MyChatAddMessage({
            color = {255, 0, 0},
            multiline = true,
            args = {"[SS-Dice]", playerName .. " zar attı ve sonuç: " .. diceResult}
        })
        ExecuteCommand("me " .. playerName .. " zar attı ve sonuç: " .. diceResult .. "")
        
      
        ClearPedTasks(GetPlayerPed(-1))
    end)
end)

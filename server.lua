local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("zar", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("ss-dice:Throw", source, item.name)
    if Config.removeZarAfterUse then
        Player.Functions.RemoveItem("zar", 1)
    end
end)


QBCore.Functions.CreateCallback('ss-diceme', function(playerId, data) -- super
    local Player = QBCore.Functions.GetPlayer(playerId)
    
    data(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
end)
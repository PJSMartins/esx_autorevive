ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx_autorevive:server')
AddEventHandler('esx_autorevive:server', function()
    local src = source
    if Config.AutoRevive then
        SetTimeout(Config.ReviveDelay, function()
            TriggerClientEvent('esx_ambulancejob:revive', src)
            if Config.NotifyOnRevive then
                TriggerClientEvent('esx_autorevive:revived', src)
            end
            if Config.Debug then
                print(('[AUTO-REVIVE] Jogador %s revivido'):format(src))
            end
        end)
    end
end)



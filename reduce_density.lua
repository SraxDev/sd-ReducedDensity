local Config = {
    pedDensity = 0,
    scenarioPedDensity = 0,
    vehicleDensity = 0,              -- Max value 1.0
    randomVehicleDensity = 0,
    parkedVehicleDensity = 0
}

Citizen.CreateThread(function()
    while true do
        -- Mise à jour moins fréquente (500ms au lieu de chaque frame)
        Wait(500)
        
        -- Réglage de la densité
        SetPedDensityMultiplierThisFrame(Config.pedDensity)
        SetScenarioPedDensityMultiplierThisFrame(Config.scenarioPedDensity, Config.scenarioPedDensity)
        SetVehicleDensityMultiplierThisFrame(Config.vehicleDensity)
        SetRandomVehicleDensityMultiplierThisFrame(Config.randomVehicleDensity)
        SetParkedVehicleDensityMultiplierThisFrame(Config.parkedVehicleDensity)
    end
end)

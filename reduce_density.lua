local Config = {
    pedDensity = 0,
    scenarioPedDensity = 0,
    vehicleDensity = 0,
    randomVehicleDensity = 0,
    parkedVehicleDensity = 0
}

Citizen.CreateThread(function()
    while true do
        -- Réglage de la densité des PNJ / Adjusting NPC density
        SetPedDensityMultiplierThisFrame(Config.pedDensity)
        SetScenarioPedDensityMultiplierThisFrame(Config.scenarioPedDensity, Config.scenarioPedDensity)

        -- Réglage de la densité de la circulation / Adjusting traffic density
        SetVehicleDensityMultiplierThisFrame(Config.vehicleDensity)
        SetRandomVehicleDensityMultiplierThisFrame(Config.randomVehicleDensity)
        SetParkedVehicleDensityMultiplierThisFrame(Config.parkedVehicleDensity)
        
        Wait(0)
    end
end)

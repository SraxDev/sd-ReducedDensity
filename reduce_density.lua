local Config = {
    pedDensity = 0,
    scenarioPedDensity = 0,
    vehicleDensity = 0,            --- Max value 1.0
    randomVehicleDensity = 0,
    parkedVehicleDensity = 0
}

local setters = {
    {key = 'pedDensity', func = SetPedDensityMultiplierThisFrame},
    {key = 'scenarioPedDensity', func = function(v) SetScenarioPedDensityMultiplierThisFrame(v, v) end},
    {key = 'vehicleDensity', func = SetVehicleDensityMultiplierThisFrame},
    {key = 'randomVehicleDensity', func = SetRandomVehicleDensityMultiplierThisFrame},
    {key = 'parkedVehicleDensity', func = SetParkedVehicleDensityMultiplierThisFrame}
}

local current = {}

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        
        for _, setting in ipairs(setters) do
            if current[setting.key] ~= Config[setting.key] then
                setting.func(Config[setting.key])
                current[setting.key] = Config[setting.key]
            end
        end
    end
end)

-- Make sure Space Exploration is present
if mods["space-exploration"] then

    -- Define list of additional items with crafting amounts to add to the Delivery Cannon
    local itemsToAdd = {
        -- Barrels
        {"empty-barrel", 10},
        {"ammonia-barrel", 10},
        {"cooling-geothermal-water-barrel", 10},
        {"geothermal-water-barrel", 10},
        {"hydrogen-barrel", 10},
        {"nitrogen-barrel", 10},
        {"se-bio-sludge-barrel", 10},
        {"se-chemical-gel-barrel", 10},
        {"se-contaminated-bio-sludge-barrel", 10},
        {"se-contaminated-space-water-barrel", 10},
        {"se-cryonite-slush-barrel", 10},
        {"se-kr-imersium-sulfide-barrel", 10},
        {"se-liquid-rocket-fuel-barrel", 10},
        {"se-methane-gas-barrel", 10},
        {"se-neural-gel-2-barrel", 10},
        {"se-neural-gel-barrel", 10},
        {"se-nutrient-gel-barrel", 10},
        {"se-space-coolant-hot-barrel", 10},
        {"se-space-water-barrel", 10},
        {"se-vitalic-acid-barrel", 10},

        -- Resources
        {"advanced-circuit", 200},
        {"automation-core", 200},
        {"copper-cable", 200},
        {"electric-engine-unit", 50},
        {"electric-motor", 50},
        {"electronic-circuit", 200},
        {"electronic-components", 200},
        {"engine-unit", 50},
        {"improved-pollution-filter", 10},
        {"iron-beam", 200},
        {"iron-gear-wheel", 200},
        {"iron-stick", 200},
        {"motor", 50},
        {"pollution-filter", 20},
        {"processing-unit", 200},
        {"rail", 10},
        {"small-electric-pole", 50},
        {"steel-beam", 200},
        {"steel-gear-wheel", 200},
        {"steel-pipe", 100},
        {"steel-pipe-to-ground", 100},
        {"used-improved-pollution-filter", 5},
        {"used-pollution-filter", 10},

        -- Robots
        {"construction-robot", 10},
        {"bob-construction-robot-2", 8},
        {"bob-construction-robot-3", 6},
        {"bob-construction-robot-4", 4},
        {"bob-construction-robot-5", 2},
        {"logistic-robot", 10},
        {"bob-logistic-robot-2", 8},
        {"bob-logistic-robot-3", 6},
        {"bob-logistic-robot-4", 4},
        {"bob-logistic-robot-5", 2},
        {"roboport", 1},
        {"bob-roboport-2", 1}, 
        {"bob-roboport-3", 1},
        {"bob-roboport-4", 1},

        -- Rocket Parts
        {"rocket-control-unit", 50},
        {"se-cargo-rocket-cargo-pod", 25},
        {"se-cargo-rocket-fuel-tank", 25},
        {"se-cargo-rocket-section-packed", 25},
        {"space-capsule", 1}
    }

    -- Check if the item/recipe exists. If so, add it to se_delivery_cannon_recipes
    for _, itemData in pairs(itemsToAdd) do
        local itemName, itemAmount = itemData[1], itemData[2]
        if data.raw["item"][itemName] then
            se_delivery_cannon_recipes[itemName] = {name = itemName, amount = itemAmount}
        elseif data.raw["recipe"][itemName] then
            se_delivery_cannon_recipes[itemName] = {name = itemName, amount = itemAmount}
        end
    end

end
-- Make sure Space Exploration is present
if mods["space-exploration"] then

    -- Create a new item/recipe to package Delivery Cannon capsules
    data:extend(
        {
            {
                -- Add a packed Delivery Capsule item
                type = "item",
                name = "delivery-cannon-capsule-packed",
                icon = "__SE-FireEverything__/graphics/delivery-cannon-capsule-packed.png",
                icon_size = 64,
                subgroup = "intersurface-part",
                stack_size = 1
            },
            {
                -- Add the recipe for packing Delivery Capsules
                type = "recipe",
                name = "delivery-cannon-capsule-packing",
                category = "advanced-crafting",
                result_count = 1,
                result = "delivery-cannon-capsule-packed",
                energy_required = 10,
                ingredients = {
                    {"se-delivery-cannon-capsule", 25}
                },
                requester_paste_multiplier = 2,
                enabled = false,
                always_show_made_in = true,
                allow_as_intermediate = false
            },
            {
                -- Add the recipe for unpacking Delivery Capsules
                type = "recipe",
                name = "delivery-cannon-capsule-unpacking",
                category = "advanced-crafting",
                result_count = 25,
                result = "se-delivery-cannon-capsule",
                energy_required = 10,
                ingredients = {
                    {"delivery-cannon-capsule-packed", 1}
                },
                requester_paste_multiplier = 2,
                enabled = false,
                always_show_made_in = true,
                allow_as_intermediate = false
            }
        }
    )

    -- Add the new packing/unpacking recipes to be unlocked once the Delivery Cannon is unlocked
    table.insert(data.raw.technology["se-delivery-cannon"].effects,{type = "unlock-recipe", recipe = "delivery-cannon-capsule-packing"})
    table.insert(data.raw.technology["se-delivery-cannon"].effects,{type = "unlock-recipe", recipe = "delivery-cannon-capsule-unpacking"})

    -- Add the packed Delivery Cannon Capsule to the Delivery Cannon recipes
    se_delivery_cannon_recipes["delivery-cannon-capsule-packed"] = {name = "delivery-cannon-capsule-packed"}

end

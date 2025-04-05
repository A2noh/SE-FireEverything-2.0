data:extend(
    {
        {
            -- Add the recipe for packing Delivery Capsules
            type = "recipe",
            name = "delivery-cannon-capsule-packing",
            category = "advanced-crafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "se-delivery-cannon-capsule", amount = 25}
            },
            results = {
                {type = "item", name = "delivery-cannon-capsule-packed", amount = 1}
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
            energy_required = 10,
            ingredients = {
                {type = "item", name = "delivery-cannon-capsule-packed", amount = 1}
            },
            results = {
                {type = "item", name = "se-delivery-cannon-capsule", amount = 25}
            },
            requester_paste_multiplier = 2,
            enabled = false,
            always_show_made_in = true,
            allow_as_intermediate = false
        }
    }
)

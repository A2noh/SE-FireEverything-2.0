data:extend(
    {
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
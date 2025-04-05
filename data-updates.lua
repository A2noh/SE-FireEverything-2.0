if mods["space-exploration"] then
    local valid_item_types = {
        "item", "ammo", "capsule", "gun", "armor", "module", "tool",
        "item-with-entity-data", "rail-planner", "item-with-tags",
        "item-with-label", "item-with-inventory"
    }

    for _, item_type in pairs(valid_item_types) do
        local item_group = data.raw[item_type]
        if item_group then
            for name, prototype in pairs(item_group) do
                -- Skip adding delivery-cannon-capsule-packed
                if name ~= "delivery-cannon-capsule-packed" and name ~= "se-delivery-cannon-capsule" then
                    local amount = prototype.stack_size or 1
                    if amount > 200 then amount = 200 end
                    log("Registered for Delivery Cannon: " .. name)
                    se_delivery_cannon_recipes[name] = {
                        name = name,
                        amount = amount
                    }
                end
            end
        end
    end
end

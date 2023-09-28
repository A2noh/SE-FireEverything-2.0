-- Make sure Space Exploration is present
if mods["space-exploration"] then

    require("prototypes.item")
    require("prototypes.recipe")

    -- Add the new packing/unpacking recipes to be unlocked once the Delivery Cannon is unlocked
    table.insert(data.raw.technology["se-delivery-cannon"].effects,{type = "unlock-recipe", recipe = "delivery-cannon-capsule-packing"})
    table.insert(data.raw.technology["se-delivery-cannon"].effects,{type = "unlock-recipe", recipe = "delivery-cannon-capsule-unpacking"})

    -- Add the packed Delivery Cannon Capsule to the Delivery Cannon recipes
    se_delivery_cannon_recipes["delivery-cannon-capsule-packed"] = {name = "delivery-cannon-capsule-packed"}

end
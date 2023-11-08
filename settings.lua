data:extend({
    {
        type = "string-setting"
        name = "se-early-logistics-logisticnetwork"
        setting_type = "startup"
        default_value = "Space"
        allowed_values = {"Vanilla", "Rocket", "Space", "SEDefault"}
        order = "bots"
    },
    {
        type = "string-setting"
        name = "se-early-logistics-kovarex"
        setting_type = "startup"
        default_value = "SEDefault"
        allowed_values = {"Vanilla", "Space", "SEDefault"}
        order = "kovarex"
    },
    {
        type = "string-setting"
        name = "se-early-logistics-uranium-ammo"
        setting_type = "startup"
        default_value = "SEDefault"
        allowed_values = {"Vanilla", "SEDefault"}
        order = "uranium"
    },
    {
        type = "string-setting"
        name = "se-early-logistics-artillery"
        setting_type = "startup"
        default_value = "SEDefault"
        allowed_values = {"Vanilla", "SEDefault"}
        order = "artillery"
    },
    {
        type = "string-setting"
        name = "se-early-logistics-coal-liquefaction"
        setting_type = "startup"
        default_value = "Vanilla"
        allowed_values = {"Vanilla", "Rocket", "Space", "SEDefault"}
        order = "coal"
    }
})
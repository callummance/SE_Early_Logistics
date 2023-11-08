-- Logistic network
do
  local logistic_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    "Rocket" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
    },
    "Space" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
      {"space-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["logistic-system"].unit.ingredients,
  }
  local logistic_prereqs_tbl = {
    "Vanilla" = {
      "logistic-robotics"
    },
    "Rocket" = {
      "logistic-robotics",
      "se-thruster-suit"
    },
    "Space" = {
      "logistic-robotics",
      "space-science-pack"
    },
    "SEDefault" = data.raw.technology["logistic-system"].prerequisites,
  }
  local logistic_opt = settings.startup["se-early-logistics-logisticnetwork"]
  data.raw.technology["logistic-system"].unit.ingredients = logistic_ingredients_tbl[logistic_opt]
  data.raw.technology["logistic-system"].prerequisites = logistic_prereqs_tbl[logistic_opt]
end


-- Kovarex
do
  local kovarex_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"se-rocket-science-pack", 1}
    },
    "Space" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
      {"space-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["kovarex-enrichment-process"].unit.ingredients,
  }
  local kovarex_prereqs_tbl = {
    "Vanilla" = {
      "uranium-processing"
    },
    "Space" = {
      "uranium-processing",
      "space-science-pack"
    },
    "SEDefault" = data.raw.technology["kovarex-enrichment-process"].prerequisites,
  }
  local kovarex_opt = settings.startup["se-early-logistics-kovarex"]
  data.raw.technology["kovarex-enrichment-process"].unit.ingredients = kovarex_ingredients_tbl[kovarex_opt]
  data.raw.technology["kovarex-enrichment-process"].prerequisites = kovarex_prereqs_tbl[kovarex_opt]
end

-- Uranium Ammo
do
  local ua_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"se-rocket-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["uranium-ammo"].unit.ingredients,
  }
  local ua_prereqs_tbl = {
    "Vanilla" = {
      "millitary-4",
      "uranium-processing",
      "tank"
    },
    "SEDefault" = data.raw.technology["uranium-ammo"].prerequisites,
  }
  local ua_opt = settings.startup["se-early-logistics-uranium-ammo"]
  data.raw.technology["uranium-ammo"].unit.ingredients = ua_ingredients_tbl[ua_opt]
  data.raw.technology["uranium-ammo"].prerequisites = ua_prereqs_tbl[ua_opt]
end

-- Artillery
do
  local artillery_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"se-rocket-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["artillery"].unit.ingredients,
  }
  local artillery_prereqs_tbl = {
    "Vanilla" = {
      "millitary-4",
      "tank"
    },
    "SEDefault" = data.raw.technology["artillery"].prerequisites,
  }
  local artillery_opt = settings.startup["se-early-logistics-artillery"]
  data.raw.technology["artillery"].unit.ingredients = artillery_ingredients_tbl[artillery_opt]
  data.raw.technology["artillery"].prerequisites = artillery_prereqs_tbl[artillery_opt]
end

-- Coal liquefaction
if mods["Krastorio2"] then
  -- Krastorio removes the Steam Power tech and requires coke
  local liquefaction_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    "Rocket" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
    },
    "Space" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
      {"space-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["coal-liquefaction"].unit.ingredients,
  }
  local liquefaction_prereqs_tbl = {
    "Vanilla" = {
      "steel-processing",
      "rocket-fuel",
      "kr-steam-engine"
    },
    "Rocket" = {
      "se-rocket-science-pack",
      "kr-steam-engine"
    },
    "Space" = {
      "space-science-pack",
      "kr-steam-engine"
    },
    "SEDefault" = data.raw.technology["coal-liquefaction"].prerequisites,
  }
  local liquefaction_opt = settings.startup["se-early-logistics-coal-liquefaction"]
  data.raw.technology["coal-liquefaction"].unit.ingredients = liquefaction_ingredients_tbl[liquefaction_opt]
  data.raw.technology["coal-liquefaction"].prerequisites = liquefaction_prereqs_tbl[liquefaction_opt]
else 
  -- Base SE
  local liquefaction_ingredients_tbl = {
    "Vanilla" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    "Rocket" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
    },
    "Space" = {
      {"automation-science-pack", 1}, 
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
      {"se-rocket-science-pack", 1}
      {"space-science-pack", 1}
    },
    "SEDefault" = data.raw.technology["coal-liquefaction"].unit.ingredients,
  }
  local liquefaction_prereqs_tbl = {
    "Vanilla" = {
      "rocket-fuel",
      "productivity-module",
      "steam-power"
    },
    "Rocket" = {
      "se-rocket-science-pack",
      "steam-power"
    },
    "Space" = {
      "space-science-pack",
      "steam-power"
    },
    "SEDefault" = data.raw.technology["coal-liquefaction"].prerequisites,
  }
  local liquefaction_opt = settings.startup["se-early-logistics-coal-liquefaction"]
  data.raw.technology["coal-liquefaction"].unit.ingredients = liquefaction_ingredients_tbl[liquefaction_opt]
  data.raw.technology["coal-liquefaction"].prerequisites = liquefaction_prereqs_tbl[liquefaction_opt]
end


------------------
-- AIRCRAFT MOD --
------------------

--if aircraft mod is present, patch the high explosive cannon shell research ingredients (but not prerequisites)
if mods["Aircraft"] then
	data.raw.technology["high-explosive-cannon-shells"].unit.ingredients = data.raw.technology["artillery"].unit.ingredients
	--the flying fortress should also be the same
	data.raw.technology["flying-fortress"].unit.ingredients = data.raw.technology["artillery"].unit.ingredients
	
	--the basic jet is also really hard to get for some reason
	data.raw.technology["jets"].unit.ingredients = { 
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      }
      
      --come on, man. I know it's a calculated balance decision but those first 100 hours of early game SE don't grind themselves
      data.raw.technology["afterburner"].unit.ingredients = { 
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1}
      }
end



--------------------
-- TRUE NUKES MOD --
--------------------

--modify all the true nukes stuff. I don't know how to tell True Nukes to use vanilla values and not space ex values so i'll just mod each thing I don't like by hand, probably wouldn't work due to prerequisites anyway
if mods["True-Nukes"] then
	--expanded-atomics aka "Large atomic weapons" as it is known in game
	data.raw.technology["expanded-atomics"].unit.ingredients = { 
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"se-rocket-science-pack", 1}
      }
      
      --for simple true nukes modifications, generally all the ingredients can be set to being the same
      data.raw.technology["artillery-atomics"].unit.ingredients = data.raw.technology["expanded-atomics"].unit.ingredients
      
      --californium-processing californium-weapons compact-californium-weapons
      data.raw.technology["californium-processing"].unit.ingredients = data.raw.technology["expanded-atomics"].unit.ingredients
      data.raw.technology["californium-weapons"].unit.ingredients = data.raw.technology["expanded-atomics"].unit.ingredients
      
      --ok fine, this research is pretty advanced so i'll make it require space science (instead of a laundry list of 20 different deep space sciences or whatever)
      data.raw.technology["compact-californium-weapons"].unit.ingredients = { 
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1}
      }
      
end

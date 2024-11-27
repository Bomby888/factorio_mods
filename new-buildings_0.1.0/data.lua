local assembler4= table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])





data:extend({
    {
        type="item",
        name = "assembling-macchine-4",
        icons={
            icon="__new_buildings__/graphics/icons/assmbling-machine-4.png",
            icon_size=32,
            tint = {r=0.2,g=0,b=0,a=0}
        },
        place_result = "assembling-machine-4",
        stack_size = 50,
    },
    {
        type = "assembling-machine",
        name = "assembling-machine-4",
        icons={
            icon="__new_buildings__/graphics/icons/assmbling-machine-4.png",
            icon_size=32,
            tint = {r=0.2,g=0,b=0,a=0}
        },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.5, result = "assembling-machine-4" },
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        resistances = {
            {
                type = "electric",
                percent = 100
            },
            {
                type = "explosion",
                percent = 10
            },
            {
                type = "fire",
                percent = 100
            },
            {
                type = "physicalc",
                decrease=200,
                percent = 100
            }
        },
        --skibidi kopiuj wklej
        fluid_boxes = {
            {
              production_type = "input",
              pipe_picture = assembler2pipepictures(),
              pipe_covers = pipecoverspictures(),
              base_area = 10,
              base_level = -1,
              pipe_connections = { { type = "input", position = { 0, -2 } } },
            },

            {
              production_type = "output",
              pipe_picture = assembler2pipepictures(),
              pipe_covers = pipecoverspictures(),
              base_area = 10,
              base_level = 1,
              pipe_connections = { { type = "output", position = { 0, 2 } } },
            },
            off_when_no_fluid_recipe = true,
          },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        fast_replaceable_group = "assembling-machine",  

        animation = {
            filename = "__new_buildings__/graphics/entity/assembling-machine-4/assembling-machine-4.png",
            priority = "high",
            width = 113,
            height = 99,
            frame_count = 32,
            line_length = 8,
            shift = { 0.4, -0.06 },
          },

          open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
          close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
          working_sound = {
            sound = {
              {
                filename = "__base__/sound/assembling-machine-t2-1.ogg",
                volume = 0.8,
              },
              {
                filename = "__base__/sound/assembling-machine-t2-2.ogg",
                volume = 0.8,
              },
            },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },

        crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
        crafting_speed = 2,
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = 1.5,
        },

        energy_usage = "300kW",
    module_specification = {--sprawdzic jak to dziala dokladnie
      module_slots = 8,
      module_info_icon_shift = { 0, 0.5 },
      module_info_multi_row_initial_height_modifier = -0.3,
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },
    {
        type = "recipe",
        name = "assembling-machine-4",
        enabled = true,
        ingridients={
            {
                {type="item", name="assembling-machine-3",amount = 2},
                {type="item", name="promethium-asteroid-chunk",amount = 5}
            }
        },
        result="assembling-machine-4"
    },

    {
        type = "technology",
        name = "automation-4",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "assembling-machine-4",
          },
        },
        prerequisites = {
          "automation-3",
          "chemical-science-pack",
        },
        unit = {
          count = 80,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 45,
        },
        order = "a-b-d",
      },

})




local assembler4_recipe =table.deepcopy(data.raw["recipe"]["assembling-machine-3"])


assembler4_recipe.energy_required=5
assembler4_recipe.enabled=true

data:extend{assembler4,assembler4_recipe}
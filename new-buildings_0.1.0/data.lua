


data:extend({
  {
    type = "item",
    name = "assembling-machine-4",
    group="production",
    subgroup="production-machine",
    order="z-c[assembling-machine-4]",
    icons = {
        {
            icon = "__new-buildings__/graphics/icons/assembling-machine-4.png",
            icon_size = 32,
        }
    },
    place_result = "assembling-machine-4",
    stack_size = 50
  },
    {
        type = "assembling-machine",
        name = "assembling-machine-4",
        order="z-c[assembling-machine-4]",
        icons={{

            icon="__new-buildings__/graphics/icons/assembling-machine-4.png",
            icon_size=32,
        }
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
                type = "physical",
                decrease=200,
                percent = 100
            }
        },
        --skibidi kopiuj wklej
        fluid_boxes = {
          {
            production_type="input",
            volume=1000,
            pipe_picture=assembler3pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections = {
              {position={0,-1}, direction=defines.direction.north}
            },
            secondary_draw_orders = {north = -1},
          },
          {
            production_type="output",
            volume=1000,
            pipe_picture=assembler3pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections = {
              {position={0,1}, direction=defines.direction.south}
            },
            secondary_draw_orders = {south = 1},
          }
      },
      fluid_boxes_off_when_no_fluid_recipe = true, -- Add this line
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fast_replaceable_group = "assembling-machine",
      graphics_set=
      {
        animation_progress = 0.5,
        animation = {north={
            layers =
            {
                {
                  filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
                  priority = "high",
                  width = 110,
                  height = 99,
                  frame_count = 32,
                  line_length = 8,
                  shift = {0.4, -0.06},
                  animation_speed = 0.075,
                  scale = 0.75
              }}
          }}
          
          

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
          emissions_per_minute = {
            pollution = 96
          }
        },

        energy_usage = "300kW",
    module_specification = {--sprawdzic jak to dziala dokladnie
      module_slots = 8,

    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },

    
    },
    {
        type = "recipe",
        name = "assembling-machine-4",
        category="crafting",
        group="production",
        subgroup="production-machine",
        order="z-c[assembling-machine-4]",
        ingredients = {
          {type = "item", name = "assembling-machine-3", amount = 2},
          {type = "item", name = "promethium-asteroid-chunk", amount = 5}
      },
        
      results = {{type = "item", name = "assembling-machine-4", amount = 1}},
        auto_recycle = true,
        
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




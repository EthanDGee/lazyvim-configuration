BASE_HEADER = [[
         🪿 🐤   🐤     🐤 🐤                                           
██╗  ██╗ ██████╗ ███╗   ██╗██╗  ██╗██╗   ██╗     ██╗   ██╗██╗███╗   ███╗
██║  ██║██╔═══██╗████╗  ██║██║ ██╔╝╚██╗ ██╔╝     ██║   ██║██║████╗ ████║
███████║██║   ██║██╔██╗ ██║█████╔╝  ╚████╔╝█████╗██║   ██║██║██╔████╔██║
██╔══██║██║   ██║██║╚██╗██║██╔═██╗   ╚██╔╝ ╚════╝╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██║╚██████╔╝██║ ╚████║██║  ██╗   ██║         ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝          ╚═══╝  ╚═╝╚═╝     ╚═╝]]

SPLASH_TEXT = {
  -- Honky Vim Themed
  [[                           Property of HexCorp                          ]],
  [[                     Very Much Titled Neovim Config                     ]],
  [[   🇨🇦 🇨🇦 🇨🇦  Proudly Sponsored by Candian Geese Everywhere  🇨🇦 🇨🇦 🇨🇦    ]],
  [[                    🇩🇪 🇩🇪 🇩🇪 "Gänsefüßchen" 🇩🇪 🇩🇪 🇩🇪                    ]],
  [[󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 󰇥 ]],
  [[🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 🦆 ]],
  [[                                    (Get it "honky" like the "tonk")    ]],
  [[                                                 HONK HONK HONK HONK    ]],
  [[                                              Very much on the loose    ]],
  -- Racing Related
  [[     DO DO DOO DOOO MAX VERSTAPPEN!  DO DO DOO DOOO MAX VERSTAPPEN!     ]],
  [[                                                VROOOM VROOOM VROOOM    ]],
  [[                                                   󰱧  󰱧  󰱧  󰱧  󰱧  󰱧     ]],
  -- Neovim Related
  [[                                                     (by the way)       ]],
  [[                                                             (:wq)      ]],
  -- Language specific
  -- [[                  󰌛           󰨊                     ]],
  [[                       Rewriting to use PostScript                      ]],
  [[                         Have you heard of Rust?                        ]],
}

-- change the seed to ensure a random selection
math.randomseed(os.time())

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          -- Paste your custom ASCII art inside the [[ ]]
          header = BASE_HEADER .. "\n" .. SPLASH_TEXT[math.random(#SPLASH_TEXT)],
        },
      },
    },
  },
}

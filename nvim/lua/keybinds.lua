require('utils')
local wk = require('which-key')

-- Normal Mode
wk.register({
  ["<leader>"] = {
    name = "general",
    f = {
      name = "file",
      f = { "<cmd>Telescope find_files<cr>",   "Find File"        },
      r = { "<cmd>Telescope oldfiles<cr>",     "Open Recent File" },
      n = { "<cmd>enew<cr>", 		       "New File"         },
      b = { "<cmd>Telescope file_browser<cr>", "Browse Files" 	  },
    },
    b = {
      name = "buffer",
      B = { "<cmd>Telescope buffers<cr>", 	"List Buffers" 	  },
      n = { '<cmd>bnext<cr>', 			"Next Buffer" 	  },
      p = { '<cmd>bprevious<cr>', 		"Previous Buffer" },
    },
    p = {
      name = "project",
      f = { "<cmd>Telescope git_files<cr>", 	"Find file in project" },
    },
    w = {
      name = "window",
      h =     { '<C-W>h', 		'Left'		       },
      l =     { '<C-W>l', 		'Right'		       },
      j =     { '<C-W>j', 		'Down'		       },
      k =     { '<C-W>k',		'Up'		       },
      v =     { '<C-w>v', 		'Vertical split'       },
      s =     { '<C-w>s', 		'Horizontal split'     },
      q =     { '<cmd>q<cr>',		'Close'	               },
      ["="] = { '<C-w>=',		'Balance windows'      },
      L =     { '<C-w>>2',		'Resize Right'         },
      H =     { '<C-w><2',		'Resize Left'	       },
      J =     { '<C-w>+2',		'Resize Down'	       },
      K =     { '<C-w>-2', 		'Resize Up'	       },
    },
    t = {
      name = "terminal",
      t = { "<cmd>FloatermToggle<CR>",	          "Toggle floating terminal" },
      o = { "<cmd>terminal<cr>",		  "Open terminal in a window" },
      n = { "<cmd>FloatermNext<cr>",		  "Next Terminal" }, 
      p = { "<cmd>FloatermPrev<cr>",		  "Previous Terminal" },
    },
    i = {
      name = "insert",
      c = { "+y", 				"To clipboard" },
      y = { '"+p',				"From clipboard" },
      r = { "<cmd>Telescope registers<CR>",		"From register" },
      -- unicode
      -- emoji
    },
    ["<Tab>"] = {
      name = "workspace",
      n = { "<cmd>tabedit<cr>", 		"New Workspace" 	},
      d = { "<cmd>tabclose<cr>", 		"Close Workspace" 	},
      ["]"] = { "<C-PageDown>", 		"Next Workspace" 	},
      ["["] = { "<C-PageUp>", 			"Previous Workspace" 	},
    },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search project" },
  },
  ["\\\\"] = {
      name = "navigation",
      w = { ":HopWord<cr>", 			"Hop to a word" 	},
  },
})

--  :FloatermNew --autoclose=0 gcc % -o %< && ./%<
-- Terminal Mode
wk.register({
  t = {
    name = "terminal",
    t = { t("<C-\\><C-N>:FloatermToggle<CR>"),		"Toggle floating terminal" },
    n = { "<cmd>FloatermNext<cr>",		  	"Next Terminal" 	   }, 
    p = { "<cmd>FloatermPrev<cr>",		  	"Previous Terminal" 	   },
  },
}, { prefix = "<leader>", mode = 't', noremap = true, silent = true })


-- Visual Mode
wk.register({
  ["<leader>"] = {},
  ["\\\\"] = {
    name = "navigation",
    w = { ":HopWord<CR>", 				"Hop to a word" 	    },
    b = { ":HopWordBC<CR>",				"Hop word backwards" 	    },
    f = { ":HopWordAC<CR>",				"Hop word forwards"	    },
  }
}, { mode = 'v' })




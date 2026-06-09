return {

	{
		"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	},
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter",
		opts = {
			delay = 0,
			icons = {
				mappings = vim.g.have_nerd_font,
				keys = vim.g.have_nerd_font and {} or {
					Up = "<Up> ",
					Down = "<Down> ",
					Left = "<Left> ",
					Right = "<Right> ",
					C = "<C-…> ",
					M = "<M-…> ",
					D = "<D-…> ",
					S = "<S-…> ",
					CR = "<CR> ",
					Esc = "<Esc> ",
					ScrollWheelDown = "<ScrollWheelDown> ",
					ScrollWheelUp = "<ScrollWheelUp> ",
					NL = "<NL> ",
					BS = "<BS> ",
					Space = "<Space> ",
					Tab = "<Tab> ",
					F1 = "<F1>",
					F2 = "<F2>",
					F3 = "<F3>",
					F4 = "<F4>",
					F5 = "<F5>",
					F6 = "<F6>",
					F7 = "<F7>",
					F8 = "<F8>",
					F9 = "<F9>",
					F10 = "<F10>",
					F11 = "<F11>",
					F12 = "<F12>",
				},
			},

			spec = { -- Document existing key chains
				{ "<leader>c", group = "[c]ode", mode = { "n", "x" } },
				{ "<leader>d", group = "[d]ocument" },
				{ "<leader>r", group = "[r]ename" },
				{ "<leader>f", group = "[f]ind" },
				{ "<leader>w", group = "[w]orkspace" },
				{ "<leader>t", group = "[t]oggle" },
				{ "<leader>h", group = "Git [h]unk", mode = { "n", "v" } },
			},
		},
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			filetypes = { "*" }, -- filetypes to highlight, "*" for all
			buftypes = {}, -- buftypes to highlight
			user_commands = true, -- enable user commands (ColorizerToggle, etc.)
			lazy_load = false, -- lazily schedule buffer highlighting
			options = {
				parsers = {
					css = false, -- preset: enables names, hex, rgb, hsl, oklch, css_var
					css_fn = false, -- preset: enables rgb, hsl, oklch
					names = {
						enable = true, -- enable named colors (e.g. "Blue")
						lowercase = true, -- match lowercase names
						camelcase = true, -- match CamelCase names (e.g. "LightBlue")
						uppercase = false, -- match UPPERCASE names
						strip_digits = false, -- ignore names with trailing digits (e.g. "blue3")
						custom = false, -- custom name-to-hex mappings; table|function|false
						extra_word_chars = "-", -- extra chars treated as part of color name
					},
					hex = {
						default = true, -- default value for unset format keys (see above)
						rgb = true, -- #RGB (3-digit)
						rgba = true, -- #RGBA (4-digit)
						rrggbb = true, -- #RRGGBB (6-digit)
						rrggbbaa = false, -- #RRGGBBAA (8-digit)
						hash_aarrggbb = false, -- #AARRGGBB (QML-style, alpha first)
						aarrggbb = false, -- 0xAARRGGBB
						no_hash = false, -- hex without '#' at word boundaries
					},
					rgb = { enable = false }, -- rgb()/rgba() functions
					hsl = { enable = false }, -- hsl()/hsla() functions
					oklch = { enable = false }, -- oklch() function
					hwb = { enable = false }, -- hwb() function (CSS Color Level 4)
					lab = { enable = false }, -- lab() function (CIE Lab)
					lch = { enable = false }, -- lch() function (CIE LCH)
					css_color = { enable = false }, -- color() function (srgb, display-p3, a98-rgb, etc.)
					tailwind = {
						enable = false, -- parse Tailwind color names
						update_names = false, -- feed LSP colors back into name parser (requires both enable + lsp.enable)
						lsp = { -- accepts boolean, true is shortcut for { enable = true, disable_document_color = true }
							enable = false, -- use Tailwind LSP documentColor
							disable_document_color = true, -- auto-disable vim.lsp.document_color on attach
						},
					},
					sass = {
						enable = false, -- parse Sass color variables
						parsers = { css = true }, -- parsers for resolving variable values
						variable_pattern = "^%$([%w_-]+)", -- Lua pattern for variable names
					},
					xterm = { enable = false }, -- xterm 256-color codes (#xNN, \e[38;5;NNNm)
					xcolor = { enable = false }, -- LaTeX xcolor expressions (e.g. red!30)
					hsluv = { enable = false }, -- hsluv()/hsluvu() functions
					css_var_rgb = { enable = false }, -- CSS vars with R,G,B (e.g. --color: 240,198,198)
					css_var = {
						enable = false, -- resolve var(--name) references to their defined color
						parsers = { css = true }, -- parsers for resolving variable values
					},
					custom = {}, -- list of custom parser definitions
				},
				display = {
					mode = "background", -- string or list: "background"|"foreground"|"underline"|"virtualtext"
					background = {
						bright_fg = "#000000", -- text color on bright backgrounds
						dark_fg = "#ffffff", -- text color on dark backgrounds
					},
					virtualtext = {
						char = "■", -- character used for virtualtext
						position = "eol", -- "eol"|"before"|"after"
						hl_mode = "foreground", -- "background"|"foreground"
					},
					priority = {
						default = 150, -- extmark priority for normal highlights
						lsp = 200, -- extmark priority for LSP/Tailwind highlights
					},
					disable_document_color = true, -- true (all LSPs) | false | { lsp_name = true, ... }
				},
				hooks = {
					should_highlight_line = false, -- function(line, bufnr, line_num) -> bool
					should_highlight_color = false, -- function(rgb_hex, parser_name, ctx) -> bool
					transform_color = false, -- function(rgb_hex, ctx) -> string
					on_attach = false, -- function(bufnr, opts)
					on_detach = false, -- function(bufnr)
				},
				always_update = false, -- update highlights even in unfocused buffers
				debounce_ms = 0, -- debounce highlight updates (ms); 0 = no debounce
			},
		},
	},
	{ -- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
			--
			local set_hl = vim.api.nvim_set_hl

			-- =========================
			-- Base background tweak (LCD-safe, darker, not black)
			-- =========================
			set_hl(0, "Normal", { bg = "#16141f" })
			set_hl(0, "NormalNC", { bg = "#16141f", fg = "#bfbcd6" })
			set_hl(0, "EndOfBuffer", { fg = "#16141f" })

			-- Floating windows / popups
			set_hl(0, "NormalFloat", { bg = "#1c1a2a" })
			set_hl(0, "FloatBorder", { fg = "#6e6a86", bg = "#1c1a2a" })

			-- =========================
			-- Cursor & selection
			-- =========================
			set_hl(0, "CursorLine", { bg = "#24223a" })
			set_hl(0, "Visual", { bg = "#2a273f" })

			-- Line numbers
			set_hl(0, "LineNr", { fg = "#6e6a86" })
			set_hl(0, "CursorLineNr", { fg = "#e0def4", bold = true })

			-- =========================
			-- Search
			-- =========================
			set_hl(0, "Search", { bg = "#2b2f4a", fg = "#e0def4" })
			set_hl(0, "CurSearch", { bg = "#5b577a", fg = "#16141f", bold = true })
			set_hl(0, "IncSearch", { bg = "#6e6a86", fg = "#16141f", bold = true })

			-- =========================
			-- Word / symbol under cursor (LSP)
			-- =========================
			set_hl(0, "LspReferenceText", { bg = "#3a3055" })
			set_hl(0, "LspReferenceRead", { bg = "#3a3055" })
			set_hl(0, "LspReferenceWrite", { bg = "#3a3055" })

			-- =========================
			-- Diagnostics (subtle, non-neon)
			-- =========================
			set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#eb6f92" })
			set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#f6c177" })
			set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#9ccfd8" })
			set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#31748f" })
		end,
	},
}

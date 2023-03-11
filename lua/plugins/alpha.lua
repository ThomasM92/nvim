return {
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		config = function(_, dashboard)

			local dashboard = require("alpha.themes.dashboard")
			local stats = require("lazy").stats()
			local options = { noremap = true, silent = true }
			local version = vim.version()

			dashboard.opts = {
				layout = {
					{ type = "padding", val = 3 },
					{
						type = "text",
						-- val = {
							-- 	"                                                                          ",
							-- 	"                   ░░░  ▄▄▄▄▄▄███▄▄▄▄▄                                    ",
							-- 	"                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄                           ",
							-- 	"                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄     ",
							-- 	"                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄ ",
							-- 	"    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████ ",
							-- 	" ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀  ",
							-- 	" ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀     ",
							-- 	"  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████           ",
							-- 	"    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███           ",
							-- 	"               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██           ",
							-- 	"                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏          ",
							-- 	"          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏          ",
							-- 	"          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏          ",
							-- 	"            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒▒      ██▏  ▄▄      ",
							-- 	"                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄    ░░░░ ▐█▏ ■▀▀      ",
							-- 	"                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█           ",
							-- 	"                                                ▄█████████▄▄              ",
							-- 	"                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏            ",
							-- 	"                                   ▄▄█████▀▀▀▀              ▀■            ",
							-- 	"                                ▄███▀▀▀▀                                  ",
							-- 	"                              ■▀▀                                         ",
							-- 	"                                                                          ",
							-- },
							-- val = {
							-- 		"                                                     ",
							-- 		"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ",
							-- 		"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ",
							-- 		" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ",
							-- 		" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ",
							-- 		" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ",
							-- 		" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ",
							-- 		" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ",
							-- 		"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ",
							-- 		"          ░    ░  ░    ░ ░        ░   ░         ░    ",
							-- 		"                                 ░                   ",
							-- 		"                                                     ",
							-- 	},
								val = {
									"                                                     ",
									"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
									"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
									"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
									"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
									"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
									"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
									"                                                     ",
								},
								opts = {
									position = "center",
									hl = "Comment"
								}
							},
							{ type = "padding", val = 3 },
							{
								type = "text",
								val = os.date(" %d-%m-%Y   %H:%M:%S") .. "   v" .. version.major .. "." .. version.minor .. "." .. version.patch,
								opts = {
									position = "center",
									hl = "String"
								}
							},
							{ type = "padding", val = 2 },
							{
								type = "group",
								val = {
									dashboard.button( "e", "  > New file", ":ene <BAR> startinsert <CR>", options),
									dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>", options),
									dashboard.button( "r", "  > Recent", ":Telescope oldfiles<CR>", options),
									dashboard.button( "p", "  > Projects", ":lua require('telescope').extensions.project.project{}<CR>", options),
									-- dashboard.button( "s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>", options),
									dashboard.button( "q", "  > Quit NVIM", ":qa<CR>", options),
									-- dashboard.button( "t", "  > Todos", ":TodoTelescope keywords=TODO<CR>"),
								},
								opts = {
									position = "center",
									spacing = 1,
									hl_shortcut = "String",
									hl = "String",
								}
							},
							{ type = "padding", val = 2 },
							{
								type = "text",
								val = "⚡ " .. stats.count .. " plugins loaded",
								opts = {
									position = "center",
									spacing = 1,
									hl = "Function"
								}
							},
						},
						opts = {
							margin = 44,
						},
					}

					-- ???
					vim.b.miniindentscope_disable = true

					-- close Lazy and re-open when the dashboard is ready
					if vim.o.filetype == "lazy" then
						vim.cmd.close()
						vim.api.nvim_create_autocmd("User", {
							pattern = "AlphaReady",
							callback = function()
								require("lazy").show()
							end,
						})
					end

					require("alpha").setup(dashboard.opts)

					vim.api.nvim_create_autocmd("User", {
						pattern = "LazyVimStarted",
						callback = function()
							local stats = require("lazy").stats()
							local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
							dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
							pcall(vim.cmd.AlphaRedraw)
						end,
					})
				end,
			},
		}

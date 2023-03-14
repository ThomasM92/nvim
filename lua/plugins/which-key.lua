return {
	'folke/which-key.nvim',
	config = function()
		local wk = require("which-key")

		wk.register({
			["<leader>"] = {
				["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment (visual)" },
			}
		}, { mode = "v" })

		wk.register({
			g = {
				d = "Go to definition",
				r = "Go to references",
			},
			["<leader>"] = {
				v = { "<cmd>vsplit<cr>", "Vertical split" },
				[";"] = { "<CMD>Alpha<cr>", "Dashboard" },
				w = { "<cmd>w!<cr>", "Save" },
				["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment" },
				n = { "<cmd>nohlsearch<cr>", "Nohl" },
				b = "Buffer",
				c = "Close",
				q = "Quit",
				e = "Explorer",
				f = {
					name = "Find",
					f = "Files",
					g = "Git files",
					b = "Buffers",
					t = "Text",
				},
				u = "Undotree",
				j = {
					name = "Jump",
					w = "Next words",
					b = "Last words",
					f = "Next characters",
					F = "Last characters",
					t = "Next characters -1",
					T = "Last characters -1",
					j = "Next lines",
					k = "Last lines"
				},
				-- p = {
					-- 	name = "Plugins",
					-- 	i = { "<cmd>PackerInstall<cr>", "Install" },
					-- 	s = { "<cmd>PackerSync<cr>", "Sync" },
					-- 	S = { "<cmd>PackerClear<cr>", "Status" },
					-- 	c = { "<cmd>PackerClean<cr>", "Clean" },
					-- 	u = { "<cmd>PackerUpdate<cr>", "Update" },
					-- 	p = { "<cmd>PackerProfile<cr>", "Profile" },
					-- },
					p = { "<cmd>Lazy<cr>", "Plugins" },
					l = {
						name = "LSP",
						a = "Actions",
						d = "Diagnostics",
						r = "Rename",
						s = "Signature",
						i = { "<cmd>LspInfo<cr>", "Info" },
						I = { "<cmd>Mason<cr>", "Mason Info" },
						j = {
							"<cmd>lua vim.diagnostic.goto_next()<cr>",
							"Next Diagnostic",
						},
						k = {
							"<cmd>lua vim.diagnostic.goto_prev()<cr>",
							"Prev Diagnostic",
						},
						l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
						q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
					},
					g = {
						name = "GIT",
						g = "Gitui",
						l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
						o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
						b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
						c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
						d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Git Diff" },
					},
					m = {
						name = "Minimap",
						f = "Functions",
						a = "Arrow functions",
						i = "Interfaces",
						c = "Classes",
						m = "Methods",
						e = "Enums",
						E = "Exports",
						I = "Imports",
					},
				}
			})

			wk.setup()
		end,
	}

return {
	'folke/which-key.nvim',
	keys = {
		 { '<leader>' }
	},
	config = function()
		local wk = require("which-key")

		wk.register({
			["<leader>"] = {
				["/"] = "Comment (visual)",
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
				["/"] = "Comment",
				n = { "<cmd>nohlsearch<cr>", "Nohl" },
				a = "Add Mark",
				b = "Buffers",
				c = "Close",
				q = "Quit",
				S = "Find & Replace",
				h = "Harpoon",
				[","] = "Settings",
				s = "Occurence",
				e = "Explorer",
				d = {
					name = "Debugger",
					c = "Continue",
					t = "Toggle breakpoint",
				},
				f = {
					name = "Find",
					f = "File",
					r = "Recent file",
					d = "Diagnostic",
					t = "Text",
					b = "Buffer",
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
				m = "Minimap",
			}
		})

		wk.setup()
	end,
}

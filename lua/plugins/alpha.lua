return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function(_, dashboard)
		local dashboard = require("alpha.themes.dashboard")
		local options = { noremap = true, silent = true }
		local version = vim.version()

		local logo = [[
                                                 gg                     
                                                 ""                     
  ,ggg,,ggg,    ,ggg,     ,ggggg,     ggg    gg  gg    ,ggg,,ggg,,ggg,  
 ,8" "8P" "8,  i8" "8i   dP"  "Y8ggg d8"Yb   88bg88   ,8" "8P" "8P" "8, 
 I8   8I   8I  I8, ,8I  i8'    ,8I  dP  I8   8I  88   I8   8I   8I   8I 
,dP   8I   Yb, `YbadP' ,d8,   ,d8',dP   I8, ,8I_,88,_,dP   8I   8I   Yb,
8P'   8I   `Y8888P"Y888P"Y8888P"  8"     "Y8P" 8P""Y88P'   8I   8I   `Y8
]]

		local header = {
			type = "text",
			val = vim.split(logo, "\n"),
			opts = {
				position = "center",
				hl = "Type"
			}
		}

		local info = {
			type = "text",
			val = os.date(" %d-%m-%Y   %H:%M:%S") .. "   v" .. version.major .. "." .. version.minor .. "." .. version.patch,
			opts = {
				position = "center",
				hl = "String"
			}
		}

		local footer = {
			type = "text",
			val = "",
			opts = {
				position = "center",
				spacing = 1,
				hl = "Function"
			}
		}

		local buttons = {
			type = "group",
			val = {
				dashboard.button( "n", "  > New file", ":ene <BAR> startinsert <CR>", options),
				dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>", options),
				dashboard.button( "r", "  > Recent", ":Telescope oldfiles<CR>", options),
				dashboard.button( "p", "  > Projects", ":lua require('telescope').extensions.project.project{}<CR>", options),
				dashboard.button( "e", "פּ  > Explorer", ":NvimTreeToggle<CR>"),
				-- dashboard.button( "t", "  > Todos", ":TodoTelescope keywords=TODO<CR>"),
				dashboard.button( "l", "  > LSP", ":Mason<CR>"),
				dashboard.button( "z", "  > Plugins", ":Lazy<CR>"),
				dashboard.button( "s", "  > Settings", ":e $MYVIMRC <CR>", options),
				dashboard.button( "q", "  > Quit NVIM", ":qa<CR>", options),
			},
			opts = {
				position = "center",
				spacing = 1,
				hl_shortcut = "String",
				hl = "Comment",
			}
		}

		dashboard.opts = {
			layout = {
				{ type = "padding", val = 4 },
				header,
				{ type = "padding", val = 2 },
				info,
				{ type = "padding", val = 2 },
				buttons,
				{ type = "padding", val = 2 },
				footer,
			},
			opts = {
				margin = 44,
			},
		}

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
				footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}


--                   ▒▒                
--                 ▒▓▓▓▓▒              
--    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓  
--    ▓▓▒░░░░░░░░░░▒▓▒▒▓▓▒░░░░░░░░░░▓▒ 
--     ▓▓▒░░░░░░░░▒▓▒▒▒▒▓▓▒░░░░░░░▒▓▓▒ 
--      ▓▓░░░░░░░░▒▓▒▒▓▓▓▒░░░░░░▒▓▓▓▒  
--     ▒▓▓░░░░░░░░▒▓▓▓▓▒░░░░░░▒▓▓▓▒    
--   ▒▓▓▓▓░░░░░░░░▒▓▓▒░░░░░░▒▓▓▓▒▓▓▓▒  
--  ▒▓▓▒▓▓░░░░░░░░░░░░░░░░▒▓▓▓▒▒▒▒▒▓▓▒ 
-- ▒▓▓▒▒▓▓░░░░░░░░░░░░░░▒▓▓▓▒▒▒▒▒▒▒▒▓▓▒
-- ▒▓▓▓▒▓▓░░░░░░░░░░░░▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒
--   ▒▓▓▓▓░░░░░░░░░░▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒  
--     ▒▓▓░░░░░░░░▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒    
--      ▓▓░░░░░░▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒      
--      ▓▓░░░░▒▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▒        
--      ▓▓▒░▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▒          
--      ▒▓▓▓▓▓▒▒▓▓▓▒▒▒▒▓▓▓▒            
--               ▒▓▓▓▓▓▓▒              
--                 ▒▓▓▒                

 --                   ░░░  ▄▄▄▄▄▄███▄▄▄▄▄                                   
 --                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄                          
 --                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄    
 --                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄
 --    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████
 -- ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀ 
 -- ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀    
 --  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████          
 --    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███          
 --               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██          
 --                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏         
 --          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏         
 --          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏         
 --            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒▒      ██▏  ▄▄     
 --                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄    ░░░░ ▐█▏ ■▀▀     
 --                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█          
 --                                                ▄█████████▄▄             
 --                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏           
 --                                   ▄▄█████▀▀▀▀              ▀■           
 --                                ▄███▀▀▀▀                                 
 --                              ■▀▀                                        
                                                     
 --  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ 
 --  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ 
 -- ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ 
 -- ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  
 -- ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ 
 -- ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ 
 -- ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ 
 --    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    
 --          ░    ░  ░    ░ ░        ░   ░         ░    
 --                                 ░                   
                                                     
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

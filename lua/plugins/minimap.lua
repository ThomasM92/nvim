return {
	"ziontee113/neo-minimap",
	-- lazy = true,
	config = function()
		local nm = require("neo-minimap")

		nm.set({ "<leader>mf", "<leader>ma", "<leader>mi", "<leader>mc", "<leader>mm", "<leader>me", "<leader>mE", "<leader>mI"}, "typescript", {
			query = { [[
			;; query
			((function_declaration) @cap) ;; matches function declarations
			]], [[
			;; query
			((arrow_function) @cap) ;; matches arrow functions
			]], [[
			;; query
			((interface_declaration) @cap) ;; matches arrow functions
			]], [[
			;; query
			((class_declaration) @cap) ;; matches classes
			]], [[
			;; query
			((method_definition) @cap) ;; matches methods
			]], [[
			;; query
			((enum_declaration) @cap) ;; matches enums
			]], [[
			;; query
			((export_statement) @cap) ;; matches exports
			]], [[
			;; query
			((import_statement) @cap) ;; matches imports
			]]
		}})

		nm.set({ "<leader>mf", "<leader>ma", "<leader>mc", "<leader>mm", "<leader>mE", "<leader>mI" }, "javascript", {
			query = { [[
			;; query
			((function_declaration) @cap) ;; matches function declarations
			]], [[
			;; query
			((arrow_function) @cap) ;; matches arrow functions
			]], [[
			;; query
			((class_declaration) @cap) ;; matches classes
			]], [[
			;; query
			((method_definition) @cap) ;; matches methods
			]], [[
			;; query
			((export_statement) @cap) ;; matches exports
			]], [[
			;; query
			((import_statement) @cap) ;; matches imports
			]],
		}})

		nm.setup_defaults({
			height_toggle = { 12, 36 },
			width = 100,
			disable_indentation = true,
		})
	end
}

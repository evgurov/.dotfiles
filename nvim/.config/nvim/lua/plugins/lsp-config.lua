return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- Lua --
					"lua_ls",
					-- Python --
					"basedpyright",
					"ruff",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local blink = require("blink.cmp")

			local capabilities = blink.get_lsp_capabilities({}, false)

			lspconfig.lua_ls.setup({capabilities = capabilities})
			lspconfig.basedpyright.setup({
				settings = {
					basedpyright = {
						analysis = {
							typeCheckingMode = "off",
						},
					},
				},
			})
			lspconfig.ruff.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

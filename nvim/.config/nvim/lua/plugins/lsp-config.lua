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
            local lspconfig   = require("lspconfig")
            local blink       = require("blink.cmp")
            local capabilities = blink.get_lsp_capabilities({}, false)

            ------------------------------------------------------------------------
            -- Make diagnostics pretty
            ------------------------------------------------------------------------

            vim.diagnostic.config({
                virtual_text = true,
                underline = false,
            })

            ------------------------------------------------------------------------
            -- 1. Helper: generic on_attach that adds your key-maps once
            ------------------------------------------------------------------------
            local function on_attach_keys(_, bufnr)
                local map = function(keys, fn, desc)
                    vim.keymap.set("n", keys, fn, { buffer = bufnr, desc = desc })
                end

                map("K",          vim.lsp.buf.hover,        "Hover")
                map("<leader>gd", vim.lsp.buf.definition,   "Go to definition")
                map("<leader>gr", vim.lsp.buf.references,   "References")
                map("<leader>ca", vim.lsp.buf.code_action,  "Code action")
                -- manual formatter
                map("<leader>cf", function()
                    vim.lsp.buf.format({ timeout_ms = 2000 })
                end, "Format (Ruff)")
                -- organize imports
                map('<leader>ci', function()
                    vim.lsp.buf.code_action({
                        context = { only = { 'source.organizeImports' } },
                        apply   = true,
                    })
                end, 'Organise imports (Ruff)')
                map("<leader>d", function()
                    vim.diagnostic.open_float()
                end, "Show diagnostic")
            end

            ------------------------------------------------------------------------
            -- 2. Lua LS (unchanged, but reuse on_attach_keys)
            ------------------------------------------------------------------------
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                on_attach    = on_attach_keys,
            })

            ------------------------------------------------------------------------
            -- 3. basedpyright – turn OFF formatting & code-actions so Ruff can own them
            ------------------------------------------------------------------------
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
                settings = {
                    basedpyright = {
                        analysis = {
                            typeCheckingMode = "off",
                            autoImportCompletions = false,
                        },
                        disableOrganizeImports = true,
                    },
                },
                on_attach = function(client, bufnr)
                    client.server_capabilities.documentFormattingProvider = false
                    client.server_capabilities.codeActionProvider         = false
                    on_attach_keys(client, bufnr)
                end,
            })

            ------------------------------------------------------------------------
            -- 4. Ruff – lint + format + organise-imports, but NO hover/completion
            ------------------------------------------------------------------------
            lspconfig.ruff.setup({
                capabilities = capabilities,
                init_options = {
                    settings = {
                        format          = { enable = true },
                        lint            = { enable = true, select = { "E", "F", "I" } },
                        organizeImports = true,
                    },
                },
                on_attach = function(client, bufnr)
                    client.server_capabilities.hoverProvider      = false
                    client.server_capabilities.completionProvider = nil
                    on_attach_keys(client, bufnr)
                end,
            })
        end,
    },
}

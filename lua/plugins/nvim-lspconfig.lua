local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.icons").diagnostic_signs

local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")
	local capabilities = cmp_nvim_lsp.default_capabilities()

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	-- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = { -- custom settings for lua
			Lua = {
				-- make the language server recognize "vim" global
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					-- make language server aware of runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

	-- json
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jsonc" },
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

	-- typescript
	lspconfig.tsserver.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"typescript",
		},
		root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
	})

	-- bash
	lspconfig.bashls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "sh", "aliasrc" },
	})

	-- solidity
	lspconfig.solidity.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "solidity" },
	})

	-- typescriptreact, javascriptreact, css, sass, scss, less, svelte, vue
	lspconfig.emmet_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"typescriptreact",
			"javascriptreact",
			"javascript",
			"css",
			"sass",
			"scss",
			"less",
			"svelte",
			"vue",
			"html",
		},
	})

	-- docker
	lspconfig.dockerls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	-- C/C++
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
		},
	})

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
	local eslint = require("efmls-configs.linters.eslint")
	local prettier_d = require("efmls-configs.formatters.prettier_d")
	local fixjson = require("efmls-configs.formatters.fixjson")
	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")
	local hadolint = require("efmls-configs.linters.hadolint")
	local solhint = require("efmls-configs.linters.solhint")
	local cpplint = require("efmls-configs.linters.cpplint")
	local clangformat = require("efmls-configs.formatters.clang_format")

	-- configure efm server
	lspconfig.efm.setup({
		filetypes = {
			"lua",
			"python",
			"json",
			"jsonc",
			"sh",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
			"vue",
			"markdown",
			"docker",
			"solidity",
			"html",
			"css",
			"c",
			"cpp",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, black },
				typescript = { eslint, prettier_d },
				json = { eslint, fixjson },
				jsonc = { eslint, fixjson },
				sh = { shellcheck, shfmt },
				javascript = { eslint, prettier_d },
				javascriptreact = { eslint, prettier_d },
				typescriptreact = { eslint, prettier_d },
				svelte = { eslint, prettier_d },
				vue = { eslint, prettier_d },
				markdown = { prettier_d },
				docker = { hadolint, prettier_d },
				solidity = { solhint },
				html = { prettier_d },
				css = { prettier_d },
				c = { clangformat, cpplint },
				cpp = { clangformat, cpplint },
			},
		},
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}

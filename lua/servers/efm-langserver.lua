-- ================================================================================================
-- TITLE : efm-langserver
-- ABOUT : a general purpose language server protocol implemented here for linters/formatters
-- LINKS :
--   > github : https://github.com/mattn/efm-langserver
--   > configs: https://github.com/creativenull/efmls-configs-nvim/tree/main
-- ================================================================================================

--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (from nvim-cmp)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil
return function(lspconfig, capabilities, on_attach)
	local luacheck = require("efmls-configs.linters.luacheck") -- lua linter
	local stylua = require("efmls-configs.formatters.stylua") -- lua formatter
	local flake8 = require("efmls-configs.linters.flake8") -- python linter
	local black = require("efmls-configs.formatters.black") -- python formatter
	local go_revive = require("efmls-configs.linters.go_revive") -- go linter
	local gofumpt = require("efmls-configs.formatters.gofumpt") -- go formatter
	local prettier_d = require("efmls-configs.formatters.prettier_d") -- ts/js/solidity/json/docker/html/css/react/svelte/vue formatter
	local eslint_d = require("efmls-configs.linters.eslint_d") -- ts/js/solidity/json/react/svelte/vue linter
	local fixjson = require("efmls-configs.formatters.fixjson") -- json formatter
	local shellcheck = require("efmls-configs.linters.shellcheck") -- bash linter
	local shfmt = require("efmls-configs.formatters.shfmt") -- bash formatter
	local hadolint = require("efmls-configs.linters.hadolint") -- docker linter
	local cpplint = require("efmls-configs.linters.cpplint") -- c/cpp linter
	local clangformat = require("efmls-configs.formatters.clang_format") -- c/cpp formatter
	local solhint = require("efmls-configs.linters.solhint") -- solidity linter

	lspconfig.efm.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"c",
			"cpp",
			"css",
			"docker",
			"go",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"python",
			"sh",
			"solidity",
			"svelte",
			"typescript",
			"typescriptreact",
			"vue",
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
				c = { clangformat, cpplint },
				cpp = { clangformat, cpplint },
				css = { prettier_d },
				docker = { hadolint, prettier_d },
				go = { gofumpt, go_revive },
				html = { prettier_d },
				javascript = { eslint_d, prettier_d },
				javascriptreact = { eslint_d, prettier_d },
				json = { eslint_d, fixjson },
				jsonc = { eslint_d, fixjson },
				lua = { luacheck, stylua },
				markdown = { prettier_d },
				python = { flake8, black },
				sh = { shellcheck, shfmt },
				solidity = { solhint, prettier_d },
				svelte = { eslint_d, prettier_d },
				typescript = { eslint_d, prettier_d },
				typescriptreact = { eslint_d, prettier_d },
				vue = { eslint_d, prettier_d },
			},
		},
	})
end

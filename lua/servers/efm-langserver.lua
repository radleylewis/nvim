--- Configures the efm-langserver (efm Language Server)
--- Sets up proper diagnostics, workspace library paths, and LSP capabilities
---
--- This configuration is specifically tailored for Neovim Lua development, providing:
--- - Recognition of the global 'vim' variable to prevent diagnostic warnings
--- - Workspace library paths for Neovim runtime and user configuration files
--- - Integration with nvim-lspconfig for consistent LSP behavior
---
--- @param lspconfig table The lspconfig module from nvim-lspconfig plugin
--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @param on_attach function Callback function executed when LSP attaches to a buffer
--- @return nil This function doesn't return a value, it configures the LSP server
return function(lspconfig, capabilities, on_attach)
	local luacheck = require("efmls-configs.linters.luacheck") -- lua linter
	local stylua = require("efmls-configs.formatters.stylua") -- lua formatter
	local flake8 = require("efmls-configs.linters.flake8") -- python linter
	local black = require("efmls-configs.formatters.black") -- python formatter
	local go_revive = require("efmls-configs.linters.go_revive") -- go linter
	local gofumpt = require("efmls-configs.formatters.gofumpt") -- go formatter
	local prettier_d = require("efmls-configs.formatters.prettier_d") -- ts/js/solidity/json/docker/html/css/react/svelte/vue formatter
	local eslint = require("efmls-configs.linters.eslint") -- ts/js/solidity/json/react/svelte/vue linter
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
			"solidity",
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
			"html",
			"css",
			"c",
			"cpp",
			"go",
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
				solidity = { solhint, prettier_d },
				lua = { luacheck, stylua },
				python = { flake8, black },
				json = { eslint, fixjson },
				jsonc = { eslint, fixjson },
				sh = { shellcheck, shfmt },
				javascript = { eslint, prettier_d },
				javascriptreact = { eslint, prettier_d },
				typescript = { eslint, prettier_d },
				typescriptreact = { eslint, prettier_d },
				svelte = { eslint, prettier_d },
				vue = { eslint, prettier_d },
				markdown = { prettier_d },
				docker = { hadolint, prettier_d },
				html = { prettier_d },
				css = { prettier_d },
				c = { clangformat, cpplint },
				cpp = { clangformat, cpplint },
				go = { gofumpt, go_revive },
			},
		},
	})
end

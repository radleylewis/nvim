-- lua
local luacheck = {
  -- src: https://github.com/creativenull/efmls-configs-nvim/blob/main/lua/efmls-configs/linters/luacheck.lua
  prefix = "luacheck",
  lintSource = "luacheck",
  lintCommand = "luacheck --codes --no-color --quiet -",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { "%.%#:%l:%c: (%t%n) %m" },
  rootMarkers = { ".luacheckrc" },
}

-- bash
local shellcheck = {
  -- src: https://github.com/creativenull/efmls-configs-nvim/blob/main/lua/efmls-configs/linters/shellcheck.lua
  prefix = "shellcheck",
  lintSource = "shellcheck",
  lintCommand = "shellcheck --color=never --format=gcc -",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = {
    "-:%l:%c: %trror: %m",
    "-:%l:%c: %tarning: %m",
    "-:%l:%c: %tote: %m",
  },
  rootMarkers = {},
}

-- solidity
local solhint = {
  -- src: https://github.com/creativenull/efmls-configs-nvim/blob/main/lua/efmls-configs/linters/solhint.lua
  prefix = "solhint",
  lintSource = "solhint",
  lintCommand = "solhint --formatter unix stdin | tr -s",
  lintIgnoreExitCode = true,
  lintFormats = {
    "%*[ ]%l:%c%*[ ]%trror%*[ ]%m",
    "%*[ ]%l:%c%*[ ]%tarning%*[ ]%m",
    "%f:%l:%c: %m [%trror/%r]",
    "%f:%l:%c: %m [%tarning/%r]",
  },
  rootMarkers = { ".solhint.json" },
}

-- python
local flake8 = {
  -- src: https://github.com/creativenull/efmls-configs-nvim/blob/main/lua/efmls-configs/linters/flake8.lua
  prefix = "flake8",
  lintSource = "flake8",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintCommand = "flake8 -",
  lintFormats = {
    "stdin:%l:%c: %t%n %m",
  },
  rootMarkers = { "setup.cfg", "tox.ini", ".flake8" },
}

-- javascript, typescript, typescriptreact, javascriptreact
local eslint_d = {
  -- src: https://phelipetls.github.io/posts/configuring-eslint-to-work-with-neovim-lsp/
  prefix = "eslint_d",
  lintSource = "eslint_d",
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintIgnoreExitCode = true,
  lintFormats = {
    "%f:%l:%c: %m",
  },
  rootMarkers = {
    ".eslintrc.ts",
    ".eslintrc.cjs",
    ".eslintrc.js",
    ".eslintrc.json",
    ".eslintrc",
    "package.json",
  },
}

return {
  luacheck = luacheck,
  shellcheck = shellcheck,
  solhint = solhint,
  flake8 = flake8,
  eslint_d = eslint_d,
}

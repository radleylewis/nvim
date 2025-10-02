return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "jay-babu/mason-nvim-dap.nvim",
    "williamboman/mason.nvim",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    ----------------------------------------------------------------------
    -- Debugging Signs (custom icons)
    ----------------------------------------------------------------------
    local debugging_signs = require("utils.icons").debugging_signs
    for name, sign in pairs(debugging_signs) do
      sign = type(sign) == "table" and sign or { sign }
      vim.fn.sign_define(
        "Dap" .. name,
        { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
      )
    end

    ----------------------------------------------------------------------
    -- DAP UI Setup
    ----------------------------------------------------------------------
    dapui.setup()

    ----------------------------------------------------------------------
    -- Mason + Mason-Nvim-Dap Setup
    ----------------------------------------------------------------------
    require("mason").setup()
    require("mason-nvim-dap").setup({
      ensure_installed = { "python", "codelldb", "firefox-debug-adapter" },
      automatic_installation = true,
    })

    local mason_path = vim.fn.stdpath("data") .. "/mason"

    ----------------------------------------------------------------------
    -- Python (debugpy)
    ----------------------------------------------------------------------
    dap.adapters.python = {
      type = "executable",
      command = mason_path .. "/packages/debugpy/venv/bin/python",
      args = { "-m", "debugpy.adapter" },
    }
    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        console = "integratedTerminal",
      },
    }

    ----------------------------------------------------------------------
    -- C / C++ / Rust / Zig (codelldb)
    ----------------------------------------------------------------------
    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = mason_path .. "/bin/codelldb",
        args = { "--port", "${port}" },
      },
    }
    dap.configurations.cpp = {
      {
        name = "Launch executable (codelldb)",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
      },
    }
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
    dap.configurations.zig = dap.configurations.cpp

    ----------------------------------------------------------------------
    -- JavaScript / TypeScript (firefox-debug-adapter)
    ----------------------------------------------------------------------
    dap.adapters.firefox = {
      type = "executable",
      command = mason_path .. "/bin/firefox-debug-adapter",
    }
    dap.configurations.javascript = {
      {
        name = "Debug with Firefox",
        type = "firefox",
        request = "launch",
        reAttach = true,
        url = "http://localhost:3000", -- change to your dev server
        webRoot = "${workspaceFolder}",
        firefoxExecutable = "/usr/bin/firefox", -- adjust for your system
      },
    }
    dap.configurations.typescript = dap.configurations.javascript

    ----------------------------------------------------------------------
    -- DAP-UI Event Listeners
    ----------------------------------------------------------------------
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
      -- Optional: close other UIs during debug
      vim.cmd("NvimTreeClose")
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
}


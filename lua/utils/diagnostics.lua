local diagnostic_signs = {
  Error = " ",
  Warn = " ",
  Hint = "",
  Info = "",
}

for type, icon in pairs(diagnostic_signs) do
  local hl = "DiagnosticSign" .. type
  vim.api.nvim_call_function("sign_define", {
    hl,
    { text = icon, texthl = hl, numhl = "" }
  })
end


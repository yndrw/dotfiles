-- PowerShell buffer-local editor options.
-- PSES formats using the buffer's shiftwidth/expandtab, so these also decide the
-- indent width used when conform runs LSP format-on-save for .ps1 files.
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true

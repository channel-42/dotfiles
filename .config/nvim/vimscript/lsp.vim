" custom signs (nerdfonts needed)
sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError
sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning
sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint

" text prefix
lua <<EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 vim.lsp.diagnostic.on_publish_diagnostics, {
   virtual_text = {
     prefix = " ",
   },
 }
)
EOF

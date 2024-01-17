require'lspconfig'.typst_lsp.setup{
	settings = {
		exportPdf = "onSave", -- Choose onType, onSave or never.
		filetypes = { "typst", "typ" },
        -- serverPath = "" -- Normally, there is no need to uncomment it.
	}
}

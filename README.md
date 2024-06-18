nvim-cmp (Autocomplete)
Basic Shortcuts
<C-Space>: Manually trigger completion.
<C-e>: Abort the completion.
<CR>: Confirm the selection.
<C-b>: Scroll documentation upwards in the completion menu.
<C-f>: Scroll documentation downwards in the completion menu.
Usage Tips
Completion Sources: nvim-cmp integrates multiple sources for completion such as buffer content, LSP, snippets, paths, etc. Configure these sources in the sources section.
Snippet Expansion: If you are using snippets, ensure you have a snippet engine like vsnip installed and properly configured.
nvim-tree.lua (File Explorer)
Basic Shortcuts
<C-n>: Toggle the file explorer.
o: Open a file or folder.
a: Create a new file.
r: Rename a file.
d: Delete a file.
x: Cut a file.
c: Copy a file.
p: Paste a file.
Usage Tips
Navigation: Use the arrow keys or j/k to navigate up and down.
Search: You can search within the tree by typing :, then the search term.
Customization: Customize the tree appearance and behavior by setting options in the setup function, such as showing hidden files or changing the icons.
nvim-lspconfig (LSP Configuration)
Basic Shortcuts
gd: Go to definition.
gD: Go to declaration.
gi: Go to implementation.
gr: Go to references.
K: Show hover documentation.
<leader>rn: Rename symbol.
<leader>ca: Code action.
<leader>f: Format the current buffer.
Usage Tips
Diagnostics: LSP provides real-time diagnostics. Use :lua vim.diagnostic.open_float() to show diagnostics in a floating window.
Hover Documentation: Use K while the cursor is over a symbol to see its documentation.
Code Actions: Use <leader>ca to see available code actions (e.g., quick fixes or refactorings).
Completion: LSP integrates with nvim-cmp to provide completions based on language server data.
Capabilities: Ensure you pass the correct capabilities to the LSP server for full functionality with nvim-cmp.

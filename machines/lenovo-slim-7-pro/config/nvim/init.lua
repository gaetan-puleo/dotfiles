if(not vim.g.vscode) then
	-- vim.cmd('source ~/.config/nvim/config/hi-override.vim')
	require('config/settings')
	require('config/mapping')
	require('plugins')

end

if(vim.g.vscode) then
	require('config/settings')
	require('config/mapping')
end

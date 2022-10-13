local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

--local tex_group = vim.api.nvim_create_augroup('Latex', { clear = true })
--local set_bind = vim.api.nvim_set_keymap('n', ';b', 'i\\begin{center}', { noremap = true, expr = true })
--vim.api.nvim_create_autocmd('FileType', { command = set_bind, group = tex_group, pattern = '*.tex' })

local status, packer = pcall(require, "packer")
if not status then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return packer.startup(function(use)
-- Packer
    use "wbthomason/packer.nvim"
	use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

-- cmp
    use "hrsh7th/nvim-cmp"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lua"

-- snippets
    use "dcampos/nvim-snippy"
	use "dcampos/cmp-snippy"

-- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

-- Colorsheme
--    use "morhetz/gruvbox"
--    use "Mofiqul/dracula.nvim"
--	use "arcticicestudio/nord-vim"

-- Other
    use "windwp/nvim-autopairs"
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "akinsho/bufferline.nvim"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)

local options = {
    tabstop = 4, -- insert 4 spaces for a tab
    softtabstop = 4,
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    expandtab = true, -- convert tabs to spaces

    smartindent = true,

    wrap = false, -- display lines as one long line


    swapfile = false, -- creates a swapfile
    backup = false, -- creates a backup file
    undodir = os.getenv("HOME") .. "/.vim/undodir", -- set an undo directory
    undofile = true, -- enable persistent undo


    hlsearch = false, -- highlight all matches on previous search pattern
    incsearch = true,

    termguicolors = true, -- set term gui colors (most terminals support this)
    scrolloff = 8, -- minimal number of screen lines to keep above and below the cursor.
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time


    updatetime = 50, -- faster completion

    colorcolumn = "80",

    completeopt = { "menu","menuone", "noselect" },
    conceallevel = 0, -- so that `` is visible in markdown files
    fileencoding = "utf-8", -- the encoding written to a file
    foldmethod = "manual", -- folding, set to "expr" for treesitter based folding
    foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    guifont = "monospace:h17", -- the font used in graphical neovim applications
    hidden = true, -- required to keep multiple buffers and open multiple buffers
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    pumheight = 10, -- pop up menu height
    showmode = true, -- we don't need to see things like -- INSERT -- anymore
    smartcase = true, -- smart case
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
    title = true, -- set the title of window to the value of the titlestring
    -- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    --shadafile = join_paths(get_cache_dir(), "lvim.shada"),
    sidescrolloff = 8, -- minimal number of screen lines to keep left and right of the cursor.
    showcmd = false,
    ruler = false,
    laststatus = 3,
    relativenumber = true,
}

-- vim.opt.fillchars

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.isfname:append("@-@")








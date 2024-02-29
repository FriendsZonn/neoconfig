-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    cmd = { "clangd", "--background-index" },                                          -- 指定 Clangd 的命令和选项
    filetypes = { "c", "cpp" },                                                        -- 支持的文件类型
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "CMakeLists.txt"), -- 项目根目录的查找模式
    settings = {
        ["clangd"] = {
            compileCommands = { "path/to/compile_commands.json" }, -- 编译命令文件的路径
            usePlaceholders = true,                                -- 是否使用占位符
            completeUnimported = true,                             -- 是否自动补全未导入的头文件
            semanticHighlighting = true,                           -- 是否启用语义高亮
        }
    },
}

vim.g.neovide_transparency = 0.8
vim.g.neovide_hide_mouse_when_typing = false
vim.g.neovide_refresh_rate = 120
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_fullscreen = true
vim.g.neovide_remember_window_size = false
vim.g.neovide_profiler = false
vim.g.neovide_cursor_animation_length = 0.13
vim.g.neovide_cursor_trail_size = 0.9
vim.g.neovide_cursor_antialiasing = false 
vim.g.neovide_cursor_vfx_mode = "wireframe"
vim.g.neovide_cursor_vfx_opacity = 190.0
vim.g.neovide_cursor_vfx_particle_speed = 20.0


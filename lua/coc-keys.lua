-- 使用 Tab 键触发补全并导航
-- 注意：默认情况下总是会选中一个补全项，你可以通过在配置文件中
-- 设置 `"suggest.noselect": true` 来禁用默认选中
-- 注意：使用命令 ':verbose imap <tab>' 确保 Tab 键在添加到配置前
-- 没有被其他插件映射
local map = vim.api.nvim_set_keymap
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
map("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- 使用 <CR> 接受选中的补全项或通知 coc.nvim 格式化
-- <C-g>u 会打断当前的撤销，请根据需要选择
map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- 使用 <c-j> 触发代码片段
--map("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- 使用 <c-space> 触发补全
map("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

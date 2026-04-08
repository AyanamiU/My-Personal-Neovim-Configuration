# Neovim 个人配置

这是一个功能完整的 Neovim 配置，适合日常开发使用。配置使用 Lua 编写，基于 lazy.nvim 插件管理器。

## 特性

- 🎨 **主题**: Catppuccin 配色方案
- 📁 **文件管理**: NvimTree + NERDTree 双文件浏览器
- 🔍 **模糊搜索**: Telescope 快速查找文件和内容
- 📝 **Markdown 支持**: 实时预览和思维导图生成
- 📊 **状态栏**: Lualine 美化状态栏
- 🔖 **标签页管理**: Barbar 标签页增强
- 🔧 **代码格式化**: Conform.nvim 支持多语言格式化
- 📐 **LaTeX 支持**: VimTeX 集成 SumatraPDF
- 💻 **终端集成**: ToggleTerm 浮动终端
- 🧩 **LeetCode**: 内置 LeetCode 刷题支持（中文）
- 🤖 **AI 辅助**: vim-ai 集成

## 安装

### 前置要求

- Neovim >= 0.9.0
- Git
- Node.js 和 npm（用于 Markdown 预览）
- 可选：SumatraPDF（用于 LaTeX 预览）

### 安装步骤

1. 备份现有配置（如果有）：
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. 克隆此配置：
```bash
git clone https://github.com/AyanamiU/My-Personal-Neovim-Configuration.git ~/.config/nvim
```

3. 启动 Neovim，插件会自动安装：
```bash
nvim
```

## 快捷键

### 通用

- `<Space>` - Leader 键
- `jj` - 退出插入模式（等同于 `<Esc>`）
- `<Alt-Up/Down>` - 上下移动当前行
- `<Ctrl-c>` - 可视模式下复制到系统剪贴板
- `<Ctrl-x>` - 可视模式下剪切到系统剪贴板
- `<Ctrl-/>` - 快速注释/取消注释

### 自定义按键映射

- `u` - 向上移动（替代 `k`）
- `k` - 向右移动（替代 `l`）

### 文件浏览

- `<Space>e` - 切换 NvimTree
- `<Ctrl-e>` - 切换 NERDTree

### Buffer 管理

- `<Space>[` - 上一个 buffer
- `<Space>]` - 下一个 buffer
- `<Space>w` - 关闭当前 buffer
- `<Space>1-9` - 跳转到第 1-9 个 buffer
- `<Space>0` - 跳转到最后一个 buffer

### 诊断

- `<Space>d` - 显示当前行的诊断信息

## 支持的语言格式化

配置了以下语言的自动格式化（保存时触发）：

- **Lua**: lua_ls
- **C/C++**: clang-format（Google 风格）
- **JavaScript/TypeScript**: ts_ls
- **Rust**: rust_analyzer
- **Go**: gopls

## LeetCode 配置

LeetCode 插件配置为中文模式，题目会自动翻译。代码保存在 `~/CODE/leetcode` 目录。

C++ 模板自动包含常用头文件：
```cpp
#include <stack>
#include <queue>
#include <vector>
#include <string>
using namespace std;
```

## 插件列表

### 核心插件（lazy.nvim）

- **catppuccin/nvim** - 主题
- **nvim-tree/nvim-tree.lua** - 文件浏览器
- **nvim-telescope/telescope.nvim** - 模糊搜索
- **nvim-lualine/lualine.nvim** - 状态栏
- **romgrk/barbar.nvim** - 标签页管理
- **stevearc/conform.nvim** - 代码格式化
- **akinsho/toggleterm.nvim** - 终端管理
- **windwp/nvim-autopairs** - 自动括号配对
- **lervag/vimtex** - LaTeX 支持
- **rainLyn/leetcode.nvim** - LeetCode 集成
- **Zeioth/markmap.nvim** - Markdown 思维导图

### vim-plug 插件

- **scrooloose/nerdtree** - 经典文件浏览器
- **iamcco/markdown-preview.nvim** - Markdown 实时预览
- **madox2/vim-ai** - AI 辅助编程

## 基础设置

- 显示行号
- 启用真彩色
- 缩进设置：4 空格
- 折叠方式：indent（默认不折叠）
- 光标样式：插入模式下为竖线

## 自定义

你可以根据需要修改以下文件：

- `init.lua` - 主配置文件
- `lua/key-maps.lua` - 快捷键映射
- `lua/plugins/*.lua` - 各插件的配置

## 许可

本配置供个人使用和参考，欢迎 fork 和修改。

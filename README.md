# Personalized Neovim configuration
<p align="center"><img src="https://i.imgur.com/EZgWYIe.png"></p>
Based heavily on Vimjoyer's great starter setup guide: https://www.youtube.com/watch?v=Co7gcSvq6jA

## Goals
This configuration aims to be a lightweight, minimalist, modern, general-purpose IDE. It should both look nice and feel nice.

## Installation
The configuration is currently only written for Windows users. There's still issues with native fzf on certain machines though.
In general the installation is this:
1. Navigate to ```C:\Users\<username>\AppData\Local```
2. Delete the directories nvim and nvim-data if they exist
3. Run:
```git clone https://github.com/AronF/nvim --depth 1```

## Packages
### Essentials:
- **Lazy:** for general package management
- **Mason:** for LSP management
- **Neodev:** for providing the lua LSP with neovim development context
- **CMP:** for code completion
- **LuaSnip:** for snippet managements
- **friendly-snippets:** a library of snippets in different languages
- **Treesitter:** for parsing
### Useful:
- **Telescope:** fuzzy finding and other helpful tools
- **nvim-tree:** modern integrated file explorer. (Uses <C-n> to open)
- **which-key:** helpful tips for vim macros
- **Autopairs:** modern style auto-close for brackets
- **Surround:** collection of macros to surround selections
- **TreeSJ:** automatically expand or contract blocks
### Theme:
- **Melange:** for a soft and easy colorscheme
- **Lualine:** Neovim statusline, configured with "jellybeans" theme

## Custom Snippets
The configuration overrides the snippets provided in friendly-snippets in the global context and for C. This is done to make the coding experience even more minimal.
In addition, global snippets have been provided as shorthands for size operators. I.e. "lt" becomes "<" (**L**ess **t**han). This is simply because my personal keyboard configuration doesn't have the < and > keys.

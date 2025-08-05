# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LazyVim-based Neovim configuration with extensive customizations for R development, note-taking with Neorg, and general programming. The configuration is built on top of LazyVim's plugin management system and includes specialized configurations for various workflows.

## Architecture

- **Entry Point**: `init.lua` bootstraps the configuration by requiring `config.lazy`
- **Core Configuration**: Located in `lua/config/`
  - `lazy.lua`: Plugin manager setup and LazyVim configuration
  - `options.lua`: Vim options and settings
  - `keymaps.lua`: Custom key mappings
  - `autocmds.lua`: Auto-commands
- **Plugin Configurations**: Individual plugin configs in `lua/plugins/`
- **LazyVim Extras**: Configured via `lazyvim.json` for language support (Python, JSON, Markdown, YAML, TypeScript)

## Key Features & Workflows

### R Development
- Uses R.nvim plugin with radian console integration
- Custom keymaps: `<Enter>` sends lines/selections to R console
- Auto-start R console when `R_AUTO_START=true` environment variable is set
- Pipe operator mapping: `<localleader>,` for magrittr pipes

### Note-taking (Neorg)
- Multiple workspaces configured: work, trading, tech, life, plan
- Custom keymaps for workspace switching:
  - `<leader>wt`: trading workspace
  - `<leader>ww`: work workspace
  - `<leader>wj`: journal custom
  - `<leader>wi`: inject metadata
  - `<leader>wl`: magnify code block

### Code Formatting
- StyLua configuration: 2-space indentation, 120 column width
- Consistent with Lua configuration standards

### Development Environment
- Terminal: PowerShell on Windows, standard shell on Linux
- Python host: `/usr/bin/python3` (Linux) with hostname-specific paths on Windows
- Neovide GUI support with font scaling keymaps

## Common Commands

### Plugin Management
```bash
# Update plugins (run from within Neovim)
:Lazy update

# Check plugin status
:Lazy

# Sync parsers for Neorg
:Neorg sync-parsers
```

### R Development
```bash
# Start R with auto-start
R_AUTO_START=true nvim file.R

# Within R files:
# <Enter> - Send current line to R console
# <localleader>, - Insert pipe operator (%>%)
```

### Code Formatting
```bash
# Format Lua files with StyLua
stylua .
```

## Important Configuration Details

- **Lazy Loading**: Most plugins are not lazy-loaded by default (`lazy = false`)
- **Colorscheme**: Tokyo Night with fallback to habamax
- **Completion**: Uses nvim-cmp with R completion support
- **Clipboard**: System clipboard integration enabled
- **Line Numbers**: Relative line numbers enabled
- **Folding**: Manual folding enabled
- **Proxy Support**: Copilot proxy configuration for specific hostnames

## File Structure Notes

- Plugin configurations are modular - each plugin has its own file in `lua/plugins/`
- Custom options override LazyVim defaults in `lua/config/options.lua`
- All custom keymaps are centralized in `lua/config/keymaps.lua`
- The configuration supports both Linux and Windows environments with conditional settings
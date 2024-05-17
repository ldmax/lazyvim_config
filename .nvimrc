version 6.0
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-G>Þ <Nop>
inoremap <silent> <C-G> <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
inoremap <silent> <C-S> <Cmd>w
inoremap <silent> <M-k> <Cmd>m .-2==gi
inoremap <silent> <M-j> <Cmd>m .+1==gi
inoremap <silent> <expr> <BS> v:lua.MiniPairs.bs()
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
imap <silent> <expr> <C-J> copilot#Accept("")
imap <M-C-Right> <Plug>(copilot-accept-line)
imap <M-Right> <Plug>(copilot-accept-word)
imap <M-Bslash> <Plug>(copilot-suggest)
imap <M-[> <Plug>(copilot-previous)
imap <M-]> <Plug>(copilot-next)
imap <Plug>(copilot-suggest) <Cmd>call copilot#Suggest()
imap <Plug>(copilot-previous) <Cmd>call copilot#Previous()
imap <Plug>(copilot-next) <Cmd>call copilot#Next()
imap <Plug>(copilot-dismiss) <Cmd>call copilot#Dismiss()
inoremap <C-W> u
inoremap <C-U> u
tnoremap <silent>  <Cmd>wincmd h
nnoremap <silent>  h
tnoremap <silent> <NL> <Cmd>wincmd j
nnoremap <silent> <NL> j
tnoremap <silent>  <Cmd>wincmd k
nnoremap <silent>  k
tnoremap <silent>  <Cmd>wincmd l
nnoremap <silent>  l
snoremap <silent>  <Cmd>w
nnoremap <silent>  <Cmd>w
xnoremap <silent>  <Cmd>w
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nmap  d
tnoremap <silent>  
nnoremap <silent>  <Cmd>noh
tnoremap <silent>  <Cmd>close
nmap  E  fE
nmap  e  fe
nnoremap <silent>  nÞ <Nop>
nnoremap  a <Cmd>AerialToggle!
nnoremap  sT <Cmd>TodoTelescope keywords=TODO,FIX,FIXME
nnoremap  st <Cmd>TodoTelescope
nnoremap  xT <Cmd>TodoTrouble keywords=TODO,FIX,FIXME
nnoremap  xt <Cmd>TodoTrouble
nnoremap <silent>  fp <Cmd>Telescope projects
nnoremap <silent>  nl <Cmd>Neorg keybind all core.looking-glass.magnify-code-block
nnoremap <silent>  ni <Cmd>Neorg inject-metadata
nnoremap <silent>  nj <Cmd>Neorg journal custom
nnoremap <silent>  nw <Cmd>Neorg workspace work
nnoremap <silent>  nt <Cmd>Neorg workspace trading
nnoremap <silent>  ; <Cmd>Dashboard
nnoremap <silent>  	[ <Cmd>tabprevious
nnoremap <silent>  	d <Cmd>tabclose
nnoremap <silent>  	] <Cmd>tabnext
nnoremap <silent>  		 <Cmd>tabnew
nnoremap <silent>  	f <Cmd>tabfirst
nnoremap <silent>  	l <Cmd>tablast
nnoremap <silent>  | v
nnoremap <silent>  - s
nnoremap <silent>  w| v
nnoremap <silent>  w- s
nnoremap <silent>  wd c
nnoremap <silent>  ww p
nnoremap <silent>  uI <Cmd>InspectTree
nnoremap <silent>  qq <Cmd>qa
nnoremap <silent>  xq <Cmd>copen
nnoremap <silent>  xl <Cmd>lopen
nnoremap <silent>  fn <Cmd>enew
nnoremap <silent>  l <Cmd>Lazy
nnoremap <silent>  K <Cmd>norm! K
nnoremap <silent>  ur <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent>  bD <Cmd>:bd
nnoremap <silent>  ` <Cmd>e #
nnoremap <silent>  bb <Cmd>e #
nnoremap  sD <Cmd>Telescope diagnostics
nnoremap  sd <Cmd>Telescope diagnostics bufnr=0
nnoremap  sC <Cmd>Telescope commands
nnoremap  sc <Cmd>Telescope command_history
nnoremap  sb <Cmd>Telescope current_buffer_fuzzy_find
nnoremap  sa <Cmd>Telescope autocommands
nnoremap  s" <Cmd>Telescope registers
nnoremap  gs <Cmd>Telescope git_status
nnoremap  gc <Cmd>Telescope git_commits
nnoremap  fr <Cmd>Telescope oldfiles
nnoremap  fg <Cmd>Telescope git_files
nnoremap  fb <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  : <Cmd>Telescope command_history
nnoremap  , <Cmd>Telescope buffers sort_mru=true sort_lastused=true
nnoremap  sR <Cmd>Telescope resume
nnoremap  so <Cmd>Telescope vim_options
nnoremap  sm <Cmd>Telescope marks
nnoremap  sM <Cmd>Telescope man_pages
nnoremap  sk <Cmd>Telescope keymaps
nnoremap  sH <Cmd>Telescope highlights
nnoremap  sh <Cmd>Telescope help_tags
nnoremap  bl <Cmd>BufferLineCloseLeft
nnoremap  br <Cmd>BufferLineCloseRight
nnoremap  bo <Cmd>BufferLineCloseOthers
nnoremap  bP <Cmd>BufferLineGroupClose ungrouped
nnoremap  bp <Cmd>BufferLineTogglePin
xnoremap <silent>  uÞ <Nop>
xnoremap <silent>  bÞ <Nop>
xnoremap <silent>  cÞ <Nop>
xnoremap <silent>  mÞ <Nop>
xnoremap <silent>  xÞ <Nop>
xnoremap <silent>  snÞ <Nop>
xnoremap <silent>  sÞ <Nop>
xnoremap <silent>  	Þ <Nop>
xnoremap <silent>  ghÞ <Nop>
xnoremap <silent>  gÞ <Nop>
xnoremap <silent>  vÞ <Nop>
xnoremap <silent>  wÞ <Nop>
xnoremap <silent>  fÞ <Nop>
xnoremap <silent>  dÞ <Nop>
xnoremap <silent>  qÞ <Nop>
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
nnoremap <silent>  mÞ <Nop>
nnoremap <silent>  iÞ <Nop>
nnoremap <silent>  uÞ <Nop>
nnoremap <silent>  	Þ <Nop>
nnoremap <silent>  ghÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  wÞ <Nop>
nnoremap <silent>  dÞ <Nop>
nnoremap <silent>  qÞ <Nop>
nnoremap <silent>  cÞ <Nop>
nnoremap <silent>  xÞ <Nop>
nnoremap <silent>  snÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  fÞ <Nop>
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap  if :IronFocus
nnoremap  ih :IronHide
nnoremap  ia :IronAttach
nnoremap  cm <Cmd>Mason
nnoremap  v :lua Toggle_venn()
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
vnoremap <silent> < <gv
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
vnoremap <silent> > >gv
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
xnoremap <silent> <expr> @ mode() == 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap H <Cmd>BufferLineCyclePrev
nnoremap L <Cmd>BufferLineCycleNext
onoremap <silent> <expr> N 'nN'[v:searchforward]
xnoremap <silent> <expr> N 'nN'[v:searchforward]
nnoremap <silent> <expr> N 'nN'[v:searchforward].'zv'
xnoremap <silent> <expr> Q mode() == 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
nnoremap [b <Cmd>BufferLineCyclePrev
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap ]b <Cmd>BufferLineCycleNext
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap ds <Plug>(nvim-surround-delete)
nnoremap <silent> daÞ <Nop>
nnoremap <silent> diÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
xnoremap gS <Plug>(nvim-surround-visual-line)
xnoremap <silent> gsÞ <Nop>
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> gsÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gcc <Cmd>set operatorfunc=CommentOperatorg@l
xnoremap gc :call CommentOperator(visualmode())
nnoremap gc <Cmd>set operatorfunc=CommentOperatorg@
onoremap ic <Cmd>lua require('nvim_comment').select_comment_chunk()
xnoremap ic <Cmd>lua require('nvim_comment').select_comment_chunk()
xnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
xnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
onoremap <silent> <expr> n 'Nn'[v:searchforward]
xnoremap <silent> <expr> n 'Nn'[v:searchforward]
nnoremap <silent> <expr> n 'Nn'[v:searchforward].'zv'
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
xnoremap <silent> zÞ <Nop>
xnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
tnoremap <silent> <C-_> <Cmd>close
tnoremap <silent> <C-/> <Cmd>close
tnoremap <silent> <C-L> <Cmd>wincmd l
tnoremap <silent> <C-K> <Cmd>wincmd k
tnoremap <silent> <C-J> <Cmd>wincmd j
tnoremap <silent> <C-H> <Cmd>wincmd h
snoremap <silent> <C-S> <Cmd>w
nnoremap <silent> <C-S> <Cmd>w
xnoremap <silent> <C-S> <Cmd>w
vnoremap <silent> <M-k> :m '<-2gv=gv
vnoremap <silent> <M-j> :m '>+1gv=gv
nnoremap <silent> <M-k> <Cmd>m .-2==
nnoremap <silent> <M-j> <Cmd>m .+1==
nnoremap <silent> <C-Right> <Cmd>vertical resize +2
nnoremap <silent> <C-Left> <Cmd>vertical resize -2
nnoremap <silent> <C-Down> <Cmd>resize -2
nnoremap <silent> <C-Up> <Cmd>resize +2
nnoremap <silent> <C-K> k
nnoremap <silent> <C-J> j
nnoremap <silent> <C-H> h
xnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
nnoremap <silent> <expr> <Up> v:count == 0 ? 'gk' : 'k'
xnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> <Down> v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
vnoremap <silent> <Plug>(calendar) :Calendar
nnoremap <silent> <Plug>(calendar) :Calendar
nmap <C-W><C-D> d
nnoremap <silent> <C-L> l
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
imap <silent> <expr> <NL> copilot#Accept("")
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent>  <Cmd>w
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>noh
inoremap <expr> " v:lua.MiniPairs.closeopen('""', "[^\\].")
inoremap <expr> ' v:lua.MiniPairs.closeopen("''", "[^%a\\].")
inoremap <expr> ( v:lua.MiniPairs.open("()", "[^\\].")
inoremap <expr> ) v:lua.MiniPairs.close("()", "[^\\].")
inoremap <silent> , ,u
inoremap <silent> . .u
inoremap <silent> ; ;u
inoremap <expr> [ v:lua.MiniPairs.open("[]", "[^\\].")
inoremap <expr> ] v:lua.MiniPairs.close("[]", "[^\\].")
inoremap <expr> ` v:lua.MiniPairs.closeopen("``", "[^\\`].")
inoremap <expr> { v:lua.MiniPairs.open("{}", "[^\\].")
inoremap <expr> } v:lua.MiniPairs.close("{}", "[^\\].")
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set clipboard=unnamedplus
set cmdheight=0
set completeopt=menuone,noselect
set confirm
set expandtab
set fillchars=diff:╱,eob:\ ,fold:\ ,foldclose:,foldopen:,foldsep:\ 
set formatexpr=v:lua.require'lazyvim.util'.format.formatexpr()
set formatoptions=qntlj
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set guicursor=a:NoiceHiddenCursor
set helplang=en
set ignorecase
set iskeyword=@,48-57,_,192-255,-
set laststatus=3
set noloadplugins
set nomodeline
set mouse=a
set packpath=/tmp/.mount_nvim.aKhq9Mr/usr/share/nvim/runtime
set pumblend=10
set pumheight=10
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/headlines.nvim,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/persistence.nvim,~/.local/share/nvim/lazy/nvim-notify,~/.local/share/nvim/lazy/flash.nvim,~/.local/share/nvim/lazy/mini.pairs,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/ChatGPT.nvim,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/project.nvim,~/.local/share/nvim/lazy/bufferline.nvim,~/.local/share/nvim/lazy/nvim-surround,~/.local/share/nvim/lazy/noice.nvim,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/cmp-buffer,~/.local/share/nvim/lazy/nvim-snippets,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/copilot.lua,~/.local/share/nvim/lazy/copilot-cmp,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/luarocks.nvim,~/.local/share/nvim/lazy/neorg,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/iron.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/lazygit.nvim,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/neodev.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/neoconf.nvim,~/.local/share/nvim/lazy/nvim-dap-python,~/.local/share/nvim/lazy/lua-json5,~/.local/share/nvim/lazy/nvim-dap-vscode-js,~/.local/share/nvim/lazy/vscode-js-debug,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/mason-nvim-dap.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/nvim-dap-virtual-text,~/.local/share/nvim/lazy/nvim-nio,~/.local/share/nvim/lazy/nvim-dap-ui,~/.local/share/nvim/lazy/nvim-dap,~/.local/share/nvim/lazy/one-small-step-for-vimkind,~/.local/share/nvim/lazy/calendar.vim,~/.local/share/nvim/lazy/aerial.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/copilot-status.nvim,~/.local/share/nvim/lazy/nvim-comment,~/.local/share/nvim/lazy/venn.nvim,~/.local/share/nvim/lazy/copilot.vim,~/.local/share/nvim/lazy/tokyonight.nvim,~/.local/share/nvim/lazy/LazyVim,/tmp/.mount_nvim.aKhq9Mr/usr/share/nvim/runtime,/tmp/.mount_nvim.aKhq9Mr/usr/share/nvim/runtime/pack/dist/opt/matchit,/tmp/.mount_nvim.aKhq9Mr/usr/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/cmp-buffer/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after
set scrolloff=8
set sessionoptions=buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds
set shiftround
set shiftwidth=2
set shortmess=loTtWIFcOC
set noshowmode
set showtabline=2
set sidescrolloff=8
set smartcase
set smartindent
set splitbelow
set splitkeep=screen
set splitright
set statusline=%#Normal#
set noswapfile
set tabstop=2
set termguicolors
set timeoutlen=300
set undofile
set undolevels=10000
set updatetime=300
set virtualedit=block
set whichwrap=bs<>[]hl
set wildmode=longest:full,full
set window=33
set winminwidth=5
set nowritebackup
" vim: set ft=vim :

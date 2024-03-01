" NeoVim configuration settings.
" 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting for all supported programming languages.
syntax on

" Set a visual, colored column at 80 characters
:highlight ColorColumn ctermbg=red
:set colorcolumn=80

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Enable command-line completion that allows you to tab through a horizontal
" menu of possible commands.
set wildmenu
set wildmode=longest:list,full

" Show partial commands in the last line of the screen.
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"------------------------------------------------------------
" Usability options {{{1
"
" Use case insensitive search except when using capital letters.
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action.
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window.
set ruler

" Always display the status line, even if only one window is displayed.
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong.
set visualbell

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'.
set pastetoggle=<F11>

" Show invisible characters such as whitespaces, indents and end of line.
set list
set listchars=tab:>-,trail:-,nbsp:+,eol:$

" highlight non-text as gray.
highlight NonText ctermfg=Gray guifg=Gray
highlight Whitespace ctermfg=Gray guifg=Gray
match Whitespace /\s\+/

" Create swap files in a temporary folder under the NeoVim config folder.
set backupdir=~/.config/nvim/tmp
set directory=~/.config/nvim/tmp

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Use recommended tab and indentation settings for Python.
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default.
map Y y$

" Map tab and shift-tab to cycle through buffers.
:nnoremap <Tab> :bnext<CR>

:nnoremap <S-Tab> :bprevious<CR>

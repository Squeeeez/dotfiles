" ===================================================================
" SETTING OPTIONS
" ===================================================================
" There are many options for Vim:
" VIM-5.4   [1999-07-26] 218 options.
" VIM-5.7   [2000-06-24] 219 options.
" VIM-6.1   [2002-03-24] 310 options.
" VIM-6.2   [2003-06-01] 322 options.
" VIM-6.4   [2006-01-12] 324 options. (:opt -> 275 options)
" VIM-7.4   [2013-11-07] 377 options. (:opt -> 302 options)
" check the source with the following command:
" grep '{".*P_' src/option.c | wc -l
" ===================================================================
"
"       autoindent, paste, textwidth:
"       I keep changing these values - just as the case may be.
"       Now, if functions keys actually worked on all keyboards
"       then I'd probably defines a toggle for each of them...
"
"       autoindent:  "off" as I usually do not write code.
  set   autoindent
"
"       autowrite: Automatically save modifications to files
"       when you use critical (rxternal) commands.
  set   autowrite
"
"       backup:  backups are for wimps  ;-)
  set nobackup
"
"       backspace:  '2' allows backspacing" over
"       indentation, end-of-line, and start-of-line.
"       see also "help bs".
  set   backspace=2
"
"       background:  Are we using a "light" or "dark" background?
  set   background=dark
"
"       compatible:  Let Vim behave like Vi?  Hell, no!
  set nocompatible
"
"       comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
" set   comments=b:#,:%,fb:-,n:>,n:)
  set   comments=b:#,:%,n:>,n:)
"
"       cpoptions you should get to know - source of many FAQs!  ;-)
"       cpoptions:  "compatible options" to match Vi behaviour
" set   cpoptions="aABceFs"   "default!
"       FAQ:  Do NOT include the flag '<' if you WANT angle notation!
"
"       dictionary: english words first
  set dictionary=/usr/dict/words,/local/lib/german.words,~/.vim/dictionary
" set dictionary=~/.vim/dictionary
" expand words from dictionaries, too:
  set complete+=k
" /usr/share/dict/american-english
" /usr/share/dict/german
" /usr/share/dict/ngerman
" /usr/share/dict/words

"       Source for dictionaries (in unix-format):
"       ftp://ftp.fu-berlin.de/misc/dictionaries/unix-format/
"       However, these are quite old.  Is there a better source?
"
"       digraph:    allows entering special characters
"       by a combination of two characters -> :help digraph
"       2007-04-27: on an utf8 terminal it causes errors
"       of no end though because whenever you make a typo
"       and you erase with CTRL-H then you almost alyway
"       get a digraph of some sort.  :-/
  set   nodigraph
"
"       errorbells: damn this beep!  ;-)
"       "vi has two modes - one in which it beeps
"       and another inw hich it doesn't."
  set noerrorbells
"
"       esckeys:    allow usage of cursor keys within insert mode
"       You will find this useful when working, eg, on SunOS.
if !has('nvim')
  set   esckeys
endif
"
" In case you want this for SunOS only:
" if system('uname')=='SunOS'
"   set ek
" endif
"
"       expandtab:  Expand Tabs?  Rather not.
"                   See 'listchars' to make Tabs visible!
  set noexpandtab
"
"       formatoptions:  Options for the "text format" command ("gq")
"                       I need all those options (but 'o')!
  set   formatoptions=qrnwl1j
"
"       helpheight: zero disables this.
  set   helpheight=0
"
"       helpfile:  path+filename of the main helpfile, ie "help.txt"
" set   helpfile=c:\\vim-4.6\\docs\\help.txt
" set   helpfile=c:/vim-4.6/docs/help.txt
" On Windows, I put the Vim helpfiles
" into the directory C:\VIM-version, eg C:\VIM-62
"
"       hidden:  Allow "hidden" buffers.  A must-have!
  set   hidden
"
"       highlighting modes for special groups
"       highlight=8b,db,es,is,mb,Mn,nu,rs,sr,tb,vr,ws
" set   highlight=8r,db,es,is,mb,Mr,nu,rs,sr,tb,vr,ws
  " two changes:  ^              ^
  " all highlighting - all OFF:
" set " highlight=8-,@-,d-,e-,i-,m-,M-,n-,r-,s-,S-,c-,t-,v-,w-,W-,f-,F-,A-,C-,D-,T-,>-
"       highlight=8b,@?,db,es,is,mb,Mn,nu,rs,sr,tb,vr,ws
"
"       highlight default:
"         8:SpecialKey,
"         @:NonText,
"         d:Directory,
"         e:ErrorMsg,
"         i:IncSearch,
"         l:Search,
"         m:MoreMsg,
"         M:ModeMsg,
"         n:LineNr,
"         r:Question,
"         s:StatusLine,
"         S:StatusLineNC,
"         c:VertSplit,
"         t:Title,
"         v:Visual,
"         V:VisualNOS,
"         w:WarningMsg,
"         W:WildMenu,
"         f:Folded,
"         F:FoldColumn,
"         A:DiffAdd,
"         C:DiffChange,
"         D:DiffDelete,
"         T:DiffText,
"         >:SignColumn
"
"       hlsearch :  highlight search - show the current search pattern
"       This is a nice feature sometimes - but it sure can get in the
"       way sometimes when you edit.
  set   hlsearch
  set   incsearch
"
"       icon:       i do not need no steekeen icon title string.
  set noicon
"
" set   iconstring  file of icon (icons?  on a terminal?  pff!)
" set   iconstring
"
"       ignorecase:  ignore the case in search patterns?  NO!
  set noignorecase
"
"       insertmode:
" FAQ:  Q: How can I quit insertmode when using this option?
"       A: The option "insertmode" was not meant for "start Vim in
"       insert mode" only; the idea is to *stay* in insert mode.
"       Anyway, you can use the command |i_CTRL-O| to issue commands.
  set noinsertmode
"
"
"       iskeyword:
"       iskeyword=@,48-57,_,192-255   (default)
" Add the dash ('-'), the dot ('.'), and the '@' as "letters" to "words".
" This makes it possible to expand email and html addresses,
" eg foobar@vim.org and http://www.vim.org/
  set     iskeyword=@,48-57,_,192-255,-,.,:,/,@-@
  map ,isk :set isk=@,48-57,_,192-255,-,.,:,/,@-@
"
"       joinspaces:
"       insert two spaces after a period with every joining of lines.
"       I like this as it makes reading texts easier (for me, at least).
  set nojoinspaces
"
"       keywordprg:  Program to use for the "K" command.
" set   keywordprg=man\ -s
"
"       laststatus:  show status line?  Yes, always!
"       laststatus:  Even for only one buffer.
  set   laststatus=2
"
" [VIM5]lazyredraw:  do not update screen while executing macros
  set   lazyredraw
"
"       'list' + 'listchars': Great new feature of vim-5.3!
"       This tells Vim which characters to show for expanded TABs,
"       trailing whitespace, and end-of-lines.  VERY useful!!
" Standard settings:
 set   list
 set   listchars=tab:>-,trail:·,eol:$
"
" However: The '$' at the end of lines is a bit too much, though.
" And I quite like the character that shows a dot in the middle:
" set   listchars=tab:>·,trail:·
"
" Some people might prefer a double right angle (>>)
" to show the start of expanded tabs, though:
" set   listchars=tab:»·,trail:·
"
" However, this all breaks up when viewing high-bit characters
" through some brain-dead telnet program (there are many).
" Sometimes a change of the font does the trick.  Try it!
"
"       magic:  Use 'magic' patterns  (extended regular expressions)
"       in search patterns?  Certainly!  (I just *love* "\s\+"!)
  set   magic
"
"       2006-05-09: include angle brackets, too!
  set   matchpairs=(:),{:},[:],<:>
"
"       modeline:  Allow the last line to be a modeline - useful when
"       the last line in sig gives the preferred textwidth for replies.
  set   modeline
  set   modelines=1
"
"       number:  no line numbering.  line numbers take away eight
"       characters - and that's too much. four digits usually suffice.
  set   number
"
"     nrformats: no "alpha", no "octal" ->
"               only de/increase numbers of decimal format.
  set nrformats=
"
"       path:   The list of directories to search when you specify
"               a file with an edit command.
"               Note:  "~/.P" is a symlink to my dir with www pages
"               "$VIM/syntax" is where the syntax files are.
" set   path=.,,~/.P/vim,~/.P/vim/runtime/syntax,~/.P/vim/source,$VIM/syntax/
" set   path=.,,~/.P/vim,~/.P/mutt/,~/.P/elm,~/.P/slrn/,~/.P/nn
"
"       pastetoggle
  set   pastetoggle=<f5>
" also turn on/off 'paste' from insert mode and show its current value:
imap   <f5> <esc>:set paste!<cr>:set paste?<cr>a
" note that the mapping for F5 is defined for command mode -
" and  that the pastetoggle is used within insert mode!
"
"       report: show a report when N lines were changed.
"               report=0 thus means "show all changes"!
  set   report=0
"
"       ruler:       show cursor position?  Yep!
  set   ruler
"
"     runtimepath: list of dirs to search for runtime files
"     runtimepath is for Vim-6 only!
"   set runtimepath=~/.vim,~/.vim/after
"   set runtimepath+=~guckes/.vim
"   set runtimepath+=~guckes/share/vim/runtime/
"   set runtimepath+=~guckes/share/vim/
"   set runtimepath+=~guckes/.P/Vim/syntax
"   set runtimepath+=~guckes/share/vim/vim60ao/
" had to set this now that Vim won't use "helpfiles"
" to look for runtime files any more.
"
" Setting the "shell" is always tricky - especially when you are
" trying to use the same vimrc on different operating systems.
" DOS:
  if has("dos16") || has("dos32")
    let shell='command.com'
  endif
"
" Windows:
  if has("win32")
    let shell='cmd.exe'
  endif
"
" UNIX:
  if has("unix")
  " let &shell="bash"
  " let &shell="ksh"
  " let &shell="tcsh"
    let &shell="zsh"
" zsh rules!  :-)
" see http://www.zsh.org
  endif
"
"       shiftwidth:  Number of spaces to use for each
"                    insertion of (auto)indent.
" set   shiftwidth=8
  set   shiftwidth=2
"
"       shortmess:   Kind of messages to show.   Abbreviate them all!
"          New since vim-5.0v: flag 'I' to suppress "intro message".
  set   shortmess=atI
"
"       showcmd:     Show current uncompleted command?  Absolutely!
  set   showcmd
"
"       showmatch:   Show the matching bracket for the last ')'?
  set   showmatch
"
"       showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
  set   showmode
"
"       suffixes:    Ignore filename with any of these suffixes
"                    when using the ":edit" command.
"                    Most of these are files created by LaTeX.
  set   suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar
"
"       startofline:  no:  do not jump to first character with page
"       commands, ie keep the cursor in the current column.
  set nostartofline
"
"       splitbelow:  Create new window below current one.
  set nosplitbelow
"
"       statusline:  customize contents of the windows' status line.
"       I prefer it this way:
"       Show the current buffer number and filename with info on
"       modification, read-only, and whether it is a help buffer
"       (show only when applied).
" set   statusline=[%n]\ %f\ %(\ %M%R%H)%)
"
"       Move the rest to the right side, eg a copyright text:
" set   statusline=[%n]\ %f\ %(\ %M%R%H)%)%=(c)\ Sven\ Guckes
"
"       Show the value of the current character in ASCII and Hex:
" set   statusline=[%n]\ %f\ %(\ %M%R%H)%)\=ASCII=%b\ HEX=%B
"
"       Show the current position with line+column+virtual_column:
" set   statusline=[%n]\ %f\ %(\ %M%R%H)%)\=Pos=<%l\,%c%V>\ %P
"       Adding color through UserN groups:
" set   statusline=%1*[%02n]%*\ %2*%F%*\ %(\ %M%R%H)%)%=%3*Pos=<%l,%c%V>%*
"       User1: color for buffer number
" hi    User1 ctermfg=red   ctermbg=white
"       User2: color for filename
" hi    User2 ctermfg=green ctermbg=white
" hi    User2 ctermfg=green ctermbg=black
"       User3: color for position
" hi    User3 ctermfg=blue  ctermbg=white
"
"       2005-04-12: more fun with the statusline.
"       this shows the current time in the statusline:
"       set statusline=%{strftime('%c')}
"       the time will be update with every redraw of the statusline.
"       so usually just right after you *did* something.
"       just move the cursor to have the time updated.
"
"       tabstop
  set   tabstop=8
"
"       tagbsearch: use "binary search" on tags file? no.
"       why?  because i use my own structure -
"       and this breaks the binary structure.
  "set notagbsearch
"
"       tags: file for "tags" - search words
  set   tags=~/.vim/mytags
"
" 1999-05-03: I have to set the "term" explicitly
" because the standard setups are broken.
" set   term=builtin_pcansi
" set   term=xterm
"
" Set the colors for vim on "xterm"
" if &term=="xterm"
" set t_Co=8
" set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
" set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
" endif
"
"       textwidth
  set   textwidth=0
"
"       title:
  set   title
"
"       ttyfast:     are we using a fast terminal?
"                    this setting depends on where I use Vim...
" set nottyfast
"
"       ttybuiltin:
if !has('nvim')
  set nottybuiltin
"
"       ttyscroll:      turn off scrolling -> faster!
  set   ttyscroll=0
endif
"
"       ttytype:
" set   ttytype=rxvt
"
"       viminfo:  What info to store from an editing session
"                 in the viminfo file;  can be used at next session.
  set   viminfo=\"200,%,'200,/100,:100,@100,f1,h,n~/.vim/viminfo
"
"       visualbell:
  set novisualbell
"
"       t_vb:  terminal's visual bell - turned off to make Vim quiet!
"       Please use this as to not annoy cow-orkers in the same room.
"       Thankyou!  :-)
  set   t_vb=
"
"       whichwrap:
"       Allow jump commands for left/right motion to wrap to previous/next
"       line when cursor is on first/last character in the line:
  set   whichwrap=<,>,h,l,[,]
"
"       wildchar  the char used for "expansion" on the command line
"                 default value is "<C-E>" but I prefer the tab key:
  set   wildchar=<TAB>
"
"       wrapmargin:
  set   wrapmargin=0
  set   wrap
  set   linebreak
  set   sbr=+
"
"       writebackup:
"       i dont need backup files in my directories.
"       actually, i save my file right when i stop typing.
"       back in the olden days i lost some huge texts
"       because i was going for hours without saving.
"       well, i have learnt my lesson! ":w" is in my fingers now..
  set nowritebackup
"
" ===================================================================
" Customizing the command line
" ===================================================================
" Valid names for keys are:  <Up> <Down> <Left> <Right> <Home> <End>
" <S-Left> <S-Right> <S-Up> <PageUp> <S-Down> <PageDown>  <LeftMouse>
"
" Many shells allow editing in "Emacs Style".
" Although I love Vi, I am quite used to this kind of editing now.
" So here it is - command line editing commands in emacs style:
  cnoremap <C-A>      <Home>
  cnoremap <C-B>      <Left>
" cnoremap <C-B>      <Del>
  cnoremap <C-E>      <End>
  cnoremap <C-F>      <Right>
  cnoremap <C-N>      <End>
  cnoremap <C-P>      <Up>
  cnoremap <ESC>b     <S-Left>
  cnoremap <ESC><C-B> <S-Left>
  cnoremap <ESC>f     <S-Right>
  cnoremap <ESC><C-F> <S-Right>
  cnoremap <ESC><C-H> <C-W>
" Note:  More info about this is in the helptexts:  :help emacs-keys
"
" ===================================================================
" AUTOCOMMANDS:
" Editing of email replies and Usenet followups - using autocommands
" ===================================================================
"
" First step:  Remove ALL auto-commands.  This avoids having the
" autocommands twice when the vimrc file is sourced again.
  autocmd!
"
" Apply the muttrc coloring to my mutt setup files:
  au BufNewFile,BufRead .mutt.*                   set ft=muttrc
"
" SLRN: Apply mail.vim to postponed messages:
  au BufNewFile,BufRead */postpone/*,muttng-*     set ft=mail
"
" Set some options for "messages" (FileType "mail"):
" au FileType mail set autoindent expandtab tabstop=4 textwidth=70
" the following uses ethe short option names:
  au FileType mail set ai et ts=4 tw=70
"
" Some more autocommand examples which set the values for
" "autoindent", "expandtab", "shiftwidth", "tabstop", and "textwidth":
" using the "FileType" event:
" au FileType c           set ai et sw=4 ts=4
" au FileType perl        set ai et sw=4 ts=4
" au FileType html        set ai    sw=2 ts=2
" au FileType java        set ai    sw=4 ts=4
" au BufEnter */drafts/*  set tw=72
"
" ===================================================================
" AutoCommands
" ===================================================================
"
" Autocommands are the key to "syntax coloring".
" There's one command in your vimrc that should
" load/source the file $VIM/syntax/syntax.vim
" which contains the definition for colors and
" the autocommands that load other syntax files
" when necessary, ie when the filename matches
" a given pattern, eg "*.c" or *".html".
"
" just load the main syntax file when Vim was compiled with "+syntax"
  if has("syntax")
    " The following sources the main syntax file,
    " ie. "$VIM/syntax/syntax.vim", see ":help :syn-on":
      syntax on
    " Redefine the color for "Comment":
    " hi! Comment  term=bold ctermfg=cyan ctermbg=black guifg=blue guibg=black
"     hi! Comment            ctermfg=blue ctermbg=black guifg=blue guibg=black
      hi! Comment  term=NONE cterm=NONE
      hi! Comment  ctermfg=cyan ctermbg=black guifg=blue guibg=black
    "
    " The standard background color for the GUI Vim is "blue".
    " No, I don't know why.  But many users want to change this
    " color to black so they can read the blue colored text.  ;-)
    " Here's how:
    " hi normal ctermbg=black guibg=black
    "
    " Adjustments for editing messages:
    " the following file contains commands
    " which simply change a few colors:
    " au Syntax mail  source ~guckes/.vim.mail.vim
  endif
"
" Viewing PDF files in VIM
" http://www.vim.org/tips/tip.php?tip_id=1356
  autocmd BufReadPre  *.pdf set ro
  autocmd BufReadPost *.pdf %!pdftotext -nopgbrk "%" -
" ===================================================================
" Last but not least...                                        THPXRF
" ===================================================================
" The last line is allowed to be a "modeline" with my setup.
" It gives vim commands for setting variable values that are
" specific for editing this file.  Used mostly for setting
" the textwidth (tw) and the "shiftwidth" (sw).
" Note that the colon within the value of "comments" needs to
" be escaped with a backslash!  (Thanks, Thomas!)

call plug#begin('~/.vim/plugged')
  Plug 'lervag/vimtex'
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug '907th/vim-auto-save'
  " :CodeQueryMenu Unite Full
  Plug 'devjoe/vim-codequery'
  " File explorer
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Git integration
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Linting
  Plug 'neomake/neomake'
  Plug 'w0rp/ale'
  Plug 'tpope/vim-sensible'

  let g:tex_flavor = 'latex'
  set shell=/bin/sh
call plug#end()


set timeout timeoutlen=1000 ttimeoutlen=100
" colorscheme desert
colorscheme industry

set spelllang=en_gb nospell
" vim: set tw=70 et sw=4 comments=\:\": THPXRF: EOF

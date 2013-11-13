NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle      'Shougo/vimproc',
\ {
\   'build': {
\     'mac':  'make -f make_mac.mak',
\     'unix': 'make -f make_unix.mak',
\   },
\ }

NeoBundle      'Shougo/unite.vim'
NeoBundle      'ujihisa/unite-colorscheme'

NeoBundle      'itchyny/lightline.vim'
NeoBundle      'vim-scripts/FuzzyFinder', {'depends': 'vim-scripts/L9'}
NeoBundle      'Shougo/vimfiler'
NeoBundle      'tpope/vim-surround'
NeoBundle      'osyo-manga/vim-anzu'
NeoBundle      'tpope/vim-markdown'

" Colorschemes

NeoBundle      'jpo/vim-railscasts-theme'

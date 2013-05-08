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

NeoBundle      'Lokaltog/powerline',
\ {
\   'rtp': 'powerline/bindings/vim'
\ }

NeoBundle      'kien/ctrlp.vim'
NeoBundle      'tpope/vim-surround'
NeoBundle      'osyo-manga/vim-anzu'
NeoBundle      'tpope/vim-markdown'

" Colorschemes

NeoBundle      'jpo/vim-railscasts-theme'

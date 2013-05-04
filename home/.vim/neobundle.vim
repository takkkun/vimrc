if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

filetype off

source ~/.vim/bundle.vim
NeoBundleCheck

filetype plugin indent on

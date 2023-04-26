if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

filetype off

source ~/.vim/bundle.vim
NeoBundleCheck

if has('vim_starting')
  call neobundle#end()
endif

filetype plugin indent on

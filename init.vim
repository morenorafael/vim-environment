  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc
  source ~/.vim/plugged/coc.nvim/plugin/coc.vim

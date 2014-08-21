set number
set autoindent
set list

colorscheme industry
set nocompatible               " be iMproved
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'VimClojure'
" NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'
" NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'scrooloose/syntastic'
" NeoBundle 'https://bitbucket.org/kovisoft/slimv'
NeoBundle 'thinca/vim-quickrun'

filetype indent on
syntax on

""""""""""""""""""""""""""""""
" neocomplcache�̐ݒ�
""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

""""""""""""""""""""""""""""""
" neosnippet�̐ݒ�
""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


""""""""""""""""""""""""""""""
" vim-quickrun�̐ݒ�
""""""""""""""""""""""""""""""
let g:quickrun_config={'_': {'split': 'vertical'}}
set splitright
set splitbelow

""""""""""""""""""""""""""""""
" Unit.vim�̐ݒ�
" """"""""""""""""""""""""""""""
" " ���̓��[�h�ŊJ�n����
let g:unite_enable_start_insert=1
" " �o�b�t�@�ꗗ
noremap <C-P> :Unite buffer<CR>
" " �t�@�C���ꗗ
noremap <C-N> :Unite -buffer-name=file file<CR>
" " �ŋߎg�����t�@�C���̈ꗗ
noremap <C-Z> :Unite file_mru<CR>
" " sources���u���J���Ă���t�@�C���̃f�B���N�g���v�Ƃ���
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" " �E�B���h�E�𕪊����ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" " �E�B���h�E���c�ɕ������ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" " ESC�L�[��2�񉟂��ƏI������
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" """"""""""""""""""""""""""""""


"set NeoBundle required
if 0 | endif


if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'


	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'shougo/neosnippet'

	NeoBundle 'altercation/vim-colors-solarized'
	NeoBundle 'croaker/mustang-vim'
	"NeoBundle 'ujihisa/unite-colorscheme'

	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'Townk/vim-autoclose'
	NeoBundle 'nathanaelkane/vim-indent-guides'
		let g:indent_guides_enable_on_vim_startup = 1
	NeoBundle 'bronson/vim-trailing-whitespace'

call neobundle#end()

"ZenkakuSpace
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
if has ('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd colorscheme * call ZenkakuSpace()
		autocmd vimEnter,winEnter,BufRead * let w:ml=matchadd('ZenkakuSpace', '#')
	augroup END
	call ZenkakuSpace()
endif
"ZenkakuSpace end

NeoBundleCheck

syntax enable
"set background=dark
colorscheme mustang
set t_Co=256

filetype plugin indent on


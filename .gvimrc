if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ 11
elseif has("gui_macvim")
    set guifont=DejaVu_Sans_Mono:h11
elseif has("gui_win32")
    set guifont=DejaVu_Sans_Mono:h11
end

set guioptions-=T
set background=dark
colo solarized

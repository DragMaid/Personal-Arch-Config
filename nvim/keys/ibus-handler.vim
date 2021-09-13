function! IBusOn()
	let current_engine = system('ibus engine')
	" nếu engine được set trong normal mode thì
	" lúc vào insert mode duùn luôn engine đó
	if current_engine !~? 'BambooUs'
		let g:ibus_prev_engine = current_engine
	endif
	" Khôi phục lại engine
	silent! execute '!ibus engine ' . g:ibus_prev_engine
endfunction

function! IBusOff()
	" Lưu engine hiện tại
	let g:ibus_prev_engine = system('ibus engine')
	" Chuyển sang engine tiếng Anh
	" Nếu bạn thấy cái cờ ở đây
	" khả năng là font của bạn đang render emoji lung tung...
	" xkb : us :: eng (không có dấu cách)
	silent! execute '!ibus engine BambooUs'
endfunction

let g:IbusHandlerOn = 0
function! ToggleIbusHandler()
    if g:IbusHandlerOn == 0
        augroup IbusHandler
            autocmd!
            autocmd CmdLineEnter [/?] silent call IBusOn()
            autocmd CmdLineLeave [/?] silent call IBusOff()
            autocmd CmdLineEnter \? silent call IBusOn()
            autocmd CmdLineLeave \? silent call IBusOff()
            autocmd InsertEnter * silent call IBusOn()
            autocmd InsertLeave * silent call IBusOff()
        augroup END
	let g:IbusHandlerOn = 1
	echo 'Enabled ibus-handler'
    else
        augroup IbusHandler
            autocmd!
        augroup END
	let g:IbusHandlerOn = 0
	echo 'Disabled ibus-handler'
    endif
endfunction

nnoremap <F5> :call ToggleIbusHandler()<CR>

function! IBusOn()
	let l:current_engine = system('ibus engine')
	" nếu engine được set trong normal mode thì
	" lúc vào insert mode duùn luôn engine đó
	if l:current_engine !~? 'BambooUs'
		let g:ibus_prev_engine = l:current_engine
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
augroup IBusHandler
	" Khôi phục ibus engine khi tìm kiếm
	autocmd CmdLineEnter [/?] silent call IBusOn()
	autocmd CmdLineLeave [/?] silent call IBusOff()
	autocmd CmdLineEnter \? silent call IBusOn()
	autocmd CmdLineLeave \? silent call IBusOff()
	" Khôi phục ibus engine khi vào insert mode
	autocmd InsertEnter * silent call IBusOn()
	" Tắt ibus engine khi vào normal mode
	autocmd InsertLeave * silent call IBusOff()
augroup END

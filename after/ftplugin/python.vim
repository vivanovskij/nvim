set pyx=3
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab
set autoindent smartindent
setlocal colorcolumn=80

setlocal path=.,**
setlocal wildignore=*/__pycache__/*,*.pyc

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
" autocmd BufWritePre *.py :%s/\s\+$//e

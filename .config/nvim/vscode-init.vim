set clipboard=unnamedplus

"Wrapped Lines
set wrap
nmap j gj
nmap k gk

"When pasting, go to the end of the pasted block
noremap p gp
noremap P gP

"When yanking in visual mode, go to the end of the block after the yank
vmap y y']

"Delete line but don't yank it
noremap <leader>dd "_dd
"Not working...
noremap <leader-d-i-w> "_diw

if executable('rg')
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = {
    \ 'types': {
    \     1: ['.git', 'cd %s && git ls-files']
    \ },
    \ 'fallback': 'rg %s --files
    \                    --hidden
    \                    --no-heading
    \                    --smart-case
    \                    --glob "!.DS_Store"
    \                    --glob "!.git"
    \                    --glob "!node_modules"
    \                    '
    \ }
endif

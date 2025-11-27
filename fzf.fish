set -l color00 '#022A38'
set -l color01 '#CD5BA3'
set -l color02 '#68cfa3'
set -l color03 '#a8ae98'
set -l color04 '#9c9dba'
set -l color05 '#cf96cc'
set -l color06 '#86e7ee'
set -l color07 '#C9A7C3'
set -l color08 '#5ca9c4'
set -l color09 '#e69ecb'
set -l color0A '#abe8ce'
set -l color0B '#d4d7cb'
set -l color0C '#d1d2e0'
set -l color0D '#edd4ec'
set -l color0E '#d5f8fb'
set -l color0F '#eddfea'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

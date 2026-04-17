set -l color00 '#ecebea'
set -l color01 '#8a6f5c'
set -l color02 '#7f9186'
set -l color03 '#b29f7f'
set -l color04 '#5f7888'
set -l color05 '#7f8795'
set -l color06 '#8a6f5c'
set -l color07 '#46545d'
set -l color08 '#9fa7ae'
set -l color09 '#9e8270'
set -l color0A '#93a79b'
set -l color0B '#c4b392'
set -l color0C '#7892a5'
set -l color0D '#99a2af'
set -l color0E '#9e8270'
set -l color0F '#2f3a42'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

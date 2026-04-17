set -l color00 '#1a1f2e'
set -l color01 '#d08770'
set -l color02 '#a3be8c'
set -l color03 '#ebcb8b'
set -l color04 '#5e81ac'
set -l color05 '#b48ead'
set -l color06 '#d08770'
set -l color07 '#d8dee9'
set -l color08 '#4c566a'
set -l color09 '#d98770'
set -l color0A '#b8d4a8'
set -l color0B '#f0d99c'
set -l color0C '#81a1c1'
set -l color0D '#c898be'
set -l color0E '#d98770'
set -l color0F '#e5e9f0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

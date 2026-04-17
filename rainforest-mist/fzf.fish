set -l color00 '#181d1a'
set -l color01 '#7a9e7e'
set -l color02 '#5a8e7a'
set -l color03 '#8eb891'
set -l color04 '#6ba89f'
set -l color05 '#7a8c8e'
set -l color06 '#6ba89f'
set -l color07 '#d8e5dd'
set -l color08 '#2a3a30'
set -l color09 '#8eb891'
set -l color0A '#6ba89f'
set -l color0B '#9ec9a1'
set -l color0C '#7dbfb5'
set -l color0D '#8a9c9e'
set -l color0E '#7dbfb5'
set -l color0F '#d8e5dd'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

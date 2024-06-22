set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

set fish_greeting ""
set fish_history ""
set -gx TERM xterm-256color
# Set EDITOR/VISUAL as emacs
# set EDITOR emacsclient -c -a emacs
# set VISUAL emacsclient -c -a emacs
set -gx EDITOR vim
set -gx VISUAL vim

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_lenght 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

function fish_user_key_bindings
    fish_vi_key_bindings
end

function zd
    set -l dir (find ~/Developments -mindepth 2 -maxdepth 2 -type d -print 2> /dev/null | fzf-tmux -p --reverse)
    if test -n "$dir"
        cd "$dir"
    end
end

function zn
    set -l selection (find ~/TIL -mindepth 1 -maxdepth 5 \( -type d -o -type f \) -print 2> /dev/null | fzf-tmux -p --reverse)
    if test -n "$selection"
        nvim "$selection"
    end
end

# aliases
alias ls 'exa --color=always --group-directories-first --icons'
alias la 'exa -aG --color=always --group-directories-first --icons'
alias ll 'exa -al --color=always --group-directories-first --icons'
alias em '/usr/bin/emacs -nw'
alias z 'fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias gg lazygit
alias zz 'du -sh'

# if status --is-login
#   if test -z "$DISPLAY" -a $XDG_VTNR = 1
#     exec startx -- -keeptty 
#   end
# end

# Package name: shell-color-scripts
# colorscript -r

# fisher install IlanCosman/tide@v5 (Fish prompt)
# Remove comment below if not using custom prompt (fisher/tide)
starship init fish | source

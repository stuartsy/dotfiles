if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_nerd_fonts yes
    set -g theme_display_git_default_branch yes
    set -g theme_color_scheme solarized-dark
    echo ""
end
fish_add_path /usr/local/opt/python@3.8/bin

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
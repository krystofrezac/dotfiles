function disable_welcome_msg
    set -g fish_greeting
end

function setup_brew
    fish_add_path /opt/homebrew/bin
end

function setup_asdf 
    if test -z $ASDF_DATA_DIR
        set _asdf_shims "$HOME/.asdf/shims"
    else
        set _asdf_shims "$ASDF_DATA_DIR/shims"
    end

    # Do not use fish_add_path (added in Fish 3.2) because it
    # potentially changes the order of items in PATH
    if not contains $_asdf_shims $PATH
        set -gx --prepend PATH $_asdf_shims
    end
    set --erase _asdf_shims
end

function setup_asdf_interactive
    asdf completion fish > ~/.config/fish/completions/asdf.fish
end

function setup_atuin
    atuin init fish | source
    bind ctrl-p _atuin_bind_up
end

function setup_starship
    starship init fish | source
end

function setup_toolbox
    fish_add_path '/Users/krystofrezac/Library/Application Support/JetBrains/Toolbox/scripts'
end


setup_brew
setup_asdf
setup_toolbox

if status is-interactive
    disable_welcome_msg
    setup_asdf_interactive
    setup_atuin
    setup_starship
end


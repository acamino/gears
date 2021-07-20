__xtmux_path_name="$(basename "$PWD" | tr . -)"
__xtmux_session_name=${1-$__xtmux_path_name}

# Create if needed and attach.
function xtmux() {
    if __xtmux_in_tmux; then
        if ! __xtmux_session_exists; then
            __xtmux_create_detached_session
        fi
        tmux switch-client -t "$__xtmux_session_name"
    else
        tmux new-session -As "$__xtmux_session_name"
    fi
}

function __xtmux_in_tmux() {
    [ -n "$TMUX" ]
}

function __xtmux_session_exists() {
    tmux has-session -t "$__xtmux_session_name"
}

function __xtmux_create_detached_session() {
    (TMUX='' tmux new-session -Ad -s "$__xtmux_session_name")
}

alias xt=xtmux

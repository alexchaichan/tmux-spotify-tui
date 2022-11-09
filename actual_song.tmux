#!/usr/bin/env bash

set -euo pipefail

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Place holder for status left/right
place_holder="\#{actual_song}"

option_scope_config='@actual_song:option_scope'
get_actual_song="$CURRENT_DIR/scripts/get_actual_song.sh"

interpolate() {
    local -r option=$1
    local -r replacement=$2
    local -r option_scope=${3#-}
    local -r option_value=$(tmux show-option -Aqv "$option")
    tmux set-option -"$option_scope"q "$option" "${option_value/$place_holder/$replacement}"
}

main() {
    local -r option_scope=$(tmux show-option -gqv "${option_scope_config}")
    local -r actual_song="#($get_actual_song)"
    interpolate "status-left" "$actual_song" "${option_scope:-g}"
    interpolate "status-right" "$actual_song" "${option_scope:-g}"
}

main
#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"
source "$CURRENT_DIR/variables.sh"
source "$CURRENT_DIR/shared.sh"

enough_time_since_last_run_passed() {
	local last_saved_timestamp="$(get_tmux_option "$last_auto_save_option" "0")"
	local interval_minutes="$(get_tmux_option "$auto_save_interval_option" "$auto_save_interval_default")"
	local interval_seconds="$((interval_minutes * 60))"
	local next_run="$((last_saved_timestamp + $interval_seconds))"
	[ "$(current_timestamp)" -ge "$next_run" ]
}

fetch_and_run_tmux_resurrect_save_script() {
	local resurrect_save_script_path="$(get_tmux_option "$resurrect_save_path_option" "")"
	if [ -n "$resurrect_save_script_path" ]; then
		$resurrect_save_script_path "quiet" >/dev/null 2>&1 &
		set_last_save_timestamp
	fi
}

main() {
	if supported_tmux_version_ok && enough_time_since_last_run_passed; then
		fetch_and_run_tmux_resurrect_save_script
	fi
}
main
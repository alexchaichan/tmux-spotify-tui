#!/bin/bash
set -euo pipefail

string="$(spt playback -f '%s')"
firstletter=${string:0:1}

if [[ "$firstletter" == "▶" ]]; then
spt playback
fi
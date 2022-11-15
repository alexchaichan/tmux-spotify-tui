#!/bin/bash
set -euo pipefail

string="$(spt playback)"
firstletter=${string:0:1}
thirdletter=${string:2:2}

if [[ "$firstletter" == "▶" || "$firstletter" == "♥" && "$thirdletter" != "⏸ "  ]]; then
spt playback
fi

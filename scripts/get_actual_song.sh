#!/bin/bash
set -euo pipefail

string="$(spt playback)"
firstletter=${string:0:1}
thirdletter=${string:2:2}

if [[ "$firstletter" == "▶" || "$firstletter" == "♥" || "$firstletter" == "🔀" && "$thirdletter" != "⏸ "  ]]; then
  song="$(spt playback)"
  echo $song | cut -f1 -d"-"

fi

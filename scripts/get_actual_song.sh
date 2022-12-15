#!/bin/bash
set -euo pipefail

song="$(spt playback)"

if [[ $song =~ ['⏸'] ]]; then

   echo $song | sed 's/[⏸🔀♥▶🔁🔂]//g'

else

   echo $song | sed 's/[⏸🔀♥▶🔁🔂]//g'

fi

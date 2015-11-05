function transfer_to() {
  local other_db="${1}"
  local path="${2:-/}"
  firebase data:get "$path" output.json && firebase data:set "$path" output.json -f "$other_db" -y
  rm output.json
}

function formatted() {
  local path="${1:-/}"
  firebase data:get "$path" | python -m json.tool
}


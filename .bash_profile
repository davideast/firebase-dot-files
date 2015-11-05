function transfer_to() {
  local other_db="${1}"
  local path="${2:-/}"
  firebase data:get "$path" | firebase data:set "$path" -f "$other_db" -y
}

function formatted() {
  local path="${1:-/}"
  firebase data:get "$path" | python -m json.tool
}

function formatted() {
  local db="${1}"
  local path="${2:-/}"
  firebase data:get "$path" -f "$db" | python -m json.tool
}

function transfer_to() {
  local master_db="${1}"
  local dest_db="${2}"
  local path="${3:-/}"
  firebase data:get "$path" > output.json -f "$master_db"
  firebase data:set "$path" output.json -f "$dest_db" -y
  rm output.json
}

![logo](/dot-files-spin.gif)

*A set of helpful bash functions stored in a `~/.bash_profile`*

## Commands

`formatted` -Export the JSON path of the default Firebase database.
```bash
# default firebase in firebase.json
formatted # writes entire default db to console
formatted /users # prints JSON at path to console
formatted /users > users.json # writes to JSON file

# -f for explicit firebase
formatted my-firebase-db
formatted my-firebase-db /users
formatted /users > users.json
```

`transfer_to` - Transfer data from one Firebase database to another
```bash
# default firebase in firebase.json
transfer_to staging-firebase # transfers data of default db to the specified db
transfer_to staging-firebase /users # transfers data at path from default db to specified db

# -f for explicit firebase
transfer_to dev-firebase staging-firebase
transfer_to dev-firebase staging-firebase /users
```

## Contributing
This is a community supported project so PRs are welcome. Add your helpful tips :fire:

Copyright 2015 David East

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

![logo](/logo.png)

A list of helpful bash functions stored in a `~/.bash_profile`.

This is a community supported project so PRs are welcome. Add your helpful tips :fire:

```bash
formatted my-firebase-db /users > users.json
```

## Commands

## `formatted`
### Export the JSON path of the default Firebase.
```bash
formatted # writes entire firebase db to console
formatted /users # prints JSON at path to console
formatted /users > users.json # writes to JSON file
```

## `transfer_to`
### Transfer data from one Firebase to another
```bash
transfer_to staging-firebase # transfers data of default db to the specified db
transfer_to staging-firebase /users # transfers data at path from default db to specified db
```

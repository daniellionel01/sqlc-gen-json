# sqlc gen json

This repository creates a plugin for sqlc to output json

## how it works
There's already a working plugin in the sqlc github repository that .
However there is no official release wasm file for that plugin.

All we need to do is clone the sqlc github repository and build the plugin go file with the correct WASM target.

## usage

```yaml
# file: sqlc.yaml
version: "2"
plugins:
  - name: jsonb
    wasm:
      url: https://github.com/daniellionel01/sqlc-gen-json/releases/download/v1.0.0/sqlc-gen-json.wasm
      sha256: 5d48e462aa8db371be5c9ce89a7494ad8e3baf5112e78386091313afd6930061
sql:
  - schema: schema.sql
    queries: query.sql
    engine: mysql
    codegen:
      - out: gen
        plugin: jsonb
        options:
          indent: "  "
          filename: codegen.json
```

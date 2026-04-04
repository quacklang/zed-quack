# Quack for Zed

Zed editor extension for the [Quack](https://github.com/quacklang/quack) programming language.

Provides syntax highlighting, bracket matching, code outline, and auto-indentation for `.q` files.

## Installation

### From the extension registry (once published)

In Zed: Extensions panel > search "Quack" > Install.

### As a dev extension (local)

1. Clone this repository (or use the copy from the monorepo's `extensions/zed/`).
2. In Zed: Command palette > "zed: install dev extension" > select the directory.
3. Open any `.q` file.

## Features

- **Syntax highlighting** — keywords, types, literals, operators, comments, format strings
- **Bracket matching** — `()`, `[]`, `{}`
- **Code outline** — functions, structs, enums, interfaces, `on` blocks, tests
- **Auto-indentation** — indent/outdent on `{}`

## Development (WSL + Windows)

If you develop on WSL but run Zed on Windows:

1. **Edit** files in the WSL monorepo (`~/Code/quack/extensions/zed/`).

2. **Sync** to a Windows-native path after changes:

   ```sh
   # Adjust the Windows username
   rsync -av --delete \
     ~/Code/quack/extensions/tree-sitter-quack/ \
     /mnt/c/Users/<you>/Code/tree-sitter-quack/

   rsync -av --delete \
     ~/Code/quack/extensions/zed/ \
     /mnt/c/Users/<you>/Code/quack-zed/
   ```

3. **Point the grammar at the local copy.** Edit `extension.toml` on the Windows side:

   ```toml
   [grammars.quack]
   repository = "file:///C:/Users/<you>/Code/tree-sitter-quack"
   rev = "HEAD"
   ```

4. **Install in Zed:** Command palette > "zed: install dev extension" > select `C:\Users\<you>\Code\quack-zed`.

5. **After changes:** re-sync (step 2) and re-install (step 4). There is no hot-reload.

### Requirements on Windows

- `rustup` installed (Zed uses it to compile tree-sitter grammars to WASM)

## Dependencies

- [tree-sitter-quack](https://github.com/quacklang/tree-sitter-quack) — Tree-sitter grammar (referenced in `extension.toml`)

## License

MIT

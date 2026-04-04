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

1. **Clone both repos** on the Windows side:

   ```powershell
   cd C:\Users\<you>\Code
   git clone https://github.com/quacklang/tree-sitter-quack.git
   git clone https://github.com/quacklang/zed-quack.git
   ```

2. **Install in Zed:** Command palette > "zed: install dev extension" > select `C:\Users\<you>\Code\zed-quack`.

3. **After changes:** push from WSL, pull on the Windows clones, and re-run "Install Dev Extension". There is no hot-reload.

### Requirements on Windows

- `rustup` installed (Zed uses it to compile tree-sitter grammars to WASM)

## Dependencies

- [tree-sitter-quack](https://github.com/quacklang/tree-sitter-quack) — Tree-sitter grammar (referenced in `extension.toml`)

## License

Apache-2.0

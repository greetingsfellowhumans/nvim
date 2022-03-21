## Setup
1. Install neovim
2. clone this repo
3. open neovim
4. Run :PackerSync
5. Run :CHADdeps
6. install elixir-ls:
```bash
cd ~/.config/nvim/plugin/plugin
git clone https://github.com/elixir-lsp/elixir-ls.git
cd elixir-ls && mkdir rel
mix deps.get && mix compile
mix elixir_ls.release -o release
```

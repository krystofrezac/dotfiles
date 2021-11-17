#!/bin/bash

asdf plugin add neovim
asdf install neovim latest
asdf global neovim latest

# LSP

sudo pacman -S ccls ripgrep
rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/configs/nvim" "$HOME/.config/nvim"

npm install -g diagnostic-languageserver yaml-language-server intelephense typescript-language-server \
 typescript eslint_d @tailwindcss/language-server

mkdir -p "$HOME/.cache/nvim/lspconfig"
git clone git@github.com:elixir-lsp/elixir-ls.git "$HOME/.cache/nvim/lspconfig/elixirls"
cd "$HOME/.cache/nvim/lspconfig/elixirls" && mkdir rel
mix deps.get @@ mix compile
mix elixir_ls.release -o release

echo Installation complete

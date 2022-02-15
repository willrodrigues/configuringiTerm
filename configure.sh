#!/bin/bash

echo "[LOG] The script is running in directory: $(pwd)"
echo ""
echo ""

echo "[LOG] Creating ~/.vim/pack/bundle/start dir.."
mkdir -p ~/.vim/pack/bundle/start

echo "[LOG] Moving swift lib to ~/.vim/pack/bundle/start dir.."
cp -r swift ~/.vim/pack/bundle/start/

echo "[LOG] Copying .vimrc file to your homefolder dir.."
cp .vimrc ~/

echo "[LOG] Installing Rust Lang syntax in VIM..."
git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim

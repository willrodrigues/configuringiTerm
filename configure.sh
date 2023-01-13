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

echo "[LOG] Installing Shell Integration"
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

echo "[LOG] Installing FZF"
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.zshrc
echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.profile
echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh' >> ~/.bashrc

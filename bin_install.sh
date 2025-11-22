mkdir -p $HOM/bin

git clone https://github.com/jenv/jenv.git $HOME/bin/.jenv #jenv
curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "$HOME/bin/.fnm" --skip-shell #fnm
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/bin/oh-my-zsh" | Oh My ZSH

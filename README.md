# dotfiles

## Prerequisites
- [Oh my zsh](https://ohmyz.sh/#install)

## Setup
```bash
  sudo sh -c 'echo $(which fish) >> /etc/shells'
  chsh -s $(which fish)

  ln -s ~/workspace/krystofrezac/dotfiles/helix ~/.config/helix
  ln -s ~/workspace/krystofrezac/dotfiles/kitty ~/.config/kitty
  ln -s ~/workspace/krystofrezac/dotfiles/git ~/
  ln -s ~/workspace/krystofrezac/dotfiles/zsh/.zshrc ~/.zshrc
  ln -s ~/workspace/krystofrezac/dotfiles/starship/starship.toml ~/.config/starship.toml
  ln -s ~/workspace/krystofrezac/dotfiles/atuin ~/.config/atuin
  ln -s ~/workspace/krystofrezac/dotfiles/fish ~/.config/fish
```

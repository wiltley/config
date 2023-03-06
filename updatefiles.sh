#!/bin/bash


echo "-v for vim update"
echo "-y for yabai update"
echo "-i for ideavimrc update"
echo "t for tmux update"
echo "-c to cancel"

read whatdo

updateVim(){
  git add ./dotfiles/vimrc
  git add ./dotfiles/nvim
  git commit -m "updated vim"
  git push origin main
}

updateYabai(){
  git add ./dotfiles/yabairc
  git commit -m "updated yabairc" 
  git push origin main
}

updateIdeaVim(){
  git add ./dotfiles/ideavimrc
  git commit -m "updated ideavimrc" 
  git push origin main
}


updateTmux(){
  git add ./dotfiles/tmux
  git commit -m "updated tmux" 
  git push origin main
}

if [[ $whatdo == "-v" ]] ; then
  updateVim
elif [[ $whatdo == "-y" ]] ; then
  updateYabai
elif [[ $whatdo == "-i" ]] ; then
  updateIdeaVim
elif [[ $whatdo == "-t" ]] ; then
  updateTmux
else
  echo "aborted"
fi



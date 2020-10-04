# git autocompletion
Already there in Windows.

cd ~
curl -0L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o .git-completion.bash

add it to .bashrc
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi


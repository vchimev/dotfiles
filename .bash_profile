# aliases
source ~/Work/git/dotfiles/.files/aliases/common.sh
source ~/Work/git/dotfiles/.files/aliases/emu.sh
source ~/Work/git/dotfiles/.files/aliases/git.sh
source ~/Work/git/dotfiles/.files/aliases/npm.sh
source ~/Work/git/dotfiles/.files/aliases/tar.sh
source ~/Work/git/dotfiles/.files/aliases/tns.sh

# vars
source ~/Work/git/dotfiles/.files/vars/env.sh

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# iTerm2

# PWD
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# Git
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] $ "

# iTerm2


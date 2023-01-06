# .bashrc

#Variables

#TUIR
TUIR_EDITOR='vim'
TUIR_BROWSER='w3m'

#General
EDITOR='vim'
BROWSER='w3m'
TERMINAL='kitty'

#Aliases

#flatpak
#alias finstall='sudo flatpak install'
#alias fremove='sudo flatpak uninstall'
#alias fupdate='sudo flatpak update'

#dnf
#alias install='sudo dnf install'
#alias remove='sudo dnf remove'
#alias update='sudo dnf upgrade && sudo dnf update'

#w3m
alias w3md='w3m duckduckgo.com'

#Reddit
alias rasshole='tuir -s amitheasshole'
alias rprompts='tuir -s writingprompts'
alias rask='tuir -s askreddit'
alias rbi='tuir -s rbi'

#Pacman
alias inst='sudo pacman -Suqy'
alias rmv='sudo pacman -R'
alias upg='sudo pacman -Suqy'
alias srch='sudo pacman -s'

#configures
alias i3conf='vim ~/.config/i3/config'
alias statusconf='sudo vim /etc/i3status.conf'
alias bashconf='vim ~/.bashrc'
alias kittyconf='vim ~/.config/kitty/kitty.conf'
alias blocksconf='vim ~/.config/i3blocks/config'
alias herbsconf='vim ~/.config/herbstluftwm/autostart'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

echo 'God morgon Gabriel'

. "$HOME/.cargo/env"


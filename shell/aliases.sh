#Check the shell we are using:
if [ -n "$ZSH_VERSION" ]; then
   alias 'aliasg=alias -g';
elif [ -n "$BASH_VERSION" ]; then
   alias 'aliasg=alias'
fi

# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
aliasg dir='dir --color=auto'
aliasg vdir='vdir --color=auto'
aliasg grep='grep --color=auto'
aliasg fgrep='fgrep --color=auto'
aliasg egrep='egrep --color=auto'
aliasg ls='ls -GFh --color=auto'
aliasg la='ls -A --color=auto'
aliasg l='ls -CF --color=auto'
aliasg ll='ls -GFhl' 
aliasg lh='ls -d .* --color=auto' # show hidden files/directories only
aliasg lsd='ls -aFhlG'
aliasg tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
aliasg 'dus=du -sckx * | sort -nr' #directories sorted by size

aliasg 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
aliasg 'filecount=find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
aliasg mysql69-start='sudo -b mysqld_safe --defaults-file=/etc/mysql69/my.cnf --user=mysql'
aliasg mysql69-stop='mysqladmin -h 127.0.0.1 --port=3369 -u root shutdown -p'
aliasg mysql69-root='mysql -h 127.0.0.1 --port=3369 -u root -p'
 
# -------------------------------------------------------------------
# ome devvm start, stop, ssh, and mount
# -------------------------------------------------------------------
aliasg 'startvm=VBoxHeadless --startvm "Archlinux-2013.08.01" -v off'
aliasg 'stopvm=VBoxManage controlvm "Archlinux-2013.08.01" poweroff'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
# gsh shows the number of commits for the current repos for all developers
aliasg gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"
# gu shows a list of all developers and the number of commits they've made
aliasg gu="git shortlog | grep -E '^[^ ]'"

# alias to cat this file to display
aliasg acat='< /etc/zsh/aliases.zsh'
aliasg fcat='< /etc/zsh/functions.zsh'
aliasg sz='source /etc/zsh/zshrc'

alias say='echo "$1" | espeak -s 120 2>/dev/null'
alias compc='gcc -Wall -O2 $1'
alias compg='g++ -Wall -O2 $1'
alias runa='./a.out < $1'


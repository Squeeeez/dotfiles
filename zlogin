#
# Generic .zlogin file for zsh 2.7
#
# .zlogin is sourced in login shells.  It should
# contain commands that should be executed only in
# login shells.  It should be used to set the terminal
# type and run a series of external commands (fortune,
# msgs, from, etc).
#

# . /etc/profile
#PROMPT='[%B%!%b]%n@%m:%5(~.%1d.%~) > '
#RPROMPT='[%T %D][%B%l%b %?]'
#PROMPT='%B%m::%n:[%5(~.%1d.%~)]%b '
#PS1=$PROMPT
#RPROMPT='[%T %D %B%l%b %B%?%b %B%!%b]'
#stty dec -tabs
ttyctl -f  # freeze the terminal modes... can't change without a ttyctl -u
uptime
from 2>/dev/null
cat ~/.notes
if test "$(uname -s)" = "FreeBSD"; then
  log
  mesg y
  msgs -fp
fi

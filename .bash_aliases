# misc
alias :q='exit'
alias ytmp3='yt-dlp -f 'ba' -x --audio-format mp3 '
alias filedate='date +%Y%m%d_%H%M%S'
alias jiggle='while true; do xdotool mousemove 250 0 mousemove restore; factor $SRANDOM;sleep 500; done'
alias python='python3'
alias calc='python3 -i ~/.py_init'
alias vim='nvim'
alias pipes='~/bin/pipes.sh/pipes.sh'

# image aliases
alias slideshow='feh -D2 -pFZz ' 
alias imgview='feh -g 1200x800 -.rZp --draw-filename --draw-tinted'

# wget aliases
alias filerip='wget -e robots=off -r -nc -nd -np'
alias mirror='wget -e robots=off -r -nc -np'
alias imagerip='wget -e robots=off -r -nc -nd -np -A jpeg,jpg,bmp,gif,png'
alias siterip='wget -e robots=off -r -nc -np'
alias viafix="sudo chmod 777 /dev/hidraw*"

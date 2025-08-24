#!/usr/bin/env bash

texclean(){
	mv *.aux *.synctex.gz *.log *.fls *.fdb_latexmk /tmp
}

snip() {
	local CHOOSER="fzf --height=~30% --border double --tac"
	history | $CHOOSER | awk '{$1=""; print $0}' |sed 's/ //' | tee -a ~/.snippets  
}

dosnip() {
	cut=$(<~/.snippets fzf --height=~30% --border double --tac)
	echo $cut | xclip -i 
}


# if the path is too long to display,
# this toggles the dirtrim var in the prompt
toggle_dirtrim(){
	if [[ $PROMPT_DIRTRIM -eq 0 ]]; then 
		PROMPT_DIRTRIM=2
	else
		PROMPT_DIRTRIM=0
	fi
}

# make sure backed up dotfiles are symlinked properly
# uses gnu stow, and keeps everything in ~/dotfiles git repo
redot() {
	echo "Moving to dotfiles."
	pushd ~/dotfiles;
	echo "Re-stowing dotfiles..."
	stow -R . ;
	echo "Returning."
	popd
}

# select an image file, generate a colorscheme, and 
# set wallpaper and colorscheme for terminals
wallp(){
	pushd $1 || return 1
	SEL=$(find . | fzf )
	if [[ -z $SEL ]]; then return 1; fi
	echo -n "Theme name => "
	read NAME
	wal -i $SEL -p $NAME
	popd
}

#clear the terminal and display updating current time
clock() {
	clear; 
	while true;do 
		now=$( date +"%r" ) ; 
		echo -en "\r   $now " ;
		sleep 1;
	done 
}

# make a random base-64 string (should be typable)
randb64(){  
    </dev/urandom base64 | head -c $1 
}

# convert integer to base-36 ( a base-32 might be better unless 
# you need base-6 2d vectors or something. This is hack-y
b36(){
        b36arr=(0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
        for     i in $(echo "obase=36; $1"| bc)
        do      echo -n ${b36arr[${i#0}]}
        done
        echo
}

# for file in directory, calculate md5 or md5+sha256 hash and rename it to that 
hashmove() { 
	NAME=$(md5sum "$1" | cut -d' ' -f1)
	if [ "$2" = "-c" ]; then
		NAME=$NAME-$1
	fi
	EXT="${1##*.}"
	if [ -f $NAME.$EXT ]; then 
		NAME=$NAME-$(sha256sum "$1"|cut -d' ' -f1)
	fi
	if [ ! -f $NAME.$EXT ]; then 
		mv "$1" $NAME.$EXT;
	else 
		echo "$NAME.$EXT conflicts with existing file; cannot rename";
	fi
}

# stopwatch between keypresses
timer() { echo "Press any key to stop timer >"; time read -n 1; }

# change directory and see what is there 
cdl() { 
	cd "$1" && ls -a 
}

#make directory and immediately change to it
mcd()
{
    mkdir -p "${1}" && \
    cd "${1}"
}

# countdown / egg timer (input hours:minutes:seconds)
# Why can't i just input total num of seconds?? this is 15 years old.
function countdown 
{
        local OLD_IFS="${IFS}"
        IFS=":"
        local ARR=( $1 )
        local SECONDS=$((  (ARR[0] * 60 * 60) + (ARR[1] * 60) + ARR[2]  ))
        local START=$(date +%s)
        local END=$((START + SECONDS))
        local CUR=$START

        while [[ $CUR -lt $END ]]
        do
                CUR=$(date +%s)
                LEFT=$((END-CUR))

                printf "\r%02d:%02d:%02d" \
                        $((LEFT/3600)) $(( (LEFT/60)%60)) $((LEFT%60))

                sleep 1
        done
        IFS="${OLD_IFS}"
        echo "        "
}

# nice ls of some sort
list() { 
	ls -thor $1
}

# kill processes at scheduled time
dkill() { 
	echo "killall $2" | at "$1" 
}

#old way to make an 8 character temp password
mkpw() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-8}; }

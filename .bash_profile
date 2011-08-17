source ~/.git-completion.sh

D=$'\e[37;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'
BLUE=$'\e[34;40m'
RED=$'\[31;40m'

hg_ps1() {
    hg prompt "{${D} on ${PINK}{branch}}{${D} at ${ORANGE}{bookmark}}{${GREEN}{status}}" 2> /dev/null
}

export GIT_PS1_SHOWDIRTYSTATE='true' 
export GIT_PS1_SHOWSTASHSTATE='true'
export GIT_PS1_SHOWUPSTREAM='auto'
export GIT_PS1_SHOWUNTRACKEDFILES='true'
export PS1='\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${GREEN}\w${BLUE}$(hg_ps1)$(__git_ps1 "${D} on ${PINK}%s")${D}\n$ '
#export PS1='${PINK}\u${D}@${ORANGE}\h ${GREEN}\W${BLUE}$(hg_ps1)$(__git_ps1 "${D} on ${PINK}%s")${RED} \$ ${D}'

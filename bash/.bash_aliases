alias RM='rm -f'

alias c='clear'
alias ls="ls --color=auto -F -la" # color ls is cool
alias la="ls -la"
alias ll="ls -lh"
alias lla="ls -lah"
alias view="vim -R"
alias l='less'
alias ..="cd .."
alias cd..="cd .."
alias ping="ping -c 5"
alias CD="cd"
alias l="ll"
alias lll="ll"
alias k="ll"
alias wcl="wc -l"
alias bim="vim"
alias cim="vim"
alias ted="yed"

alias cdd="cd ~/dotconfig"

alias del='del'
function del()
{
	mv "$1" ~/recyclingbin
}

alias out="out"
function out()
{
	echo "diff -y tmp-`printf "%03d" "$1"`-test-stdout.txt tmp-`printf "%03d" "$1"`correct-stdout.txt"
	diff -y tmp-`printf "%03d" "$1"`-test-stdout.txt tmp-`printf "%03d" "$1"`-correct-stdout.txt
}

alias err="err"
function err()
{
	echo "diff -y tmp-`printf "%03d" "$1"`-test-stderr.txt tmp-`printf "%03d" "$1"`-correct-stderr.txt"
	diff -y tmp-`printf "%03d" "$1"`-test-stderr.txt tmp-`printf "%03d" "$1"`-correct-stderr.txt
}

alias vout="vout"
function vout()
{
	echo "vimdiff tmp-`printf "%03d" "$1"`-test-stdout.txt tmp-`printf "%03d" "$1"`-correct-stdout.txt"
	vimdiff tmp-`printf "%03d" "$1"`-test-stdout.txt tmp-`printf "%03d" "$1"`-correct-stdout.txt
}

alias verr="verr"
function verr()
{
	echo "vimdiff tmp-`printf "%03d" "$1"`-test-stderr.txt tmp-`printf "%03d" "$1"`-correct-stderr.txt"
	vimdiff tmp-`printf "%03d" "$1"`-test-stderr.txt tmp-`printf "%03d" "$1"`-correct-stderr.txt
}

alias sshh="sshh"
function sshh()
{
	echo "ssh hydra$1"
	ssh "hydra$1"
}

alias ssht="ssht"
function ssht()
{
	echo "ssh tesla$1"
	ssh "tesla$1"
}

alias sshe="sshe"
function sshe()
{
	echo "ssh ecuador"
	ssh ecuador
}

alias sshu="sshu"
function sshu()
{
	echo "ssh uruguay"
	ssh uruguay
}

alias sshin="sshin"
function sshin()
{
	echo "ssh india"
	ssh india
}

alias sshit="sshit"
function sshit()
{
	echo "ssh italy"
	ssh italy
}

alias sftph="sftph"
function sftph()
{
	echo "sftp hydra$1"
	sftp "hydra$1"
}

alias sftpt="sftpt"
function sftpt()
{
	echo "sftp tesla$1"
	sftp "tesla$1"
}

alias sftpe="sftpe"
function sftpe()
{
	echo "sftp ecuador"
	sftp ecuador
}

alias sftpu="sftpu"
function sftpu()
{
	echo "sftp uruguay"
	sftp uruguay
}

alias sftpin="sftpin"
function sftpin()
{
    echo "sftp india"
    sftp india
}

alias sftpit="sftpit"
function sftpit()
{
    echo "sftp italy"
    sftp italy
}

alias sshpi="sshpi"
function sshpi()
{
    echo "ssh pi"
    ssh pi
}

alias sftppi="sftppi"
function sftppi()
{
    echo "sftp pi"
    sftp pi
}

alias sshpc="sshpc"
function sshpc()
{
	echo "ssh pc"
	ssh pc
}

alias sftppc="sftppc"
function sftppc()
{
    echo "sftp pc"
    sftp pc
}

alias rmtmp="rmtmp"
function rmtmp()
{
    echo "rm tmp*"
    rm tmp*
}

alias explore="explore"
function explore()
{
    explorer.exe .
}

alias g="gradescript"
alias ga="gradeall"

alias m="make"
alias 102="cd ~/cs/cs102"
alias 130="cd ~/cs/cs130"
alias 140="cd ~/cs/cs140"
alias 307="cd ~/cs/cs307"
alias 312="cd ~/cs/cs312"
alias 317="cd ~/cs/cs317"
alias ece317="cd ~/cs/ece317"
alias 340="cd ~/cs/cs340"
alias 360="cd ~/cs/cs360"
alias 361="cd ~/cs/cs361"
alias 365="cd ~/cs/cs365"
alias 366="cd ~/cs/cs366"
alias 370="cd ~/cs/cs370"
alias 401="cd ~/cs/cs401"
alias 402="cd ~/cs/cs402"
alias 425="cd ~/cs/cs425"
alias 461="cd ~/cs/cs461"
alias 462="cd ~/cs/cs462/hw20"
alias ece462="cd ~/cs/ece462"
alias 466="cd ~/cs/cs466"
alias math475="cd ~/cs/math475"
alias 483="cd ~/cs/cs483"
alias 523="cd ~/cs/cs523"
alias 530="cd ~/cs/cs530"
alias 545="cd ~/cs/cs545"
alias 556="cd ~/cs/cs556/ecstatic_chebyshev"
alias 560="cd ~/cs/cs560"
alias 562="cd ~/cs/cs562/spatel84"
alias 565="cd ~/cs/cs565"
alias 581="cd ~/cs/cs581"
alias 593="cd ~/cs/cs593"
alias 594="cd ~/cs/cs594"
alias practice="cd ~/cs/practice"
alias labs='cd `pwd`/labs'
alias lab0='cd `pwd`/lab0'
alias lab1='cd `pwd`/lab1'
alias lab2='cd `pwd`/lab2'
alias lab3='cd `pwd`/lab3'
alias lab4='cd `pwd`/lab4'
alias lab5='cd `pwd`/lab5'
alias lab6='cd `pwd`/lab6'
alias lab7='cd `pwd`/lab7'
alias lab8='cd `pwd`/lab8'
alias lab9='cd `pwd`/lab9'
alias lab10='cd `pwd`/lab10'
alias hw='cd `pwd`/homework'
alias hw1='cd `pwd`/hw1'
alias hw2='cd `pwd`/hw2'
alias hw3='cd `pwd`/hw3'
alias hw4='cd `pwd`/hw4'
alias hw5='cd `pwd`/hw5'
alias hw6='cd `pwd`/hw6'
alias hw7='cd `pwd`/hw7'
alias hw8='cd `pwd`/hw8'
alias hw9='cd `pwd`/hw9'
alias hw10='cd `pwd`/hw10'

alias programs="cd ~/programs"
alias program="programs"
alias C="cd ~/programs/c"
alias cpp="cd ~/programs/cpp"
alias shell="cd ~/programs/shell"
alias Python="cd ~/programs/python"

alias gitps="git push"
alias gitc="git commit -m"
alias gits="git status"
alias gita="git add -u ."
alias gitpl="git pull"
alias cdg="cd ~/cs"

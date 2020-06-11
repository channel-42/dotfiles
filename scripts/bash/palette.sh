get_colors(){
  esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[1;30m";   redb="${esc}[1;31m";    greenb="${esc}[1;32m"
  yellowb="${esc}[1;33m"   blueb="${esc}[1;34m";   purpleb="${esc}[1;35m"
  cyanb="${esc}[1;36m";    whiteb="${esc}[1;37m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

print_banner(){ 
    figlet -f ~/.local/share/fonts/3d.flf "hello $USER" | lolcat
    printf "\n\n"
}
print_update(){
    updates=$(sudo pacman -Sy > /dev/null && pacman -Qu | wc -l)
    if [[ $updates != 0 ]];then
        echo "${yellowf}pending updates: $updates"
    else
        echo "${greenf}pending updates: $updates"
    fi
}
get_colors
print_banner

cat << EOF
${blackf}█████${reset}     ${redf}█████${reset}     ${greenf}█████${reset}     ${yellowf}█████${reset}     ${bluef}█████${reset}     ${purplef}█████${reset}     ${cyanf}█████${reset}     ${whitef}█████${reset}     
${blackf}███${reset}${blackb}█████${reset}  ${redf}███${reset}${redb}█████${reset}  ${greenf}███${reset}${greenb}█████${reset}  ${yellowf}███${reset}${yellowb}█████${reset}  ${bluef}███${reset}${blueb}█████${reset}  ${purplef}███${reset}${purpleb}█████${reset}  ${cyanf}███${reset}${cyanb}█████${reset}  ${whitef}███${reset}${whiteb}█████${reset} 
${blackf}███${reset}${blackb}█████${reset}  ${redf}███${reset}${redb}█████${reset}  ${greenf}███${reset}${greenb}█████${reset}  ${yellowf}███${reset}${yellowb}█████${reset}  ${bluef}███${reset}${blueb}█████${reset}  ${purplef}███${reset}${purpleb}█████${reset}  ${cyanf}███${reset}${cyanb}█████${reset}  ${whitef}███${reset}${whiteb}█████${reset} 
   ${blackb}█████${reset}     ${redb}█████${reset}     ${greenb}█████${reset}     ${yellowb}█████${reset}     ${blueb}█████${reset}     ${purpleb}█████${reset}     ${cyanb}█████${reset}     ${whiteb}█████${reset} 
EOF

printf "\n"
print_update
printf "\n\n"

#!/bin/bash
clear 
p=1
clear
termux-open https://www.facebook.com/Myanmar-Anonymous-Helper-Reporter-Teams-101125495006030/

clear

echo -e " \e[1;31m 
\033[0;33m     111     111       111        111111     1111111111                 
\033[0;32m     111 111 111      11 11       11  11        111
\033[0;36m     111  1  111     1111111      111111        111
\033[1;33m     111     111    11     11     11 11         111
\033[0;31m     111     111   11       11    11  11        111
\e[0m "

echo ""

echo -e "\e[1;35m        Code By ZuZu ( BL4CK ZuH4ck ) \e[0m"
echo ""
echo -e "\e[1;33m      !Only for boys & Girls over 18 years old! \e[0m"
echo ""
read  -p "Enter Category :: " pa 
echo ""
echo -e "\e[1;33m If you want to stop (CTRL + C ) \e[0m"

video=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+"' | cut -d '"' -f1 | sort -u > res.txt)
error=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+"' | cut -d '"' -f1)

title=$(curl -s "https://www.pornhub.com/video/search?search=$pa&page=$p" -L | grep -oP '<a href="/view_video\K[^ ]+" title="(.*?)"' | cut -d '"' -f3 | sort -u > title.txt)
if [[ -z $error ]];then
echo -e "\e[1;31m You check the internet \e[0m"
else 
for i in $(seq $(cat res.txt | wc -l ))
do 
echo ""
sleep 2 
echo -e "\e[1;33m [#] Title :: "$(cat title.txt | sed -n "${i}p" )
echo -e "\e[1;36m [#] Link :: \e[4;36m https://www.pornhub.com/view_video$(cat res.txt | sed -n "${i}p" )\e[0m"
echo ""
done 
rm -rf res.txt 
rm -rf title.txt 
read -p " you want to see url : " ghost
termux-open $ghost
fi
#echo and printf commands are used to print some message on the screen

#How ever we used echo command here , because it is simple and yet effective to all the needs

# syntax: echo Input Message

echo Hello world

#echo to print multiple lines (\n)

echo -e "Hello,\nWelcome to my Github\n@saisindhu"

echo -e "Iam\tsindhu\tworking\ton\tproject"

##print text in colors
#syntax : echo -e "\e[COLORmMessage"

#Colors         #code
#RED             31
#GREEN           32
#YELLOW          33
#BLUE            34
#MAGENETA         35
#CYAN             36

echo -e "\e[31mHello In RED"
echo -e "\e[32mHello In GREEN"
echo -e "\e[33mHello In YELLOW"
echo -e "\e[34mHello In BLUE"
echo -e "\e[35mHello In MAGENETA"
echo -e "\e[36mHello In CYAN"

echo -e "Intro to colors"
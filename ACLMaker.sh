
#!/bin/bash
# Program name: ASA Object Maker
clear
# Display Title
cat << "EOF"
 ______     ______     __            __    __     ______     __  __     ______     ______
/\  __ \   /\  ___\   /\ \          /\ "-./  \   /\  __ \   /\ \/ /    /\  ___\   /\  == \
\ \  __ \  \ \ \____  \ \ \____     \ \ \-./\ \  \ \  __ \  \ \  _"-.  \ \  __\   \ \  __<
 \ \_\ \_\  \ \_____\  \ \_____\     \ \_\ \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\
  \/_/\/_/   \/_____/   \/_____/      \/_/  \/_/   \/_/\/_/   \/_/\/_/   \/_____/   \/_/ /_/


Created by:MZ
EOF
#sleep 2
clear
echo "############################### COPY HOSTS BELOW ###############################"
#  read ip_list.txt
cat ip_list.txt |  while read output
do
        IP="$(ipcalc -n $output | awk '{ if ($1 == "Address:") { print $2 }}')"
        NM="$(ipcalc -n $output | awk '{ if ($1 == "Netmask:") { print $2 }}')"
        echo object network obj-$IP    #Change your naming prefix here do not remove the variable $IP
        echo subnet $IP $NM
        echo description # ADD A DESCRIPTION HERE
        echo ex
done
echo "############################### END HOSTS ###############################"
echo "############################### COPY BELOW FOR GROUP ###############################"
cat ip_list.txt |  while read output
do
        IP="$(ipcalc -n $output | awk '{ if ($1 == "Address:") { print $2 }}')"
        echo object network obj-$IP
done
echo "############################### END GROUP ###############################"



# ASA-ACL-MAKER
Converts cidr to a usable input for ASA ACL's

# How to use
```bash
sudo nano ACLMaker.sh
```
paste script and add description(can have spaces and doesn't need quotes) and ctrl + x to save
```bash
sudo chmod +x ACLMaker.sh
```
```bash
nano ip_list.txt
```
paste ip's i.e. 10.10.0.0/16 < make sure there are no extra spaces below the last ip

```bash
./ACLMaker.sh
```
```bash
 ______     ______     __            __    __     ______     __  __     ______     ______
/\  __ \   /\  ___\   /\ \          /\ "-./  \   /\  __ \   /\ \/ /    /\  ___\   /\  == \
\ \  __ \  \ \ \____  \ \ \____     \ \ \-./\ \  \ \  __ \  \ \  _"-.  \ \  __\   \ \  __<
 \ \_\ \_\  \ \_____\  \ \_____\     \ \_\ \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\
  \/_/\/_/   \/_____/   \/_____/      \/_/  \/_/   \/_/\/_/   \/_/\/_/   \/_____/   \/_/ /_/


Created by:MZ
############################### COPY HOSTS BELOW ###############################
object network obj-10.10.0.0
subnet 10.10.0.0 255.255.0.0
description 
ex
object network obj-192.168.1.0
subnet 192.168.1.0 255.255.255.0
description 
ex
############################### END HOSTS ###############################
############################### COPY BELOW FOR GROUP ###############################
object network obj-10.10.0.0
object network obj-192.168.1.0
############################### END GROUP ###############################
```



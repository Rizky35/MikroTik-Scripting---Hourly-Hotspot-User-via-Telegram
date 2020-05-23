/system scheduler
add disabled=yes interval=1h name=perjam on-event="{\
    \n:local \"CHAT-ID\" \"Chat ID\";\
    \n:local BOT \"Bot ID\";\
    \n:local Router [/system identity get name];\
    \n:local useraktif [/ip hotspot active print count-only];\
    \n/tool fetch url=\"https://api.telegram.org/bot\$BOT/sendMessage\\\?chat_id=\$\"CHAT-ID\"&text=\$Router Login :%0ATerhubung : \$userakti\
    f user\" mode=http keep-result=no;\
    \n}" policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=sep/10/2019 start-time=05:00:00
add interval=1d name="nonaktifkan perjam" on-event="/system scheduler disable perjam;" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=sep/10/2019 start-time=18:00:01
add interval=1d name="aktifkan perjam dan total user" on-event="/system scheduler enable perjam;" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=sep/10/2019 start-time=04:59:50

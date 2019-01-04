#!/bin/bas


#розпаковка внутренних архивов по папкам
7z x acestream.7z -o/opt/
7z x remotefork.7z -o/opt/

#remotefork утановка
cp /opt/remotefork/remotefork.service /etc/systemd/system
chmod +x /opt/remotefork/RemoteForkCP
systemctl enable remotefork.service


#acestream установка
cp /opt/acestream/acestream.service /etc/systemd/system
chmod +x /opt/acestream/acestream.start
chmod +x /opt/acestream/acestream.stop
systemctl enable acestream.service
systemctl start acestream.service


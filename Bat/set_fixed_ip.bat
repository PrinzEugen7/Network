@echo off
setlocal

rem インターフェース名称
set IFNAME="ローカル エリア接続"

rem IPアドレス
set IPADDR=10.10.10.1

rem サブネットマスク
set MASK=255.255.255.0

rem デフォルトゲートウェイ
set GW=10.10.10.254

rem DNSサーバー
set DNS1=10.10.10.10
set DNS2=10.10.10.11

rem IPアドレス、マスク、デフォルトGW を設定
netsh interface ipv4 set address name=%IFNAME% source=static address=%IPADDR% mask=%MASK% gateway=%GW% gwmetric=1


rem DNSサーバーを設定（優先順位1に変数DNS1）
netsh interface ipv4 add dnsservers name=%IFNAME% address=%DNS1% index=1 validate=no


rem DNSサーバーを設定（優先順位2に変数DNS2）
netsh interface ipv4 add dnsservers name=%IFNAME% address=%DNS2% index=2 validate=no

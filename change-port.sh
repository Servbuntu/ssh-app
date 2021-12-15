#!/usr/bin/env sh
file=/etc/ssh/sshd_config
cp -p $file $file.old &&
awk '
$1=="Port" {$2="'$1'"}
$1=="#PubkeyAuthentication" {$1="PubkeyAuthentication"; $2="yes"}
{print}
' $file.old > $file && systemctl restart sshd
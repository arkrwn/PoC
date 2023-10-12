#!/usr/bin/env bash
set -e
set -x

# STATIS PARAM
exec 2>/dev/null
domainfile="$1"

[[ -f $domainfile ]] || {
  echo "[ERROR] : Need $domainfile and it doesn't exist."
  exit 127
}

echo -e "\n========================[PROCESS STARTED]========================\n"

while read domain; do
    if [[ ${domain:0:1} != "#" ]]; then
        echo -e "\n[PROCESS] : Checking on $domain"
        cmd=`curl -X POST -d 'fqdn='$domain https://checkhost.unboundtest.com/checkhost --connect-timeout 5 | perl -lne 'print $1 if /(OK)/i'`
        if [[ $cmd ]]; then
            echo "[RESULT] :  OK!"
        else
            echo "[RESULT] :  Please renew your certificate immidiately!"

        fi
    fi
done < $domainfile

echo -e "\n========================[PROCESS FINISHED]========================\n"
#!/bin/bash
for i in {309367..309467}
do


echo "Block $i"

part1='{"jsonrpc":"2.0","id":"0","method":"getblockheaderbyheight","params":{"height":'
part2='}}'
request=$part1$i$part2

#printf "\n"

curl -X POST http://127.0.0.1:44081/json_rpc -d $request -H 'Content-Type: application/json'

printf "\n"

done 
> output.txt 

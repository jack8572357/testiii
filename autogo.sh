#! /bin/bash
cd /d/test/testiii/temp
while true
do
 fc="$(ls | wc -l)"
 if [ $fc -gt 0 ];
 then
 FILES=/d/test/testiii/temp/*
 for f in $FILES
 do
 /mingw64/bin/git add $f
 /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
 /mingw64/bin/git remote add origin git@github.com:jack8572357/testiii.git
 /mingw64/bin/git push -u origin master
 /mingw64/bin/git remote remove origin
 done
 fi;
 rm -rf /d/test/testiii/temp/*
 sleep 3
done
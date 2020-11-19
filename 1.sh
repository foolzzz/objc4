#!/bin/bash


for i in `ls *.tar.gz`;do
    echo $i

    fn=${i%.tar.gz}

    tar -zxf $i -C ./objc --strip-components=1

    # echo $i
    # echo $fn

    # gcmsg "$i"

    cd objc
    git add *
    git commit -a -m "$i"
    git tag $fn
    cd -
done




# tar -zxf objc4-208.tar.gz -C ./o --strip-components=1

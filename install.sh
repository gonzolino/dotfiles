#!/usr/bin/env sh
cd
for f in `ls -a $(dirname $0)` ; do
    # Ignore some files/directories
    if [ $f == "." ] || [ $f == ".." ] || [ $f == ".git" ] || [ $f == ".gitmodules" ] || [ $f == "install.sh" ] ; then
        continue
    fi

    # Remove old file if present
    if [ -e ~/$f ] ; then
        rm -rf ~/$f
    fi
    ln -s $(dirname $0)/$f $f
done

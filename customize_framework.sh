#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

function appendSmaliPart() {
  	cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
	  cd ..
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    applyPatch "overlay/framework"
    cp -rf $1/smali/android/widget/Editor*.smali $2/smali/android/widget/
    appendSmaliPart "framework"
    sed -i 's/.field public static final MAXIMUM_BACKLIGHT:I = 0xff*/.field public static final MAXIMUM_BACKLIGHT:I = 0xfff/g' $2/smali/miui/app/ToggleManager.smali
    sed -i 's/rsub-int v1, v1, 0xff/rsub-int v1, v1, 0xfff/g' $2/smali/miui/app/ToggleManager.smali
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    appendSmaliPart "services"
fi

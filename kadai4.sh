#!/bin/bash                                 

#引数は2つ入力されているか
if [ $# != 2 ]; then
  echo "引数は2つ入力してください" 1>&2
  exit 1
fi

#文字などを入れていないか
expr $1 + $2 > /dev/null 2>$1
 if [ $? -ge 2 ];then
 echo "数字（整数)を入れてください" 1>&2
 exit 1
fi

#1以上の数値か
if test "$1" -lt "1" || test "$2" -lt "1" ; then
  echo "1より大きな数を入れてください" 1>&2
  exit 1
fi


#入力数字の確認表示
echo "1番目の数は$1"
echo "2番目の数は$2"

#1番目と2番目の数値の比較
if [ $1 -lt $2 ]; then
 echo "1番目の数は2番目より大きい数値で入れてください" 1>&2
 exit 1
else
 echo "計算中"
fi

 
#最大公約数の計算式 rがあまり
  gcf() {
   r=$(( $1  % $2  ))
    if [ $r -eq 0 ]; then
      echo "最大公約数は$2"
      return 0 
    else
        gcf $2 $r
    fi
  }

#gcf計算式を実行
gcf $1 $2



#!/bin/bash

#正しい数値入力の場合
./kadai4.sh 40 20
echo "test=$?"
if [ $? -eq 0 ]; then
  echo "数値正常成功"
else
  echo "失敗"
fi

#引数が1つの場合
./kadai4.sh 30
if [ $? -eq 1 ]; then
 echo "引数1つテスト成功"
else
 echo "失敗"
fi

#引数が3つの場合
./kadai4.sh 30 50 60
if [ $? -eq 1 ]; then
 echo "引数3つテスト成功"
else
 echo "失敗"
fi

#引数が未入力
./kadai4.sh
if [ $? -eq 1 ]; then
 echo "引数未入力テスト成功"
else
 echo "失敗"
fi
 
#引数に0を含む
./kadai4.sh 24 0
 if [ $? -eq 1 ]; then
  echo "引数0含むテスト成功"
 else
  echo "失敗"
 fi

#引数に小数点を含む 
./kadai4.sh  3.4  5
 if [ $? -eq 1 ]; then
  echo "引数小数点含むテスト成功"
 else
  echo "失敗"
 fi

#引数が文字列
./kadai4.sh  a  5
if [ $? -eq 1 ]; then
 echo "引数が文字列テスト成功"
else
 echo "失敗"
fi

#第2引数が大きい
./kadai4.sh  5 10
if [ $? -eq 1 ]; then
 echo "引数が文字列テスト成功" 
else
 echo "失敗"
fi



#!/bin/sh

## (4) 变量

pgrep init
# 获得程序的进程id

length=${#var}
# 获取变量长度
echo $length

## (5) 运算

no1=1;

echo "4 * 1.2" | bc
result=`echo "scale=3 ; obase=2 ; $no1 * 1.5" | bc`
# 精度  进制
result=`echo "10^10 ; sqrt(100)" | bc`

## (6) relocation

cat README.md 1> log 2>/dev/null
cat README.md 1> log 2&>1 

ls | tee (-a) ls.info
# terminsl中显示,并且定向到文件



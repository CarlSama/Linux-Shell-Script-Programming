#!/bin/sh

## (1) 三种打印

var="hi there";
# 不能有空格

echo '$var' 
# 弊端 : bash不对'''号中变量($var)求值

echo hi !
# 弊端 : 打印';'号时,将被解析为换行

echo "${var}" 
echo "$var" 

## (2) printf打印

printf "%-5s %-10.2f\n" Jeff 88.1 
# %-5 左对齐且宽度为5; 不加-,右对齐
# .2f代表保留2位小数 
# \n换行

## (3) echo打印

echo -n ignore
# -n忽略结尾换行符

echo -e "1\t2\t"
# 激活转义字符(例如彩色输出时)

#echo -e "\e[1;42m red text \e[0m"
#What's wrong? 

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

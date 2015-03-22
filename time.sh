# !/bin/sh -xv

echo -n Count :
# 不换行

set -x
tput sc
set +x
# 存储光标位置

count=0;
while true;
do
	if [ $count -lt 40 ];
	then let count++;
		sleep 1;
		tput rc
		#恢复光标位置到先前保存的点
		tput ed
		#擦除当前光标位置到行尾
		echo -n $count;
	else
		exit 0;
	fi
done

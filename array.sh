# !/bin/sh

# (1)array

array=(1 2 3 4 5)

echo ${array[*]}

echo ${#array[*]}
# length


# (2)associative array

declare -A friuits_value

friuits_value[apple]='100 $'
friuits_value[oriange]='200 $'

echo "Apple costs ${friuits_value[apple]}"

echo ${!friuits_value[*]}
# 列出关联数组的索引



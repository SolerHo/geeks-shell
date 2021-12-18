#!/bin/bash

# Description : 统计某个文件中的行数

# 方法 1 ： 优先推荐使用该方式进行统计函数
sed -n '$=' hello.c
# 方法 2
cat hello.c | wc -l
# 方法 3
wc -l hello.c

# 关于方法2 和 方法3 的说明：最后一行必须是空格，不然获取的行数不准确

# 方法 4
awk '{print NR}' hello.c | tail -n1
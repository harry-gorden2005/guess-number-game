#!/bin/bash
#1-10之间的猜数字小游戏
echo "请输入您的姓名："
read name
echo "您好，$name"

number=$((RANDOM % 10 + 1))
while true
do
echo "请输入一个1-10之间的数字"
read guess

#范围检查
if [[ $guess -lt 1 ]] || [[ $guess -gt 10 ]]; then
	echo "超出范围"
	continue
fi

if [[ $guess -eq $number ]]; then
	echo "恭喜你猜对啦,请选择是否继续？（y/n）："
	read choice
	if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
		number=$((RANDOM % 10 + 1))
		continue
	else
		echo "游戏结束，再见$name"
		break
	fi
elif [[ $guess -lt $number ]]; then
	echo "小了"
else
	echo "大了"
fi
done

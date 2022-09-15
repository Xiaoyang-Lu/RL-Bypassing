OLD_GAMMA=16
array3=(16 32 64 128 256 512 1024 2048 4096 8192)
#array=(1 2 3)
for k in ${array3[@]}
do
	sed -i "50,50s/${OLD_GAMMA}/${k}/g" ./replacement/rl.llc_repl
	./build_champsim.sh no
	nohup ./4-core.sh
	#echo "$i $j $k"
	#echo "OLD_EPSILON is $OLD_EPSILON"
	#echo "OLD_ALPHA is $OLD_ALPHA"
	#echo "OLD_GAMMA is $OLD_GAMMA"

	#echo "NEW_EPSILON is $i"
	#echo "NEW_ALPHA is $j"
	echo "NEW_GAMMA is $k"
	#OLD_EPSILON=$i
	#OLD_ALPHA=$j
	OLD_GAMMA=$k
done

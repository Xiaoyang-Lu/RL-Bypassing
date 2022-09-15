OLD_GAMMA=0.90483741803
array3=(0.90483741803 0.81873075307 0.74081822068 0.60653065971 0.54881163609 0.44932896411 0.36787944117 0.22313016014 0.13533528323 0.08208499862)
#array=(1 2 3)
for k in ${array3[@]}
do
	sed -i "20,20s/${OLD_GAMMA}/${k}/g" ./replacement/rl.llc_repl
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

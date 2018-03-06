for file1 in {0..9999}
do
	for file2 in {0..9999}
	do
		if [ "$file1" -lt "$file2" ]
		then
		#		DIFF=$(diff shortTestForest2/file04Tree$file1.txt shortTestForest2/file04Tree$file2.txt)
				DIFF=$(diff midRitaForest/rita-tree-$file1.txt midRitaForest/rita-tree-$file2.txt)
				if ! [ $? -ne 0 ]
				then
					#echo "Diffence between tree$file1.txt and tree$file2.txt"
					echo "midRitaForest/rita-tree-$file1.txt and midRitaForest/rita-tree-$file2.txt match"
				fi
		fi
	done
done

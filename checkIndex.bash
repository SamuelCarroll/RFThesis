#for file1 in {0..9999}
for val in {31..40}
do
    echo "Checking value $val"
    #for val in {31..40}
    for file1 in {0..9999}
    do
        CUT=$(cat midRitaForest/rita-tree-$file1.txt | cut -d , -f 2 | grep $val)
        #CUT=$(cat ~/Documents/Thesis_Work/Forests_and_Results/CompositeData/1percentTotData/1percentTree-$file1.txt | cut -d , -f 2 | grep 32)
        if ! [ $? -ne 0 ]; then
            #The following line will be used to correct a forest
            #vim rita-composite/rita-tree-$file1.txt
            #The following line will be used to inform the end user of the forest result
            echo "midRitaForest/rita-tree-$file1.txt has invalid index $val"
        fi
    done
done

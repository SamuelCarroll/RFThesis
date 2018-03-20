fileNums=("02" "03" "04" "06" "07" "08" "09" "10" "11" "12" "13")

echo "Training slight forest changes"
date
#./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/RETRAINWITHTHIS-1percent75RitaData.csv slightChanges/newTree- > replaceIndicesTrain.txt
#echo "./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/RETRAINWITHTHIS-1percent75RitaData.csv nonBinaryReplace/newTree- > nonBinaryTrain.txt"
#date
#echo "Comparing trees"
#./compTrees.bash
#go build
#echo "Testing slight forest changes"
#date
#./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/file10/true-rita-file10-full-partial.csv slightChanges/newTree- > replaceIndicesTest.txt
#./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/file10/true-rita-file10-full-anom.csv nonBinaryReplace/newTree- > nonBinaryTest.txt
count=0
while [ $count -lt 11 ]; do
    echo "Testing dataset rita-file${fileNums[count]}-test.csv"
    file=~/Documents/Thesis_Work/Decision-Tree/NetTraffic/rita-file${fileNums[count]}-test.csv
    echo Testing $file > nonBinaryFile${fileNums[count]}Test.txt
    ./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/rita-file${fileNums[count]}-test.csv WOWSig/nonBinaryReplace/newTree- >> nonBinaryFile${fileNums[count]}Test.txt
    let count=count+1
done

date

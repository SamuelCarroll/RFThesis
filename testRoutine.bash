echo "Training slight forest changes"
date
./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/RETRAINWITHTHIS-1percent75RitaData.csv slightChanges/newTree- > replaceIndicesTrain.txt
date
#echo "Comparing trees"
#./compTrees.bash
go build
echo "Testing slight forest changes"
date
./RFThesis ~/Documents/Thesis_Work/Decision-Tree/NetTraffic/file10/true-rita-file10-full-partial.csv slightChanges/newTree- > replaceIndicesTest.txt
date

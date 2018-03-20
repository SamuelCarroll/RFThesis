package main

import (
	"fmt"
	"os"

	"github.com/SamuelCarroll/DecisionForest"
	"github.com/SamuelCarroll/readFile"
)

func main() {
	NUMCLASSES := 2
	NUMTREES := 10000
	if len(os.Args) < 3 {
		fmt.Println("Run ./RFThesis dataFile treeFile")
		os.Exit(-1)
	}

	inFile := os.Args[1]
	outBase := os.Args[2]

	//readFile.Read(inFile, uidPresent, classPresent)
	fmt.Println("Reading the data")
	myData := readFile.Read(inFile, true, true)

	//DecisionForest.GenForest(allData, numClasses, numTrees, printRes, writeTrees, readTrees, outBase)
	//Uncomment the following lines to test data
	fmt.Println("Testing the forest")
	DecisionForest.GenForest(myData, NUMCLASSES, NUMTREES, true, false, true, outBase)
	//Uncomment the following lines to train the forest
	//fmt.Println("Training the forest")
	//DecisionForest.GenForest(myData, NUMCLASSES, NUMTREES, true, true, false, outBase)
}

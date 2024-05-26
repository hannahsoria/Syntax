/** 
 * task2.swift
 * Hannah Soria
 * 3/10/2024
 * binary search in swift
 */

// binary search of an array
func binarySearch(_ array: [Int], key: Int) -> Int?{ // question mark indicates var might contain nil type
                                                    // _ indicates that the type does not need to be stated

    guard !array.isEmpty else {return nil} // if the array isnt empty its good otherwise exit if null

    var lowIndex = 0 //varaible for index of first element in array
    var highIndex = array.count - 1 //variable for index of the last element in array

    while lowIndex <= highIndex { //as long as the first value is lower than the highest value
        var midIndex = (lowIndex + highIndex) / 2 // the index of the middle of the array

        if array[midIndex] == key { // if the key is the middle of the array return it
            return midIndex
        } else if array[midIndex] < key { // if the middle is smaller thant he key set low value to middle + 1
            lowIndex = midIndex + 1 // creates a new low to reset the middle
        } else { // id the middle is larger than the key
            highIndex = midIndex - 1 // create a new high to reset the middle
        }
    }
    return nil
}

var myArray = [2,4,6,8,10] // example input
if var index = binarySearch(myArray, key: 4){
    print("key is at index \(index)")
} else {
    print("the key was not found")
}
/**
 * extensions.swift
 * Hannah Soria
 * 3/13/2024
 * extensions: unique cases in swift
 */

// no need to create two separately named functions
// both of these functions have the same name
// therefore when they are run you can just input either type and run it
func add(_ x: Int, _ y: Int) -> Int{
    return x + y
}

func add(_ x: String, _ y: String) -> String{
    return x + y
}

print(add(3,5))
print(add("3","5"))

// guard
// guard is like if but basically runs the opposite of if
func findValue(_ array:[Int], key:Int) ->Bool{
    guard array.contains(key) == true else{
        print("element is not in the array")
        return false
        
    }
    print("element is in the array")
    return true
    
}

let numbers = [1,2,3,5,6,7]

print(findValue(numbers, key:4))

// if case let
//case is used inside the if to perform pattern matching
// let matches against the x and y that is in coordinate
// if the coordinates match then the following statement is true
// if case let allows for precise coding
let coordinate = (x: 2, y:6)
if case (let x, let y) = coordinate{
    print("coordinates: (\(x), \(y))")
}

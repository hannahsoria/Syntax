/**
 * task1.swift
 * Hannah Soria
 * 3/8/2024
 * demonstrates the rules for identifier naming,
 * variable declarations and identifier scoping
 */

// IDENTIFER NAMING

// must start with ASCII letter or "_"
// after this anything is allowed
// no whitespace characters are allowed
// cannot use keywords
// case sensitive - the same naming of two variables are
// two different identifiers

// allowed
var totalCount = 0
// not allowed
var Count: Int = 0
// not allowed
//var total count: Int = 0

// not allowed
//var func: int = 0

// unallowed key words
// func, class, if, var

// clarity is important
func remove()                // this is too vague
func removeVariable()        // this is describing what the function is doing
// but brevity is less important thatn clarity
func remVar()                // this makes the variable hard to understand
// do not include unnecessary words
func removeMyVariable()      // my is not necessary to understand the purpose

// naming the variable consistenting leave makes them transferable across classes
class Math{
    func add(x: Float, y: Float)
}

class Integers: Math{
    // this keeps the name of functios consistent
    func add(x: Int, y:Int)
}

class Integers: Math{
    //this does not keep the function naming consistent
    func addInt(x: Int, y:Int)
}


// VARIABLE DECLARATIONS

// to delcare a variable must use the keyword var
// can optionally declare with a : or a =
// if you dont make a type annotation swift assumes
var myVar = 4
// var denotes a variaible, value can be changed later
myVar = 2

//cannot declare varaible with out var with the same name in the same scope
total = 9

// integer types
var Int 
var Int8 // int with specified size
var UInt // unsigned int
var UInt16 // unsigned int with specified size

// floating point types
var Float
var Double

// boolean type
var Bool

// String type
var String

// character types
var Character

// IDENTIFIER SCOPING

// global scope: can be accessed from anywhere in the program

// local scope: can only be accessed in the code block declared in

// function parameters: parameters only have scope within function body

// nested scopes:can define code blocks in other code blocks. outer code block
// identifiers have scope in the inner but not the reverse

// block scoping: blocks in {} are only accessible in the code block or in 
// an inner code block

var globalInt: Int = 7 // global

func addInts(){
    var localInt: Int = 3 // local

    for number: Int in localInt {
        var nestedInt: Int = 8 // nested

    }
}
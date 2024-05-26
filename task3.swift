/**
 * task3.swift
 * Hannah Soria
 * 3/10/2024
 * basic built in types in swift
 */

 // built in types
 var integer: Int = 2
 var float: Float = 2.0
 var double: Double = 2.00
 var boolean: Bool = true
 var string: String = "this is a string"

 // aggregate types
 struct Coordinate{
    var x: Int
    var y: Int
 }

 class Student{
    var gpa: Float
    var major: String

    init(gpa: Float, major: String){
        self.gpa = gpa
        self.major = major
    }
 }

 // operations
 var addition = integer + integer
 var addition2: Float = float + float
 var addition3: Double = double + double
 var addition5: String = string + string

 var subtraction = integer - integer
 var subtraction2: Float = float - float
 var subtraction3: Double = double - double

 var multiplication = integer * integer
 var multiplication2: Float = float * float
 var multiplication3: Double = double * double

 var division = integer / integer
 var division2: Float = float / float
 var division3: Double = double / double

 var mod = integer % integer

 var coordinate = Coordinate(x: 2, y: 4)
 var student: Student = Student(gpa: 3.8, major: "biology")

print("Result of addition: \(addition)")
print("Result of addition2: \(addition2)")
print("Result of addition3: \(addition3)")
print("Result of addition5: \(addition5)")

print("Result of subtraction: \(subtraction)")
print("Result of subtraction2: \(subtraction2)")
print("Result of subtraction3: \(subtraction3)")

print("Result of multiplication: \(multiplication)")
print("Result of multiplication2: \(multiplication2)")
print("Result of multiplication3: \(multiplication3)")

print("Result of division: \(division)")
print("Result of division2: \(division2)")
print("Result of division3: \(division3)")

print("Result of mod: \(mod)")

print("coordinate (\(coordinate.x), \(coordinate.y))")
print("student: \(student.gpa), \(student.major)")

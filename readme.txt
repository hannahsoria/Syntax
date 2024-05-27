CS333 - Project #3 - README
Hannah Soria
03/14/24

Directory Layout:
Project3_hmsori25/
|
|__/cstk.c
|__/cstk.h
|__/cstktest.c
|__/toDraw.c
|__/task1.swift
|__/task2.swift
|__/task3.swift
|__/extensions.swift
|__/haiku.swift
|__/cs333_project3_readme.txt

cstk.c doesn't compile and run alone
cstk.h doesn't compile and run alone

cstktest.c
 Compile:
	gcc -o cstktest cstktest.c cstk.c
 Run:
	./cstktest
 Output:
	All non-display tests passed!
    You should now see the numbers from 0 to 9: 
    0123456789
    Now you should see the numbers from 9 to 0: 
    9876543210

toDraw.c
 Compile:
	gcc -o toDraw toDraw.c cstk.c
 Run:
	./toDraw
 Output:
	s is at 0x30d3db468

    After pushing elements:
    s is at 0x30d3db468
    s points to 0x7f88d7f05dd0
    s data points to 0x7f88d7f05b50
    s top is at 0x7f88d7f05dd8
    top trial 0x7f88d7f05b78
    s capacity is at 0x7f88d7f05de0
    capacity value is 20
    i is at 0x30d3db464
    i value is 10

    The original list: 12345678910
    The reversed list: 10987654321

    After destroying the stack:
    s is at 0x30d3db468
    s points to 0x7f88d7f05dd0
    s data points to 0x0
    s top is at 0x7f88d7f05dd8
    top trial 0x0
    s capacity is at 0x7f88d7f05de0
    capacity value is 0
    i is at 0x30d3db464
    i value is 10 

task1.swift just declares variables does not run

task2.swift
 Compile:
	swiftc task2.swift
 Run:
	./task2
 Output:
	key is at index 1

task3.swift
 Compile:
	swiftc task3.swift
 Run:
	./task3
 Output:
	Result of addition: 4
    Result of addition2: 4.0
    Result of addition3: 4.0
    Result of addition5: this is a stringthis is a string
    Result of subtraction: 0
    Result of subtraction2: 0.0
    Result of subtraction3: 0.0
    Result of multiplication: 4
    Result of multiplication2: 4.0
    Result of multiplication3: 4.0
    Result of division: 1
    Result of division2: 1.0
    Result of division3: 1.0
    Result of mod: 0
    coordinate (2, 4)
    student: 3.8, biology 

extensions.swift
 Compile:
	swiftc extensions.swift
 Run:
	./extensions
 Output:
	8
    35
    element is not in the array
    false

    coordinates: (2, 6)

haiku.swift
 Compile:
	swiftc haiku.swift
 Run:
	./haiku
 Output:
	cs333
    i enjoy coding in swift
    run to print the text
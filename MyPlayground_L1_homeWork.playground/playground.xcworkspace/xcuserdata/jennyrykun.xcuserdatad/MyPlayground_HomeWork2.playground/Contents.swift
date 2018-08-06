//: Playground - noun: a place where people can play

import UIKit

// task 1

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
for number in numbers {
    print ("My number is \(number)!")
    
}


//task 2

var day: String? = "Sunny"
var night: String = day!


// task 3

let students: Int = 17
let teachers: Int = (students > 100) ? 100 : students


// task 4

let a: Int = 5
let b: Int = 7
let c: Int = 9

if a == 5 && b == 7 || c != 100 {
    print("True")
} else {
    print ("False")
}


// task 5

"This ship is \"Titanic\" \n"


//task 6

var base = "Hello darkness my old friend"
let indexEndOfText = base.index(base.startIndex, offsetBy: 5)
let susbtring = base[base.startIndex...indexEndOfText]


//task 7.1

let sentence = "Japanese infantry"
var search = "eyuioa"
var resultingSentecte = ""

for item in sentence {
    if (search.contains(item)) {
        resultingSentecte.append(String(item).uppercased())
    } else {
        resultingSentecte.append(item)
    }
}

print(resultingSentecte)


//task 7.2

var names: [String] = ["David", "Marilyn", "Ozzy", "Varg"]

var names2: [String] = []
for i in names {
    names2.insert(i, at: 0)
}
print(names2)


// task 8

var forExample: [String] = ["cat", "dog", "657", "chick", "2379", "raccoon", "pig", "1010"]


var intArray1: [Int] = []
for element in forExample {
    if let intvalue = Int(element) {
        intArray1.append(intvalue)
    }
}
print(intArray1)

// task 9

var arr: [Float] = [0.245, 23.89, -12, 5.01, 17]
arr = arr.filter {
    $0 > 5.0
}
print(arr)


// task 10

var firstArr: [String] = ["cat", "dog", "657", "chick", "2379", "raccoon", "pig", "1010"]
var secondArr: [String] = ["David", "Marilyn", "Ozzy", "Varg"]

firstArr = firstArr + secondArr


// task 11

var array2D: [[Int]] = [[0, 1, 0, 1], [1, 0, 1, 0], [0, 1, 0, 1]]

for arr in array2D {
    print(arr)
}




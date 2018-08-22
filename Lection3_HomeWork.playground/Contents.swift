//: Playground - noun: a place where people can play

import UIKit


// task 1

var sentences: String = """
This my first sentence. "Now it's my second sentence." "And this - third sentence.
"""

print(sentences)


// task 2

var numbers: [Int] = [2, 6, 9, 3, 9, 9, 0, 1, 11, 245, 6, 8]

var intArray: [Int] = []
for item in numbers {
    if !intArray.contains(item) {
        intArray.append(item)
    }
}
print(intArray)
intArray.count


// task 3
//50.5, 48.5, 46.5, 44.5 … -45.5, -47.5, - 49.5


   for value in stride(from: 50.5, through: -49.5, by: -2.0) {
        print(value)
    }


//task 4

let string = "сjdncвтлтвка jfjeiojfт тотjdkу9ша 095!! ..?ef,el."
var search1 = "aoeui"
var search2 = "?!."

var resultArray1: [String] = []
var resultArray2: [String] = []
var finishArray3: [String] = []

for item in string {
    if (search1.contains(item)) {
        resultArray1.append(String(item))
    } else if (search2.contains(item)) {
        resultArray2.append(String(item))
    } else {
        finishArray3.append(String(item))
    }
}
print(resultArray1)
print(resultArray2)
print(finishArray3)


// task 5

func stipend(arrayRating: [Int]) -> String {
    var lowRating: [Int] = []
    var highRating: [Int] = []
    var stipend: [Int] = []
    var other: [Int] = []
    
    for item in arrayRating {
        if item < 60 {
            lowRating.append(item)
        } else if item >= 90 {
            highRating.append(item)
        } else if item >= 60 && item <= 74 {
            stipend.append(item)
        } else {
            other.append(item)
        }
    }
    if lowRating.count > 0 {
        return "Не удовлетворительно"
    } else if arrayRating.count == highRating.count {
        return "Повышенная стипендия"
    } else if highRating.count > stipend.count {
        return "Стипендия"
    }
    
    return "Other"
}

print(stipend(arrayRating: [66, 78, 92, 100, 56, 87, 80]))
print(stipend(arrayRating: [90, 93, 99]))
print(stipend(arrayRating: [70, 90, 67, 91, 99]))
print(stipend(arrayRating: [70, 90, 67, 91]))


// task 6

var randomArray: [Int] = Array(0...100)

var randomArray2: [Int] = []

for i in randomArray {
    randomArray2.insert(i, at: 0)
}

print(randomArray2)


// task 7

var someDictionary: [String: [Float]] = ["medium": [4.7, 4.7, 4.7], "small": [2.0, 2.0, 2.0], "large": [7.1, 7.1, 7.1]]


func volume(array: [Float]) -> Float {
    var result: Float = 1.0
    
    for item in array {
        result *= item
    }
    
    return result
}

let sorted = someDictionary.sorted { (firstObject, secondObject) -> Bool in
    volume(array: firstObject.value) < volume(array: secondObject.value)
}

for item in sorted {
    print(item.key)
}


// task 8

var array2D: [[Int]] = [
    [23, 4, 44],
    [43, 9, 42],
    [84, 3, 78],
    [90, 83, 97],
    [100, 0, 11],
    [22, 98, 1],
    [12, 10, 0],
    [56, 39, 30]
]

var array2DSecond: [[Int]] = []


for (index, value) in array2D.enumerated() {
    if index % 2 != 0 {
        array2DSecond.append(value)
    }
}

var arrayFiltered = array2DSecond.filter {
    $0.first! > $0.last!
}

print(arrayFiltered)


// task 9

var line: String = "Lorem         ipsum   dolor sit er elit lamet,  consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt  ut labore  et dolore magna  aliqua. Ut enim ad minim veniam,   quis nostrud exercitation  ullamco laboris nisi ut aliquip ex ea commodo consequat   . Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur  sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim  id est laborum. Nam liber te conscient to   factor tum poen legum odioque civiuda. "

var memory = false

var line2: String = ""

for item in line {
    if memory == true {
        if item == " " {
           
        } else {
            memory = false
            line2.append(item)
        }
    } else { // memory == false
        line2.append(item)
        if item == " " {
            memory = true
        } else {
            // skip
        }
    }
}

print(line2)





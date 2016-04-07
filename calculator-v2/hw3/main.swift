//
//  main.swift
//  hw3
//
//  Created by Alex Ngo on 4/5/16.
//  Copyright © 2016 Alex Ngo. All rights reserved.
//

import Foundation


// Build a Calculator
// ---------------------------------
func add(x: Int, y: Int) -> Int {
    return x + y
}

func subtract(x: Int, y: Int) -> Int {
    return x - y
}

func multiply(x: Int, y: Int) -> Int {
    return x * y
}

func divide(x: Int, y: Int) -> Int {
    return x / y
}

func doMath(x: Int, y: Int, mathOp: (Int, Int) -> Int) -> Int {
    return mathOp(x, y)
}


// Array Fun
// ------------------------------------
func addArray(values: [Int]) -> Int {
    return values.reduce(0, combine: +)
}

func multiplyArray(values: [Int]) -> Int {
    if values.count == 0 {
        return 0;
    }
    return values.reduce(1, combine: *)
}

func countArray(values: [Int]) -> Int {
    return values.count
}

func averageArray(values: [Int]) -> Int {
    return values.reduce(0, combine: +) / values.count
}

func doMathArray(values: [Int], mathOp: ([Int]) -> Int) -> Int {
    return mathOp(values)
}


// Points
// ---------------------------------------------------------------------
func addTuples(tuple1: (Int, Int), tuple2: (Int, Int)) -> (Int, Int) {
    return (tuple1.0 + tuple2.0, tuple1.1 + tuple2.1)
}

func subtractTuples(tuple1: (Int, Int), tuple2: (Int, Int)) -> (Int, Int) {
    return (tuple1.0 - tuple2.0, tuple1.1 - tuple2.1)
}

func addTuplesDict(dict1: [String: Int], dict2: [String: Int]) -> [String: Int] {
    // Check if x and y exist on both dicts
    if dict1["x"] == nil || dict1["y"] == nil || dict2["x"] == nil || dict2["y"] == nil {
        return ["x": 0, "y": 0]
    }
    return ["x" : dict1["x"]! + dict2["x"]!, "y": dict1["y"]! + dict2["y"]!]
}

func subtractTuplesDict(dict1: [String: Int], dict2: [String: Int]) -> [String: Int] {
    // Check if x and y exist on both dicts
    if dict1["x"] == nil || dict1["y"] == nil || dict2["x"] == nil || dict2["y"] == nil {
        return ["x": 0, "y": 0]
    }
    return ["x" : dict1["x"]! - dict2["x"]!, "y": dict1["y"]! - dict2["y"]!]
}


//add
print(doMath(5, y: 5, mathOp: add) == 10)
print(doMath(5, y: 10, mathOp: add) == 15)
print(doMath(50, y: 500, mathOp: add) == 550)

//subtract
print(doMath(10, y: 50, mathOp: subtract) == -40)
print(doMath(1000, y: 500, mathOp: subtract) == 500)
print(doMath(10, y: 10, mathOp: subtract) == 0)

//multiply
print(doMath(10, y: 10, mathOp: multiply) == 100)
print(doMath(10, y: 100, mathOp: multiply) == 1000)
print(doMath(10, y: 0, mathOp: multiply) == 0)

//divide
print(doMath(10, y: 10, mathOp: divide) == 1)
print(doMath(100, y: 10, mathOp: divide) == 10)
print(doMath(10000, y: 1, mathOp: divide) == 10000)

//add array
print(doMathArray([1, 2, 3], mathOp: addArray) == 6)
print(doMathArray([1, 2, 3, 4, 5], mathOp: addArray) == 15)
print(doMathArray([], mathOp: addArray) == 0)

//multiply array
print(doMathArray([1, 5, 10], mathOp: multiplyArray) == 50)
print(doMathArray([10, 10, 10], mathOp: multiplyArray) == 1000)
print(doMathArray([1, 1], mathOp: multiplyArray) == 1)

//count array
print(doMathArray([1, 5, 10, 10], mathOp: countArray) == 4)
print(doMathArray([1, 5, 10, 10, 10, 10], mathOp: countArray) == 6)
print(doMathArray([], mathOp: countArray) == 0)

//average array
print(doMathArray([1, 1, 1, 1], mathOp: averageArray) == 1)
print(doMathArray([10, 10, 40], mathOp: averageArray) == 20)
print(doMathArray([1], mathOp: averageArray) == 1)

//add tuples
print(addTuples((2, 2), tuple2: (4, 4)) == (6, 6))
print(addTuples((2, 2), tuple2: (5, 5)) == (7, 7))
print(addTuples((0, 0), tuple2: (2, 2)) == (2, 2))

//subtract tuples
print(subtractTuples((2, 2), tuple2: (4, 4)) == (-2, -2))
print(subtractTuples((2, 2), tuple2: (10, 10)) == (-8, -8))
print(subtractTuples((2, 2), tuple2: (0, 0)) == (2, 2))

//add dictionaries
print(addTuplesDict(["x": 2, "y": 5], dict2: ["x": 2, "y": 5]) == ["x": 4, "y": 10])
print(addTuplesDict(["x": 10, "y": 5], dict2: ["x": 2, "y": 5]) == ["x": 12, "y": 10])
print(addTuplesDict(["x": 0, "y": 0], dict2: ["x": 2, "y": 5]) == ["x": 2, "y": 5])


//subtract dictionaries
print(subtractTuplesDict(["x": 2, "y": 5], dict2: ["x": 2, "y": 5]) == ["x": 0, "y": 0])
print(subtractTuplesDict(["x": 2, "y": 5], dict2: ["x": 0, "y": 0]) == ["x": 2, "y": 5])
print(subtractTuplesDict(["x": 100, "y": 100], dict2: ["x": 2, "y": 5]) == ["x": 98, "y": 95])









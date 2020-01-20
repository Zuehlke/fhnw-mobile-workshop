import Foundation
/*:

# Control Structure to Enum
## if

*/
let name = "john"

if name == "john" {
    print("john")
}
else if name == "helmut" {
    print("helmut")
}
else {
    print("anything else")
}

let a: Any = 5.0
if a is Int {
    print("Int")
}
else if a is String {
    print("String")
}
else {
    print("nor Int or String")
}
//: ## if mit Zuweisung
func maybeString(nb: Int) -> String? {
    return nb % 2 == 0 ? "gerade" : nil
}

let str = maybeString(nb: 10)
if let sureStr = str {
    print("I know sureStr is a string & not nil")
    print(sureStr)
}
//: ## for
for name in ["john", "helmut"] {
    print("my name is \(name)")
}

for (name, age) in ["john": 21, "helmut": 18] {
    print("my name is \(name) and I am \(age) yo")
}

for i in 0..<10 {
    print("I am some counter. My value is \(i)")
}
//: ## switch
let n = 42
switch(n) {
case 0..<50:
    print("I am in the interval [0,49]")
case 50:
    print("I am 50")
case 51:
    print("I am 51")
default:
    print("anything else")
}
//: ## while & do while
var i = 0
while i < 10 {
    print(i)
    i += 1
}

var j = 0
repeat {
    print(j)
    j += 1
} while j < 10
//: ## func
func inc(a: Int) -> Int {
    return a+1
}

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    }
    else {
        return n * factorial(n: n - 1)
    }
}

let result = factorial(n: 10)


// an algorithm to find all divisors
func divisors(input: Int)->[Int]{
    
    var result = [Int]()
    var i = 2
    
    while Double(i) < sqrt(Double(input)) {
        if input % i == 0{
            result.append(i)
            if i != input / i{
                result.append(input / i)
            }
        }
        i = i+1
    }
    return result.sorted()
}

let input = 96
print("divisors or \(input) are \(divisors(input: input))" )
//: ## closures
let incrementFunction = {number in number + 1}

incrementFunction(42)

func applyFunction(list: [Int], f: (Int) -> Int) -> [Int] {
    var newList: [Int] = []
    for nb in list {
        newList.append(f(nb))
    }
    return newList
}

let list = [10, 42, 111]
applyFunction(list: list, f: incrementFunction)
//: ## map, filter, reduce
(1...10).map(incrementFunction)
(1...10).map {n in n + 1}

/// Summe aller Zahlen zw. 1 und 100, die Vielfach von 4 sind

let range = 1..<100
let mult4 = range
    .filter{n in n % 4 == 0}
    .reduce(0) {a, b in a+b}
mult4
//: ## enum
enum CourseType {
    case mandatory
    case optional
    case notSureWillHaveToCheck
}

func sayIt(_ t: CourseType) {
    switch(t) {
    case .mandatory:
        print("Sorry the course is mandatory")
    case .optional:
        print("I will play PS3 instead")
    case .notSureWillHaveToCheck:
        print("I check that")
    }
}

sayIt(.mandatory)



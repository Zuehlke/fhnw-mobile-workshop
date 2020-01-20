
//: # Types to Optionals
//: ## Typen

let str = "hello world"
print(str)

let anInt = 42

let aFloat = Float(5.4)
let anotherFloat = 5.4 as Float
let aThirdFloat:Float = 5.4

let aDouble = 5.4
let anotherDouble: Double = 3.14
let aThirdDouble: Double = 5
//: ## Typinferenz
let aString = "hi there"
aString.hasPrefix("hi")
aString.hasSuffix("there")
aString.hasSuffix("john")

let notAString = 5

// Nicht erlaubt
//notAString.hasSuffix("hi")

var aStringVar = "hi "
aStringVar + "john"


//: ## Mutierbare und nicht mutierbare Variablen
let aConstant = "hello"

// Nicht erlaubt, ich darf aConstant nicht ändern
//aConstant = "world"

var aVar = "hello"
aVar = "world"

let anIntConstant = 10

// Nicht erlaubt, da let
//anIntConstant = 12

var counter = 0
counter+=1
print("I am a counter and my value is \(counter)")


//: ## Kollektionen
//: ### Array
let names = ["john", "helen", "helmut"]

// Nicht erlaubt, da let
//names.append("alex")

var colours: [String] = ["blue", "green", "violet"]
colours.append("black")
colours += ["white"]

colours.removeSubrange(0..<1)
colours.count
colours.isEmpty
colours[0] = "I don't like violet"
colours[0]

let mix = names + colours
let subArray = mix[0...3]

for item in subArray {
    print("I am an item \(item)")
}
//: ### Dictionary
let namesToColours = ["john": "blue", "alan": "green", "helen": "orange"]

namesToColours["john"]

// Nicht erlaubt, da let
//namesToColours["john"] = "pink"


var namesToCity: [String:String] = ["john": "zurich", "alan": "basel", "helen": "windisch"]

namesToCity["john"]
namesToCity["john"] = "windisch"
namesToCity["helmut"] = "nowhere"

for (name, city) in namesToCity {
    print("my name is \(name) and I live in \(city)")
}


let aDict: [String: Int] = ["john": 21, "helen": 18]
aDict.count

for key in aDict.keys {
    print("I am a key \(key)")
}

for value in aDict.values {
    print("I am a value \(value)")
}
//: ### Tuple
let aTuple = ("alan", 21)
aTuple.0
aTuple.1

let anotherTuple = (name: "alan", age: 21)
anotherTuple.name
anotherTuple.age

func nameAndAge() -> (String, Int) {
    return ("alan", 21)
}

let aThirdTuple = nameAndAge()
aThirdTuple.0
aThirdTuple.1
//: ## Optional
var name: String = "Peter"

// Nicht erlaubt, da name immer einen Wert halten muss
//name = nil

var nameOptional: String? = "Peter"
nameOptional = nil


func ageForName(name: String, dict: [String: Int]) -> Int? {
    for (dictName, dictAge) in dict {
        if dictName == name {
            return dictAge
        }
    }
    return nil
}

func easierAgeForName(name: String, dict: [String: Int]) -> Int? {
    return dict[name]
}

let age = ageForName(name: "helen", dict: aDict)
let age2 = ageForName(name: "not there", dict: aDict)
let age3 = easierAgeForName(name: "helen", dict: aDict)
let age4 = easierAgeForName(name: "not there", dict: aDict)

// Nicht erlaubt, da age nil sein kann
//let newAge = age + 1

//potentieller Crash - Gefahr!
let myAge = age! + 1

//besser
if let sureAge = age {
    let newAge = sureAge + 1
    print("your new age is \(newAge)")
}




//: ## String interpolation
let someName = "john"
let someStr = "my name is \(someName), and there are \(someName.count) letters in it"


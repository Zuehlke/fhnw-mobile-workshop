import Foundation
/*:

# Übung 2
## a.

Gegeben sei das Protokoll `Person`. Implementiere 2 Klassen `ComputerScientist` und `Banker`, die die folgenden Kriterien erfüllen:

- Sie muessen das Protokoll Person implementieren (d.h. auch die Properties und Methoden, die in Person deklariert sind).
- Sie muessen das Protokoll CustomStringConvertible implementieren

Anschliessend folgendes noch machen:
- Erzeuge ein Array von Personen (mit je 2 Informatiker und 2 Banker).
- Generiere ein Array, mit den 4 Zeichenketten, die von den 4 Personen gesagt werden
- Generiere ein Array, mit den 4 Zeichenketten, welche bezeichnen, was die 4 Personen essen
*/

protocol Person {
    var name: String { get }
    func say() -> String
    func eat() -> String
}

class ComputerScientist: Person, CustomStringConvertible {
    
    private(set) var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func say() -> String {
        return "Linux rules"
    }
    
    func eat() -> String {
        return "Pizza"
    }
    
    var description: String {
        return "ComputerScientist{name: \(name)}"
    }
}

class Banker: Person, CustomStringConvertible {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func say() -> String {
        return "Money rules"
    }
    
    func eat() -> String {
        return "Caviar"
    }
    
    var description: String {
        return "Banker{name: \(name)}"
    }
}

var persons: [Person] = []
persons.append(Banker(name: "brady"))
persons.append(Banker(name: "tidjane"))
persons.append(ComputerScientist(name: "steve"))
persons.append(ComputerScientist(name: "niklaus"))

let names = persons.map{ person in person.name }
let sayings = persons.map{ person in person.say() }
let eatings = persons.map{ person in person.eat() }

persons
names
sayings
eatings
/*:
## b.

Erweitere Array und schreibe eine Methode `sum`, die die Summe aller Elemente im Array zurückgibt.

*/
extension Array where Element: Numeric {
    
    func sum() -> Element {
        return self.reduce(0) { (result, item) in result + item }
    }
    
    func sumWithFor() -> Element {
        var result = 0 as Element
        for item in self {
            result = result + item
        }
        return result
    }
    
}

let array = [1,2,3,4]

array.sum()
array.sumWithFor()

//alternative without extension
array.reduce(0, +) //short syntax
array.reduce(0){(a,b) in a + b} // long syntax


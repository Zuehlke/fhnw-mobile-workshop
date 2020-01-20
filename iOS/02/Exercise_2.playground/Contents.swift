import UIKit
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

// TODO: Klassen ComputerScientist und Banker implementieren

//var persons: [Person] = []
//persons.append(Banker(name: "brady"))
//persons.append(Banker(name: "tidjane"))
//persons.append(ComputerScientist(name: "steve"))
//persons.append(ComputerScientist(name: "niklaus"))

//let names = ...
//let sayings = ...
//let eatings = ...

//persons
//names
//sayings
//eatings
/*:
 ## b.
 
 Erweitere Array und schreibe eine Methode `sum`, die die Summe aller Elemente im Array zurückgibt.
 
 */
let array = [1,2,3,4]
//array.sum()

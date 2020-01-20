import UIKit
/*:

# Übung 1
## a. Der Trinkgeld-Rechner

Funktion `tipComputer` vervollstaendigen, damit sie fuer einen gegebenen Betrag `amount` und eine bestimmte Zufriedenheit `satisfaction` den passenden Trinkgeld-Betrag (siehe enum SatisfactionLevel) zurueckgibt.

*/

enum SatisfactionLevel {
    case serviceWasRude    // 10% tip
    case everythingWasFine // 18% tip
    case superHappy        // 20% tip
}

func tipComputer(amount: Double, satisfaction: SatisfactionLevel) -> Double {
    // TODO
    return Double.nan
}

tipComputer(amount: 65.50, satisfaction: SatisfactionLevel.serviceWasRude)
tipComputer(amount: 77.20, satisfaction: SatisfactionLevel.superHappy)
/*:

## b. Summe der Primzahlen zw. 1 und 100

Gegeben ist die folgende Funktion `isPrime`

*/
func isPrime(number: Int) -> Bool {
    if number == 1 {
        return false
    }
    else if number == 2 || number == 3 {
        return true
    }
    else {
        let upper: Int = Int(floor(sqrt(Double(number))))
        let range = 2...upper
        let divisors = range.filter{n in number % n == 0}
        return divisors.count == 0
    }
}

isPrime(number: 11)
isPrime(number: 100)
isPrime(number: 101)

//let result = ...
//result
//: (Optional)
//: ## c. Finde die 101. Primzahl. Dabei die vorgegebene Funktion `isPrime` verwenden.
var numberFound = 0
var index = 0
while(numberFound < 101){
    index+=1
    if isPrime(number: index){
        numberFound+=1
    }
}
print("The 101st prime number is \(index)")
/*: 

(Optional)
## d. Berechne die Reihe der ersten 20 Fibonacci-Zahlen.

Fibonacci-Zahlen sind folgendermassen definiert:
- 1 und 2 sind die zwei ersten Fibonacci-Zahlen
- Die n-te Fibonacci-Zahl wird als Summe beider vorherigen (n-1)-ten und (n-2)-ten Fibonacci-Zahlen berechnet:

F_n = F_n-1 + F_n-2

Es ergibt die folgende Reihe: 1, 2, 3, 5, 8, 13, 21, 34, ...

*/

func fibonnaciFirst20() -> [Int] {
    // TODO
    return []
}

fibonnaciFirst20()

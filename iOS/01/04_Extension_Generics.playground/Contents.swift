
//: # Extension & Generics
//: ## Bestehenden Typ erweitern
extension Int {
    
    func times(f: () -> ()) {
        for _ in 0..<self {
            f()
        }
    }
}


5.times{ print("hallo") }
//: ### Auch mit Properties
extension Double {
    var km: Double { return 1000 * self }
    var m:  Double { return self }
    var cm: Double { return self / 100 }
    var mm: Double { return self / 1000 }
    var inch: Double { return self * 2.54.cm }
}

5.km
let marathon = 42.km + 195.m
27.inch
//: Es fehlt eine praktische Methode auf String? Kein Problem, wir können sie selber definieren.
extension String {
    var length: Int { return self.count }
}

"hallo".length
//: ### Generics Parameter für Methoden
func myprint<T: CustomStringConvertible>(t: T) {
    print(t.description)
}

myprint(t: 5.0)


class Foo{}

// Geht nicht, warum?
//myprint(t: Foo())
//: ### Und für Klassen
class Stack<T> {
    private var values: [T] = []
    
    func push(t: T) {
        values.append(t)
    }
    
    func pop() -> T? {
        let n = values.count
        if n > 0 {
            let t: T = values[n-1]
            values.remove(at: n-1)
            return t
        }
        return nil;
    }
    
    func isEmpty() -> Bool {
        return values.count == 0
    }
}


let s = Stack<Int>()
s.push(t: 5)
s.push(t: 10)
while (!s.isEmpty()) {
    print(s.pop()!)
}

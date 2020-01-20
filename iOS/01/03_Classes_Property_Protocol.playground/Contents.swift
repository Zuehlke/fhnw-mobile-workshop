//: # Classes, Property, Protocol
//: ## Protokoll- und Klassendefinition

protocol Animal {
    var name: String { get set }
    func move() -> String
    func makeSound() -> String
}

class Dog: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func move() -> String {
        return "walk"
    }
    func makeSound() -> String {
        return "bark"
    }
}

class Bird: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func move() -> String {
        return "fly"
    }
    func makeSound() -> String {
        return "whistle"
    }
}

class Pitbull: Dog {
    
    override func makeSound() -> String {
        return "woof"
    }
}

let animals: [Animal] = [Bird(name: "Wisti"), Dog(name: "Max"), Pitbull(name: "Jake")]

let sounds = animals.map { a in a.makeSound() }
let moves  = animals.map { a in a.move() }

sounds
moves
animals[0].name


//: ## Statische Methoden

class Chiwawa {
    
    class func stayInHandbag() -> String {
        return "OMG! I like that!"
    }
    
    static func runAway() -> String{
        return "OMG - freedom!"
    }
}

Chiwawa.stayInHandbag()
Chiwawa.runAway()

class Woofie: Chiwawa{
    
    override class func stayInHandbag() -> String {
        return "woooooof"
    }
    
    /* not allowed to override static methods
    override static func runAway() -> String{
        return "Oh my god"
    }
    */
    
}

//: ## willSet/didSet

class Bulldog: Dog {
    
    var isHappy: Bool = true
    
    override var name: String {
        willSet{
            isHappy = false
        }
    }
}

let b = Bulldog(name: "Toby")
b.isHappy
b.name = "Rusty"
b.isHappy
//: ## Berechnete Properties
// afghanischer Windhund
class AfghanHound: Dog {
    var age: Double
    var dogAge: Double {
        get {
            return age * 7
        }
    }
    
    init(name: String, age: Double) {
        self.age = age
        super.init(name: name)
    }
    
}

let dog = AfghanHound(name: "Lumpi", age: 5)
dog.dogAge
//: ## Sichtbarkeit
class Foobar {
    
    //https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html
    
    func someInternalMethod() {
        print("internal - only from same module")
        
        somePrivateMethod()
    }
    
    fileprivate func afileFunction(){
        print("fileprivate - only from same file")
    }
    
    private func somePrivateMethod() {
        print("private - same file and declaration scope")
    }
    
    public func somePublicMethod() {
        print("public - but no subclasses or overwrites")
    }
    
    open func someOpenMethod(){
        print("open for subclasses or overwrites")
    }
}


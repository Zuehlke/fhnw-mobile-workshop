// Uebung 1.3

// Vervollstaendige die Klasse Animal
// Erstelle dann die Klassen Dog, Bird und Fish, die jeweils Animal implementieren
// Implementiere die Klassen so, dass du folgendes ausgeben kannst:
//
// My name is Woofer. Woof Woof!
// I run!
//
// My name is Tweeter. Tweet Tweet!
// I fly!
//
// My name is Blubber. Blubb Blubb!
// I swim!

void main() {
  // Erstelle jeweils einen Dog, Bird und Fish

  // Fuege die Tiere zu "zoo" hinzu
  var zoo = List<Animal>();

  // Gib von allen Tieren in "zoo" aus was sie sagen und wie sie sich bewegen
}

class Animal {
  String name;

  Animal(String name) {
    this.name = name;
  }

  String speak() {
    // TODO
    return "";
  }

  String move() {
    // TODO
    return "";
  }
}

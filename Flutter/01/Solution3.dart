void main() {
  Dog dog = Dog("Woofer");
  Bird bird = Bird("Tweeter");
  Fish fish = Fish("Blubber");

  var zoo = List<Animal>();

  zoo.add(dog);
  zoo.add(bird);
  zoo.add(fish);

  for (Animal animal in zoo) {
    print(animal.speak());
    print(animal.move());
    print("\n");
  }
}

class Animal {
  String name;

  Animal(String name) {
    this.name = name;
  }

  // Kuerzere Version des Constructors
  //Animal(this.name);

  String speak() {
    return "My name is $name.";
  }

  String move() {
    return "I move!";
  }
}

class Dog implements Animal {
  String name;

  Dog(this.name);

  String speak() {
    return "My name is $name. Woof Woof!";
  }

  String move() {
    return "I run!";
  }
}

class Bird implements Animal {
  String name;

  Bird(this.name);

  String speak() {
    return "My name is $name. Tweet Tweet!";
  }

  String move() {
    return "I fly!";
  }
}

class Fish implements Animal {
  String name;

  Fish(this.name);

  String speak() {
    return "My name is $name. Blubb Blubb!";
  }

  // Kuerzere Version mit =>
  String move() => "I swim!";
}

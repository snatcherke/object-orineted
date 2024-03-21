import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a superclass
class LivingThing {
  void breathe() {
    print('Breathing...');
  }
}

// Define subclasses that inherit from the superclass
class Dog extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Cat extends LivingThing implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  // Create instances of classes
  var dog = Dog();
  var cat = Cat();

  // Initialize an instance with data from a file
  try {
    File file = File('animal.txt');
    String content = file.readAsStringSync();
    if (content.trim().toLowerCase() == 'dog') {
      dog.makeSound();
    } else if (content.trim().toLowerCase() == 'cat') {
      cat.makeSound();
    } else {
      print('Unknown animal');
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  // Demonstrate the use of a loop
  for (var i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }
}

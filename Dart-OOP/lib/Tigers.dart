import 'InterfaceAnimal.dart';

class Tigers implements InterfaceAnimal {

  // I must override (all) attributes and methods
  @override
  int noOfLimbs = 4;

  @override
  anyMethod() {
    print("Hiiiiiiiiiiiiiiii");
  }

  @override
  drink() {

  }

  @override
  eat() {
    print("eating");
  }

}
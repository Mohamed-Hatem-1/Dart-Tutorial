import 'Animals.dart';

class Dogs extends Animals{

  static int noOfDogs = 0;

  Dogs({super.noOfLimbs}) {noOfDogs++;}

  void bark() {
    print("barking");
  }

  @override
  void animalSound () {
    print("dog sound");
  }

  // Passing objects into functions and compare between objects and static fields and methods
  static haveSameLimbs(Dogs d1, Dogs d2) {
    if (d1.noOfLimbs == d2.noOfLimbs) return true;
    else return false;
  }

}
import 'AbstractHuman.dart';

class FootballPlayer extends AbstractHuman {

  int? noOfGoals;

  // I must override the abstract methods in the AbstractHuman class (abstract methods are the methods with no body)
  @override
  profession() {
    print("I'm a football player");
  }

  // Super constructor
  FootballPlayer ({super.height, super.noOfArms, this.noOfGoals}) {
  }

  // Super with methods
  @override
  any() {
    super.any();
    print("another anything");
  }

  anything() {
    super.any();
  }

}
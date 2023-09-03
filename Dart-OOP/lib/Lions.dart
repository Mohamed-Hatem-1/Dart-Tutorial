import 'Animals.dart';

class Lions extends Animals{

  int? anything;

  Lions({this.anything, super.noOfLimbs});

  roar() {
    print("roaring");
  }

  @override
  void animalSound() {
    print("lion sound");
  }

}
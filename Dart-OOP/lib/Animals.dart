class Animals {
  int? noOfLimbs;

  Animals({this.noOfLimbs});

  eat() {
    print("animal is eating");
  }

  // Override
  void animalSound() {
    print("animal sound");
  }

}
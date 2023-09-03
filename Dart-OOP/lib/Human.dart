class Human {
  double? height;
  double? weight;
  String? hairColor;
  int? noOfFingers;

  // encapsulation
  // in dart private attributes are visible just in the same file unlike java (visible in the same class).
  // To make a variable private put _ before it --> int? _hi;
  int? _noOfArms;

  void walk() {
    print("Walking");
  }

  // Constructor
  // Human(this.height, this.weight, this.hairColor, this.noOfFingers);


  // Named Constructor
  // Human({double? height, double? weight, String? hairColor}) {
  //   this.height = height;
  //   this.weight = weight;
  //   this.hairColor = hairColor;
  //   this.noOfFingers = 10;
  //   _noOfArms = 2;
  // }

  // It can replaced with
  Human({this.height, required this.weight, this.hairColor, this.noOfFingers = 10}) : _noOfArms = 2;

  // Constructor Overload or Methods generally
  Human.special({required this.height, this.weight}) : _noOfArms = 2, noOfFingers = 10, hairColor = "Black";

  // Setters and Getters
  int get noOfArms => _noOfArms!;

  set noOfArms(int value) {
    if (value >= 0 && value <= 2) this._noOfArms = value;
    else print("You haven't Entered a valid value, So you have 2 arms");
  }

}
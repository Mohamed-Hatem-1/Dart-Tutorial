class Employee {

  void printing() {
    print("I'm an employee");
  }

}

// Inherit from more than one class like multi inheritance
// Priority with the last mixin (temperature will be 0 because it's the last)
class nurse extends Employee with anyClass, Medical {

}

// here will be -1
class doctor extends Employee with Medical, anyClass {

}

mixin Medical {

  int takeTemperature () {
    return 0;
  }

}

mixin anyClass {

  int takeTemperature() {
    return -1;
  }

}
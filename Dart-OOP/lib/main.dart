import 'Human.dart';
import 'Anonymous.dart';
import 'Animals.dart';
import 'Lions.dart';
import 'Dogs.dart';
import 'GermanDogs.dart';
import 'FootballPlayer.dart';
import 'Mixins.dart';
import 'Tigers.dart';

void main () {
  Human Mohamed = Human(height: 170, weight: 60, hairColor: "Red");
  print(Mohamed.height);
  print(Mohamed.noOfFingers);

  Mohamed.height = 181;
  print(Mohamed.height);
  Mohamed.walk();

  print("******************************");

  Human Ahmed = Human.special(
    height: 159,
    weight: 70,
  );
  print(Ahmed.height) ;
  print(Ahmed.hairColor) ;
  print(Ahmed.noOfFingers) ;
  print(Ahmed.weight) ;

  print("******************************");

  Human Mahmoud = Human(
      weight: 90
  );
  Mahmoud.noOfArms = 1; // Setter
  print(Mahmoud.noOfArms); // getter

  Human Mahmoud1 = new Human(weight: 91);
  Mahmoud1.noOfArms = 4;
  print(Mahmoud1.noOfArms);

  print("******************************");

  // Anonymous object
  // have no name and i will not use it again
  Anonymous();
  // I will use it in exceptions and flutter specially

  print("******************************");

  // Inheritance
  Lions lion1 = Lions(
    noOfLimbs: 4,
    anything: null
  );
  print(lion1.noOfLimbs);
  lion1.eat();
  lion1.roar();
  lion1.animalSound();

  Dogs dog1 = Dogs();
  print(dog1.noOfLimbs);
  dog1.eat();
  dog1.bark();
  dog1.animalSound();

  print(Dogs.haveSameLimbs(Dogs(noOfLimbs: 3), Dogs(noOfLimbs: 4)));
  print("Number of dogs created = ${Dogs.noOfDogs}");

  print("******************************");

  // Nested inheritance
  GermanDogs().faction();
  GermanDogs().animalSound(); // Will print dog sound not animal sound (priority)

  GermanDogs Jack = GermanDogs(
    noOfLimbs: 4
  );
  print(Jack.noOfLimbs);
  Jack.faction();

  print("******************************");

  // Polymorphism
  // Allows objects of different classes to be treated as objects of a common superclass
  List<Animals> animals = [Animals(), dog1, Lions(noOfLimbs: 3), Lions()];
  animals[0].animalSound();
  animals[1].animalSound();
  animals[2].animalSound();
  animals[3].animalSound();

  print("******************************");

  // Abstract class
  // Abstract class can not be instanced (i can't take an object from it)
  // AbstractHuman M1 = AbstractHuman(); // Error

  FootballPlayer MohamedHatem = FootballPlayer(
    height: 178,
    noOfGoals: 250
  );
  print(MohamedHatem.noOfArms);
  MohamedHatem.eat();
  MohamedHatem.profession();
  MohamedHatem.any();
  MohamedHatem.anything();

  print("******************************");

  // Interface
  // Can't be instanced either, The difference is that implements not extends and i must override (all) the methods and attributes
  Tigers t1 = Tigers();
  t1.noOfLimbs = 3;
  t1.eat();
  t1.drink();
  t1.anyMethod();

  print("******************************");

  // Object class
  List<Object> anyClasses = [FootballPlayer(), Lions(), Tigers()];
  // Can take any object of any class

  print("******************************");

  // Cascade operator
  FootballPlayer MohamedSalah = FootballPlayer();
  MohamedSalah..eat()..any()..profession();

  String lionelMessi = "Lionel Messi";
  lionelMessi..toUpperCase()..contains("SSI");

  print("*****************************");

  // Mixin
  nurse n1 = nurse();
  print(n1.takeTemperature());

  doctor d1 = doctor();
  print(d1.takeTemperature());

}
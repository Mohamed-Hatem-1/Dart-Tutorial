import 'dart:io';
import 'dart:ffi';
import 'dart:typed_data';
import 'test.dart';

int global = 50;

void main () {

  // this is comment
  /*
  multi lines
  multi lines
  */

  // Printing
  print('Hi');
  print('My name is' + ' - ' + 'mohamed');

  // Data types and variables
  // Integers and doubles

  int x = 5; // Initialization
  int y; // Declaration

  // print(y); // Error bec y is null
  y = 10;
  int result = x + y;
  print(x + y);
  print(result); // The same

  // Editing a variable
  y = 15;
  print(x + y); // 20
  double z = 2.3;
  double result2 = x + z;
  print(result2);  // 7.3

  /*
  int + int = int
  double + double = double
  int + double = double
  */

  // Operations
  print(x + y); // 5 + 15 = 20
  print(x - y); // 5 - 15 = -10
  print(x * y); // 5 * 15 = 75
  print(x / y); // 5 / 15 = 0.33333
  print(y / x); // 15 / 5 = 3.0
  print(x ~/ y); // Will return the integer part of x / y --> 0.33 - 0
  print(x % y); // 5
  print(++x); // Increment x by 1 then print it --> 6
  print(--y); // Decrement y by 1 then print it --> 14
  print(x++); // Print x then increment it by 1 --> 6
  print(x); // 7
  print(y--); // Print y then decrement it by 1 --> 14
  print(y); // 13

  x = 10;
  print(x); // 10
  x -= 2; // --> x = x - 2;
  print(x); // 8
  x += 4; // --> x = x + 2;
  print(x); // 12
  x *= 2; // --> x = x * 2;
  print(x); // 24
  // x /= 2; // Error because the result is double and x is int
  x %= 5; // --> x = x % 5;
  print(x); // 24 % 5 = 4

  print("*************************************");

  // import statement
  print('object = $testNum');
  // The $ sign used to get the value of the variable

  print("*************************************");

  // Strings
  String firstName = 'Mohamed', lastName = 'Hatem';

  // concatenation
  print(firstName + ' ' + lastName);
  // Or
  String result3 = '$firstName $lastName $x \nSum of $x and $y = ${x+y}';
  print('Result = $result3');

  // The '\' means an affect after it
  print('amira\'s book'); // Or print("amira's book");
  print("amira's \ book");
  print("amira's \t book");
  print("amira's \n book");
  print("amira's \\ book");

  print(firstName.length); // 7
  print(firstName.toUpperCase()); // MOHAMED

  print("*************************************");

  // Booleans
  bool boolean = true;
  print(boolean); // true
  boolean = x == y; // If x == y then x will be true else it will be false
  print(boolean); // false

  print("*************************************");

  // User input
  // Must import 'dart:io' ;
  print('Enter your name');
  String name = stdin.readLineSync()!; // We will learn '!' mark later
  print('Hello $name'); // Hello ...

  print("*************************************");

  // Type casting
  print('Enter first number');
  String numberOne = stdin.readLineSync()! ;

  double doubleNum1 = double.parse(numberOne); // Casting
  int intNum1 = int.parse(numberOne); // Casting it to int

  print("$doubleNum1\t$intNum1");

  // Or
  print('Enter second number');
  double doubleNum2 = double.parse(stdin.readLineSync()!); // This is best
  int intNum2 = int.parse(stdin.readLineSync()!);

  double result4 = doubleNum1 + doubleNum2;
  print(result4);

  print("*************************************");

  // Conditions
  // Conditional operators ( == , > , < , >= , <= , != )
  // Logical operators ( && , || , ! )
  //                    and , or , not

  // If statement
  print('Enter a number between 1 : 10');
  int input = int.parse(stdin.readLineSync()!);
  if (input == 5) {
    print('You guessed right!');
    print('this is a flower');
  }
  print('this will always executed');

  // For one line inside if condition you may not write the curl brackets
  if (input == 2) print('You guessed right');

  // if else
  if (input == 5) print('You guessed right');
  else {
    print('Try again');
  }

  // if .. else if .. else if .. else
  // Nested if
  print('Enter a number');
  int input1 = int.parse(stdin.readLineSync()!);
  if (input1 > 0) {
    print('This is a positive number');
    if (input1 % 2 == 0) {
      print('This is an even number');
    } else {
      print('This is an odd number');
    }
  } else if (input1 < 0) {
    print('This is a negative number');
    if (input1 % 2 == 0) {
      print('This is an even number');
    } else {
      print('This is an odd number');
    }
  } else print('This is a zeroooo');

  // inline if
  // condition ? execute if true : execute if false
  String inlineIf = x > y ? '$x is bigger than $y' : '$x is less than $y';
  print(inlineIf);

  int t;
  int tt = 100;
  t = (tt > 50)? 200 : 250;
  print(t);

  // Switch case
  print('Enter a choice between 1 and 3\n1 --> Coffee\n2 --> Tea\n3 --> Milk');
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1 :
      print('Your choice is \'Coffee\'');
      print('That is great choice by the way');
      break;
    case 2 :
      print('Your choice is \'Tea\'');
      break;
    case 3 :
      print('Your choice is \'Milk\'');
      break;
    default : // This is when no choice is right
      print('Try again');
  }
  // Switch can take integers, strings, and booleans not doubles

  print("*************************************");

  // Scope of the variables and functions
  int outNumber = 100;
  {
    int inNumber = 100;
  }
  print(outNumber);
  // print(inNumber); // Error because inNumber is a local

  // global variables
  print(global);
  {
    print(global);
  }
  // Global variable take a memory size during compile time meanwhile the regular variable take a size during runtime

  print("*************************************");

  // Dynamic variable (week variable)
  dynamic dy = "mohamed";
  dy = 10;
  dy = true;
  dy = 5.5;

  // var keyword (like auto in c++)
  // it sees what it's value then the var become the datatype of this value
  var va = "Mohamed";
  // va became a String
  // va = 5; // will make an error

  var va1; // if i doesn't initialize it, it will be a dynamic variable
  print(va1); // null
  va1 = "Mohamed";
  print(va1);
  va1 = 5;
  print(va1);

  print("*************************************");

  // List
  List<int> numbers = [2, 5, 0, 1, 5, 4];
  List<String> names = ['amira', 'alaa', 'ayman'];
  print(numbers);
  print(names);
  print(numbers[1]); // Print the number in index 1 --> (5)
  print(names[2]); // Print the name in index 2 --> ayman
  print(numbers.length); // The length of the list
  numbers[0]++; // will increment the number in index 0 by 1 (2) become (3)
  print(numbers[0]);
  // names.add(2); // Error
  names.add('sami'); // will add 'sami' in the end
  print(names);

  print("Enter 3 numbers to add to the list");
  for (int i = 0; i < 3; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  List<int> l = [];
  print(l);
  l.add(1);
  print(l);

  print("*************************************");

  // Set
  // Remove the repeated
  Set<int> set = {2, 4, 2, 1, 5, -2, 5};
  print(set);
  // print(set[1]); // Error because there is no index in set
  print(set.toList()) ; // Transfer it to list
  List<int> setList = set.toList();
  print(setList[1]);

  print("*************************************");

  // Map
  // Map<key,value> mapName
  Map<int,String> data = {
    2: 'mohamed',
    3: 'ali',
    1: 'samir'
  };
  print(data);
  print(data['ali']); // null
  print(data[3]);

  Map<String,int> salaries = {
    "Mohamed Hatem" : 9500,
    "Mahmoud" : 8000
  };
  print('Salary of Mohamed Hatem = ${salaries["Mohamed Hatem"]}');

  // We can use var instead of a lot of writing
  var list2 = ['gh', 'hg', "hg", "rtrt"];
  print(list2);

  var mapping = {
    'id': 1,
    'name':'Dart'};
  print(mapping);

  print("*************************************");

  // Loops
  // For loop
  // for (declaration; condition; increment or decrement) { body }
  for (int i = 1; i <= 10; ++i ) {
    print("Hello World $i");
  }
  print('odd numbers between 1 and 10 is');
  int i;
  for (i = 1; i <= 10; i += 1) { // = i++ or ++i
    if (i % 2 != 0) print(i);
  }
  for (var i = 0; i < names.length; ++i) {
    print(names[i]);
  }

  // While loop
  int ii = 1;
  while (ii <= 50) {
    print(ii % 5 == 0 ? ii : ":(") ;
    // ii % 5 == 0 ? print(ii) : print(":("); // The same
    ii++;
  }

  // do while
  bool isConnected = false;
  do {
    print("Send notification");
  } while (isConnected);

  // for each
  names.forEach((element) {
    print(element) ;
  });

  List<String> list = ["a", "b", "c"];
  list.forEach((element) {
    element += " Hello"; // it will not modify the original list
    print(element);
  });
  print(list); // You will see it hasn't been modified into "a Hello" ...
  for (int i = 0; i < list.length; ++i) {
    list[i] += "Hi";
  }
  print(list); // It has been modified here

  // for in loop
  for (var v in list) {
    print(v);
  }
  // We use for each and for in loops when we don't care about indexes

  List<int> myNums = List.filled(10, 55); // 10 numbers of value 55
  print(myNums);

  var list1 = [1, 2, 3, 4], list22 = [5, 6, 7, 8];
  var list3 = [list1, list22];
  print(list3); // [[1, 2, 3, 4], [5, 6, 7, 8]]

  var list4 = [...list1, ...list22];
  print(list4); // [1, 2, 3, 4, 5, 6, 7, 8]

  print("*************************************");

  // Null safety
  // Any variable in dart by default is null
  int nullValue; // This is a non-nullable variable
  // nullValue = null; // Error
  int? nullValue1; // the ? mark means that it's a nullable variable (it accept null)
  nullValue1 = null;

  // Null check !
  // It it ignores that the variable will have a null value
  String? testing;
  // print(testing.length); // Error
  // print(testing!.length); // Not Syntax error But it will cause a runtime error
  int userInput = int.parse(stdin.readLineSync()!); // The ! mark it means it will have no null (non-nullable)
  // userInput = null; // Error

  // Null operator ??
  // It returns left operand if it's not null, otherwise it returns the right operand even it is equal to null
  print(null?? "Mohamed");
  int? iii = null?? 10; // iii will equal to 10
  int ? jjj = null?? null; // jjj will equal to null

  // Null aware assign ??=
  // It assign value to a variable in case if that variable is null
  String? str;
  str??= "Mohamed"; // Is str is null ? yes then it will equal to Mohamed
  // str??= "Ahmed"; // Is str is null ? no then it will be Mohamed as it's

  // Null aware access ?.
  // It used if you need to access property or method of an object in case if it's null
  String? str1;
  print(str1?.length); // null
  str1 = "Anything";
  // print(str1?.length); // Syntax error

  print("*************************************");

  // final and const
  // final and const variables can't be modified
  final finalVar = "Mohamed"; // = final String name
  const pi = 3.14;
//  pi = 3.15; // Error
//  finalVar = "rger"; // Error
  print(finalVar);
  print(pi);
  final double df = double.parse(stdin.readLineSync()!);
  // const double dfff = double.parse(stdin.readLineSync()!); // Error
  // the final variable is created on runtime, while const variable created in compile time
  // then i can't take input from user and receive it in a const

  print("*************************************");

  int nnn = 10;
  print(nnn is String);
  print(nnn is int);
  print(nnn is bool);

  print(nnn is! String);
  print(nnn is! int);
  print(nnn is! bool);

  print("*************************************");

  // Functions
  // with no return type (void) and no parameters
  print("My name is Mohamed");
  printing();
  printing();
  print("object");

  print("*************************************");

  // with return type (int, double, String, ...) and parameters
  print(sum(50, 50));
  int mohamed = 5;
  int ahmed = 10;
  print(sum(mohamed, ahmed));
  // or
  int resulting = sum(ahmed, mohamed);
  print(resulting);

  print("*************************************");

  // Optional positional parameters
  // must be ordered --> ('name', 'name', false) will make an error
  printData("Mohamed", "Hatem");
  printData("Mohamed", "Hatem", 21, false);

  print("*************************************");

  // named optional parameters
  // it doesn't matter the order
  print("Enter Your first name");
  String first = stdin.readLineSync()!;
  print("Enter Your last name");
  String last = stdin.readLineSync()!;
  print("Enter Your age");
  int age = int.parse(stdin.readLineSync()!);

  printData1(
    firstName: first,
    age: age,
  );

  printData1(
    lastName: "Mohamed",
    firstName: "Amr",
    age: 23,
  );

  print("*************************************");

//   // arrow function
//   // has a single code line
  displayName();
  String Result = displayName1();
  print(Result);
  print("Enter your gender");
  String gender = stdin.readLineSync()!;
  print(Gender(gender));

  print("*************************************");

  // pass function to function

}

// Functions
void printing() {
  print('مرحبا');
  print('hello');
  print('bonjour');
}
int sum(int a, int b) {
  return a + b;
}
// If there is no return type and there is a return statement it will be automatic a dynamic
dynamicReturn() { // = dynamic dynamicReturn()
  return "Hello World";
}
// Note --> the optional parameter(s) must be at the end
// i can also remove the '?' mark and just assign a default value for the age --> [int age = 20]
void printData(String firstName, String lastName, [int? age, bool single = true]) {
  print("First name is $firstName");
  print("Last name is $lastName");
  print("Age is $age");
  print('$single');
}
// Named parameters
void printData1({required String? firstName, String? lastName, required int? age}) {
  print("First name is $firstName");
  print("Last name is $lastName");
  print("Age is $age");
}
// Arrow function (Have just one line)
void displayName() => print("My name is Mohamed");
String displayName1() => "My name is Mohamed";
Gender (String gender) => gender == "male" ? "male" : "female";

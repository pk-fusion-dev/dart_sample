// ignore_for_file: camel_case_types

enum Days { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

enum Gender { male, female, other }

class Person {
  // Properties
  String? firstName;
  String? lastName;
  Gender? gender;

  // Constructor
  Person(this.firstName, this.lastName, this.gender);

  // display() method
  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}

void main() {
  var today = Days.friday;
  switch (today) {
    case Days.sunday:
      print("Today is Sunday.");
      break;
    case Days.monday:
      print("Today is Monday.");
      break;
    case Days.tuesday:
      print("Today is Tuesday.");
      break;
    case Days.wednesday:
      print("Today is Wednesday.");
      break;
    case Days.thursday:
      print("Today is Thursday.");
      break;
    case Days.friday:
      print("Today is Friday.");
      break;
    case Days.saturday:
      print("Today is Saturday.");
      break;
  }

  Person p1 = Person("John", "Doe", Gender.male);
  p1.display();

  Person p2 = Person("Menuka", "Sharma", Gender.female);
  p2.display();
}


/*
Note

Advantages Of Enum In Dart

    It is used to define a set of named constants.
    Makes your code more readable and maintainable.
    It makes the code more reusable and makes it easier for developers.

Characteristics Of Enum

    It must contain at least one constant value.
    Enums are declared outside the class.
    Used to store a large number of constant values.

*/
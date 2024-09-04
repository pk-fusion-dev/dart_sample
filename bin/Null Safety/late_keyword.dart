class Person {
  // late variable
  late String name;

  void greet() {
    print("Hello $name");
  }
}

// Student class
class Student {
  // late final variable
  late final String studentName;

  // constructor
  Student(this.studentName);
}

// function
String provideCountry() {
  print("Function is called");
  return "USA";
}

void main() {
  Person person = Person();
  // late variable is initialized here
  person.name = "John";
  person.greet();
  person.name = "Doe";
  person.greet();

  print("Starting");
  // late variable
  late String value = provideCountry(); //Lazy initialization
  print("End");
  print(value);

  // object of Student class
  Student student = Student("John");
  print(student.studentName);
  //student.studentName = "Doe"; // Error
}

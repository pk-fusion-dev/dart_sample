class Student {
  // Private Properties
  String? _firstName;
  String? _lastName;
  int? _age;

  // Getter to get full name
  String get fullName => "${_firstName!} ${_lastName!}";

  // Getter to read private property _age
  int get age => _age!;

  // Setter to update private property _firstName
  set firstName(String firstName) => _firstName = firstName;

  // Setter to update private property _lastName
  set lastName(String lastName) => _lastName = lastName;

  // Setter to update private property _age
  set age(int age) {
    if (age < 0) {
      throw Exception("Age can't be less than 0");
    }
    _age = age;
  }
}

void main() {
  // Create an object of Student class
  Student st = Student();
  // setting values to the object using setter
  st.firstName = "John";
  st.lastName = "Doe";
  st.age = 20;
  // Display the values of the object
  print("Full Name: ${st.fullName}");
  print("Age: ${st.age}");
}

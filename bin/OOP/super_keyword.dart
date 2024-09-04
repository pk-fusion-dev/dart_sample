// ignore_for_file: unused_local_variable, use_super_parameters

class Employee {
  String name;
  double salary;
  // Constructor
  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  // Constructor
  Manager(String name, double salary) : super(name, salary) {
    super.displayInfo();
  }
}

void main() {
  Manager manager = Manager("John", 25000.0);
}

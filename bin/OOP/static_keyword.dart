class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }

  static void calculateInterest(double principal, double rate, double time) {
    print((principal * rate * time) / 100);
  }
}

void main() {
  // Creating objects of Employee class
  Employee e1 = Employee();
  e1.totalEmployee();
  Employee e2 = Employee();
  e2.totalEmployee();
  Employee e3 = Employee();
  e3.totalEmployee();

  Employee.calculateInterest(1000, 2, 2);
}


/*
Note

Key Points To Remember

    Static members are accessed using the class name.
    All instances of a class share static members.
*/
class Employee {
  void salary() {
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$3000.");
  }
}

class Accountant extends Employee {}

void main() {
  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary();
  developer.salary();

  Employee employee = Developer();
  employee.salary();

  Accountant accountant = Accountant();
  accountant.salary();
}

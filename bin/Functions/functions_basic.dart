// writing function outside main function.
void printName() {
  print("My name is Raj Sharma. I am from function.");
}

void add(int num1, int num2) {
  int sum = num1 + num2;
  print("The sum is $sum");
}

// function that calculate interest
void calculateInterest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  print("Simple interest is $interest");
}

// this is our main function.
void main() {
  printName();
  add(10, 20);
  double principal = 5000;
  double time = 3;
  double rate = 3;
  calculateInterest(principal, rate, time);
}

//Arrow Function
//Syntax returnType functionName(parameters...) => expression;
int add(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(int n1, int n2) => n1 * n2;
double div(int n1, int n2) => n1 / n2;

void main() {
  const fruits = ["Apple", "Mango", "Banana", "Orange"];

  // ignore: avoid_function_literals_in_foreach_calls
  fruits.forEach((fruit) {
    print(fruit);
  });

  // Anonymous function
  //Syntax (parameterList){
  // statements
  //}
  // ignore: prefer_function_declarations_over_variables
  var cube = (int number) {
    return number * number * number;
  };

  print("The cube of 2 is ${cube(2)}");
  print("The cube of 3 is ${cube(3)}");

  int num1 = 100;
  int num2 = 30;

  print("The sum is ${add(num1, num2)}");
  print("The diff is ${sub(num1, num2)}");
  print("The mul is ${mul(num1, num2)}");
  print("The div is ${div(num1, num2)}");
}

/*
Note

Scope In Dart
The scope is a concept that refers to where values can be accessed or referenced.
Dart uses curly braces {} to determine the scope of variables. 
If you define a variable inside curly braces, you can’t use it outside the curly braces.

*/
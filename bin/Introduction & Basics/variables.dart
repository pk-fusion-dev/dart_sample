var globalValue = 'This is global.';

void main() {
// declaring variables
  String name = "John";
  String address = "USA";
  num age = 20; // used to store any types of numbers
  num height = 5.9;
  bool isMarried = false;

// printing variables value
  print("Name is $name");
  print("Address is $address");
  print("Age is $age");
  print("Height is $height");
  print("Married Status is $isMarried");

  var x = 123;
  print("var x= $x");

  dynamic y = 123;
  print("dynamic y= $y");

  y = "hello";
  print("dynamic y= $y");

  const pi = 3.14; //const is compile time
  //pi = 4.23; // not possible
  print("Value of PI is $pi");

  final date = DateTime.now(); //final is runtime
  print('current time $date');

  print(globalValue);
}


/*

Note

    String: For storing text value. E.g. “John” [Must be in quotes]
    int: For storing integer value. E.g. 10, -10, 8555 [Decimal is not included]
    double: For storing floating point values. E.g. 10.0, -10.2, 85.698 [Decimal is included]
    num: For storing any type of number. E.g. 10, 20.2, -20 [both int and double]
    bool: For storing true or false. E.g. true, false [Only stores true or false values]
    var: For storing any value. E.g. ‘Bimal’, 12, ‘z’, true


    Variable names are case sensitive, i.e., a and A are different.
    A variable name can consist of letters and alphabets.
    A variable name cannot start with a number.
    Keywords are not allowed to be used as a variable name.
    Blank spaces are not allowed in a variable name.
    Special characters are not allowed except for the underscore (_) and the dollar ($) sign.

    Constant is the type of variable whose value never changes. In programming, 
    changeable values are mutable and unchangeable values are immutable. Sometimes, 
    you don’t need to change the value once declared. Like the value of PI=3.14, it never changes. 
    To create a constant in Dart, you can use the const keyword.

*/

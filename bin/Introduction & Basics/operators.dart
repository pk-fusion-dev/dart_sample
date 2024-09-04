// ignore_for_file: unnecessary_type_check

void main() {
  // declaring two numbers
  int num1 = 10;
  int num2 = 3;

  // performing arithmetic calculation
  int sum = num1 + num2; // addition
  int diff = num1 - num2; // subtraction
  int unaryMinus = -num1; // unary minus
  int mul = num1 * num2; // multiplication
  double div = num1 / num2; // division
  int div2 = num1 ~/ num2; // integer division
  int mod = num1 % num2; // show remainder

//Printing info
  print("The addition is $sum.");
  print("The subtraction is $diff.");
  print("The unary minus is $unaryMinus.");
  print("The multiplication is $mul.");
  print("The division is $div.");
  print("The integer division is $div2.");
  print("The modulus is $mod.");

  // declaring two numbers
  int num11 = 0;
  int num22 = 0;

// performing increment / decrement operator

// pre increment
  num22 = ++num11;
  print("The value of num22 is $num22");

// reset value to 0
  num11 = 0;
  num22 = 0;

// post increment
  num22 = num11++;
  print("The value of num22 is $num22");

  double age = 24;
  age += 1; // Here age+=1 means age = age + 1.
  print("After Addition Age is $age");
  age -= 1; //Here age-=1 means age = age - 1.
  print("After Subtraction Age is $age");
  age *= 2; //Here age*=2 means age = age * 2.
  print("After Multiplication Age is $age");
  age /= 2; //Here age/=2 means age = age / 2.
  print("After Division Age is $age");

  print(num1 == num2);
  print(num1 < num2);
  print(num1 > num2);
  print(num1 <= num2);
  print(num1 >= num2);

  int userid = 123;
  int userpin = 456;

  // Printing Info
  print((userid == 123) && (userpin == 456)); // print true
  print((userid == 1213) && (userpin == 456)); // print false.
  print((userid == 123) || (userpin == 456)); // print true.
  print((userid == 1213) || (userpin == 456)); // print true
  print((userid == 123) != (userpin == 456)); //print false

  String value1 = "Dart Tutorial";
  int ten = 10;

  print(value1 is String);
  print(ten is! int);

  var price = 30;
  var ans = price > 20 ? true : false;
  print(ans);

  // ignore: prefer_typing_uninitialized_variables
  var xyz;
  var value = xyz ?? 50; // if xyz is null , assign 50
  print(value);
}


/*

Note


    Arithmetic Operators
    Increment and Decrement Operators
    Assignment Operators
    Logical Operators
    Type Test Operators

Operator Symbol 	Operator Name 	  Description
+ 	              Addition 	        For adding two operands
- 	              Subtraction 	    For subtracting two operands
-expr 	          Unary Minus 	    For reversing the sign of the expression
* 	              Multiplication 	  For multiplying two operands
/ 	              Division 	        For dividing two operands and give output in double
~/ 	              Integer Division 	For dividing two operands and give output in integer
% 	              Modulus 	        Remainder After Integer Division

Operator Symbol 	Operator Name 	Description
++var 	          Pre Increment 	Increase Value By 1. var = var + 1 Expression value is var+1
--var 	          Pre Decrement 	Decrease Value By 1. var = var - 1 Expression value is var-1
var++ 	          Post Increment 	Increase Value By 1. var = var + 1 Expression value is var
var-- 	          Post Decrement 	Decrease Value By 1. var = var - 1 Expression value is var

Operator Type 	Description
= 	            Assign a value to a variable
+= 	            Adds a value to a variable
-= 	            Reduces a value to a variable
*= 	            Multiply value to a variable
/= 	            Divided value by a variable


Operator  	Operator Name 	          Description
> 	        Greater than 	            Used to check which operand is bigger and gives result as boolean
< 	        Less than 	              Used to check which operand is smaller and gives result as boolean
>= 	        Greater than or equal to 	Used to check which operand is bigger or equal and gives result as boolean
<= 	        Less than or equal to 	  Used to check which operand is smaller or equal and gives result as boolean
== 	        Equal to 	                Used to check operands are equal to each other and gives result as boolean
!= 	        Not equal to 	            Used to check operand are not equal to each other and gives result as boolean

Operator Type 	Description
&& 	            This is ‘and’, return true if all conditions are true
|| 	            This is ‘or’. Return true if one of the conditions is true
! 	            This is ’not’. return false if the result is true and vice versa

Operator Symbol 	Operator Name 	Description
is 	              is 	            Gives boolean value true if the object has a specific type
is! 	            is not 	        Gives boolean value false if the object has a specific type

*/
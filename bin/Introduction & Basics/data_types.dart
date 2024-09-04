void main() {
// Declaring Variables
  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;

// For Sum
  num sum = num1 + num2 + num3 + num4;

// Printing Info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

// Declaring Variables
  double prices = 1130.2232323233233; // valid.
  print(prices.toStringAsFixed(2));

// Declaring Values
  String schoolName = 'Diamond School';
  String address = "New York 2140";

// Printing Values
  print("School name is $schoolName and address is ${address.toUpperCase()}");

// Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

// Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

// Printing Information
  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

// Using \n and \t
  print("I am from \nUS.");
  print("I am from \tUS.");

// Set price value
  num price = 10;
  String withoutRawString = "The value of price is \t $price"; // regular String
  String withRawString = r"The value of price is \t $price"; // raw String

  print("Without Raw: $withoutRawString"); // regular result
  print("With Raw: $withRawString"); // with raw result

//convert to int
  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}");
  int intvalue = int.parse(strvalue);
  print("Value of intvalue is $intvalue");
// this will print data type
  print("Type of intvalue is ${intvalue.runtimeType}");

//convert to double
  String strvalue2 = "1.1";
  print("Type of strvalue is ${strvalue2.runtimeType}");
  double doublevalue = double.parse(strvalue2);
  print("Value of doublevalue is $doublevalue");
// this will print data type
  print("Type of doublevalue is ${doublevalue.runtimeType}");

//convert to String
  int one = 1;
  print("Type of one is ${one.runtimeType}");
  String oneInString = one.toString();
  print("Value of oneInString is $oneInString");
// this will print data type
  print("Type of oneInString is ${oneInString.runtimeType}");

  double ten = 10.01;
  int x = ten.toInt(); // converting double to int

  print("The value of ten is $ten. Its type is ${ten.runtimeType}");
  print("The value of x is $x. Its type is ${x.runtimeType}");

  bool isMarried = true;
  print("Married Status: $isMarried");

  List<String> names = ["Raj", "John", "Max"];
  print("Value of names is $names");
  print("Value of names[0] is ${names[0]}"); // index 0
  print("Value of names[1] is ${names[1]}"); // index 1
  print("Value of names[2] is ${names[2]}"); // index 2

  // Finding Length of List
  int length = names.length;
  print("The Length of names is $length");

  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  print(weekday);

  Map<String, String> myDetails = {
    'name': 'John Doe',
    'address': 'USA',
    'fathername': 'Soe Doe'
  };
// displaying the output
  print(myDetails['name']);

  String value = "Dart";
  print(value.runes);

  var amount = 50; // You can also use int instead of var
  //myVariable = "Hello"; // this will give error
  print(amount);

  dynamic speed = 50;
  speed = "Hello";
  print(speed);
}

/*
Note

Data types help you to categorize all the different types of data you use in your code. For e.g. numbers, texts, symbols, etc. The data type specifies what type of value will be stored by the variable. Each variable has its data type. Dart supports the following built-in data types :

    Numbers
    Strings
    Booleans
    Lists
    Maps
    Sets
    Runes
    Null

Data Type 	Keyword 	        Description
Numbers 	  int, double, num 	It represents numeric values
Strings 	  String 	          It represents a sequence of characters
Booleans 	  bool 	            It represents Boolean values true and false
Lists 	    List 	            It is an ordered group of items
Maps 	      Map 	            It represents a set of values as key-value pairs
Sets 	      Set 	            It is an unordered list of unique values of same types
Runes 	    runes 	          It represents Unicode values of String
Null 	      null 	            It represents null value

Both int and double are subtypes of num. You can use num to store both int or double value.

String helps you to store text data. You can store values like I love dart, New York 2140 in String. 
You can use single or double quotes to store string in dart.

If you want to create a multi-line String in dart, 
then you can use triple quotes with either single or double quotation marks.

You can also create raw string in dart. 
Special characters won’t work here. You must write r after equal sign.

In Dart, boolean holds either true or false value. 
You can write the bool keyword to define the boolean data type. 
You can use boolean if the answer is true or false. Consider the answer to the following questions:

    Are you married?
    Is the door open?
    Does a cat fly?
    Is the traffic light green?
    Are you older than your father?

These all are yes/no questions. Its a good idea to store them in boolean.

The list holds multiple values in a single variable. It is also called arrays.
If you want to store multiple values without creating multiple variables, you can use a list.
List index always starts with 0. Here names[0] is Raj, names[1] is John and names[2] is Max.

An unordered collection of unique items is called set in dart. You can store unique data in sets.
In Dart, a map is an object where you can store data in key-value pairs. 
Each key occurs only once, but you can use same value multiple times.

In Dart, var automatically finds a data type. In simple terms, 
var says if you don’t want to specify a data type, I will find a data type for you.

With runes, you can find Unicode values of String. 
The Unicode value of a is 97, so runes give 97 as output.

You may have heard of the statically-typed language. 
It means the data type of variables is known at compile time. 
Similarly, dynamically-typed language means data types of variables are known at run time. 
Dart supports dynamic and static types, so it is called optionally-typed language.

A language is statically typed if the data type of variables is known at compile time. 
Its main advantage is that the compiler can quickly check the issues and detect bugs.

A language is dynamically typed if the data type of variables is known at run time.
*/

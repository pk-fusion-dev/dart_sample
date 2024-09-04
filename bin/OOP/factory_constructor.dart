class Area {
  final int length;
  final int breadth;
  final int area;

  // Initializer list
  const Area(this.length, this.breadth) : area = length * breadth;
}

void main() {
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // notice that here is a negative value
  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area}");
}

/*

Note

Rules For Factory Constructors

    Factory constructor must return an instance of the class or sub-class.
    You can’t use this keyword inside factory constructor.
    It can be named or unnamed and called like normal constructor.
    It can’t access instance members of the class.

Key Points

Here It means factory constructor

    It uses the factory keyword to define a factory constructor.
    It returns an instance of the same class or sub-class.
    It is used to implement factory design patterns. [Return sub-class instance based on input parameter]
    It is used to implement singleton design patterns. [Return the same instance every time]
    It is used to initialize a final variable using logic that can’t be handled in the initializer list.

*/

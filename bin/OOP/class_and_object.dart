class Rectangle {
  //properties of rectangle
  double? length;
  double? width;

  //functions of rectangle
  double area() {
    // ! is used to tell the compiler that the variable is not null.
    // If you don’t use !, then you will get an error.
    return width! * width!;
  }
}

void main() {
  //object of rectangle created
  Rectangle rectangle = Rectangle();

  //setting properties for rectangle
  rectangle.length = 10;
  rectangle.width = 5;

  //functions of rectangle called
  print("Area of rectangle is ${rectangle.area()}.");
}

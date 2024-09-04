class Car {
  // Properties
  String? name;
  double? price;
}

class Tesla extends Car {
  // Method to display the values of the properties
  void display() {
    print("Name: $name");
    print("Price: $price");
  }
}

void main() {
  // Create an object of Tesla class
  Tesla tesla = Tesla();
  // setting values to the object
  tesla.name = "Tesla Model 3";
  tesla.price = 50000.00;
  // Display the values of the object
  tesla.display();
}

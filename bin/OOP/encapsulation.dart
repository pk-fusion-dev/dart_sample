class NoteBook {
  // Private properties use _ as private modifier
  String? _name;
  double? _prize;

  // Constructor
  //NoteBook(this._name, this._prize);

  // Getter method to access private property _name
  String get name => _name!;

  // Getter method to access private property _prize
  double get price => _prize!;

  // Setter to update private property _name
  set name(String name) => _name = name;

  // Setter to update private property _prize
  set price(double price) => _prize = price;

  // Method to display the values of the properties
  void display() {
    print("Name: $_name");
    print("Price: $_prize");
  }
}

void main() {
  // Create an object of NoteBook class
  NoteBook nb = NoteBook();
  // setting values to the object using setter
  nb.name = "Dell";
  nb.price = 500.00;
  //print(nb.name);
  //print(nb.price);
  // Display the values of the object
  nb.display();
}

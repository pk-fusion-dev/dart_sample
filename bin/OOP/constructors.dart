// ignore_for_file: prefer_initializing_formals

class Laptop {
  String? brand;
  int? price;

  // Default Constructor
  Laptop() {
    print("This is a default constructor");
    brand = 'Macbook Air M1';
    price = 1500000;
  }
}

class Desktop {
  String? brand;
  int? price;

  // Parameterized Constructor
  Desktop(String brand, int price) {
    this.brand = brand;
    this.price = price;
  }
}

class Tablet {
  String? brand;
  int? price;

  // Constructor in short form
  Tablet(this.brand, this.price);
}

class Handset {
  String? brand;
  int? price;
  String? storage;

  //Constructor With Optional Parameters
  Handset(this.brand, [this.price = 0, this.storage = 'N/A']);
}

class Router {
  String? brand;
  String? frequency;

  //Constructor With Named Parameters
  Router({this.brand, this.frequency});
}

class AccessPoint {
  String? brand;
  String? node;

  //Constructor With Default Values
  AccessPoint({this.brand = 'MPT', this.node = '5 Nodes'});
}

class Mobile {
  String? name;
  String? color;
  int? price;

  Mobile(this.name, this.color, this.price);

  // here is a named constructor
  Mobile.namedConstructor(this.name, this.color, [this.price = 0]);

  void displayMobileDetails() {
    print("Mobile name: $name.");
    print("Mobile color: $color.");
    print("Mobile price: $price");
  }
}

class Point {
  final int x;
  final int y;
  // Constant Constructor
  /*
    Rule For Declaring Constant Constructor In Dart

    All properties of the class must be final.
    It does not have any body.
    Only class containing const constructor is initialized using the const keyword.

  */
  const Point(this.x, this.y);
}

void main() {
  // Here laptop is object of class Laptop.
  Laptop laptop = Laptop();
  print('${laptop.brand} cost \$${laptop.price}');

  Desktop desktop = Desktop("Lenovo Desktop", 1200000);
  print('${desktop.brand} cost \$${desktop.price}');

  Tablet tablet = Tablet("Mi 8 Tablet", 180000);
  print('${tablet.brand} cost \$${tablet.price}');

  Handset handset = Handset("Vivo");
  //Handset handset = Handset("Vivo Y9", 280000, "4/128");
  print('${handset.brand} cost \$${handset.price} with ${handset.storage}');

  Router router = Router(brand: 'TP-Link', frequency: '5 Ghz');
  print('${router.brand} work with ${router.frequency}');

  AccessPoint accessPoint = AccessPoint();
  print('${accessPoint.brand} work with ${accessPoint.node}');

  var mobile1 = Mobile("Samsung", "Black", 20000);
  mobile1.displayMobileDetails();
  var mobile2 = Mobile.namedConstructor("Apple", "White");
  mobile2.displayMobileDetails();

  // p1 and p2 has the same hash code.
  Point p1 = const Point(1, 2);
  print("The p1 hash code is: ${p1.hashCode}");

  Point p2 = const Point(1, 2);
  print("The p2 hash code is: ${p2.hashCode}");
  // without using const
  // this has different hash code.
  Point p3 = Point(2, 2);
  print("The p3 hash code is: ${p3.hashCode}");

  Point p4 = Point(2, 2);
  print("The p4 hash code is: ${p4.hashCode}");
}

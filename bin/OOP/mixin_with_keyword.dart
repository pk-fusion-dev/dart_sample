mixin ElectricVariant {
  void electricVariant() {
    print('This is an electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('This is a petrol variant');
  }
}

// with is used to apply the mixin to the class
class Car with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

void main() {
  var car = Car();
  car.electricVariant();
  car.petrolVariant();
}


/*

Note

The WITH keyword is used to apply the mixin to the class. 
It promotes DRY(Don’t Repeat Yourself) principle.

Sometimes, you want to use a mixin only with a specific class. 
In this case, you can use the ON keyword.

Rules For Mixin

    Mixin can’t be instantiated. You can’t create object of mixin.
    Use the mixin to share the code between multiple classes.
    Mixin has no constructor and cannot be extended.
    It is possible to use multiple mixins in a class.

What Is Allowed For Mixin

    You can add properties and static variables.
    You can add regular, abstract, and static methods.
    You can use one or more mixins in a class.

What Is Not Allowed For Mixin

    You can’t define a constructor.
    You can’t extend a mixin.
    You can’t create an object of mixin.

*/
void main() {
  // declaring fruits as Set
  Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};

  print(fruits);
  // using different properties of Set
  print("First Value is ${fruits.first}");
  print("Last Value is ${fruits.last}");
  print("Is fruits empty? ${fruits.isEmpty}");
  print("Is fruits not empty? ${fruits.isNotEmpty}");
  print("The length of fruits is ${fruits.length}");

  //Check The Available Value
  print(fruits.contains("Mango"));
  print(fruits.contains("Lemon"));

  //Add & Remove Items
  fruits.add("Lemon");
  fruits.add("Grape");
  print("After Adding Lemon and Grape: $fruits");

  fruits.remove("Apple");
  print("After Removing Apple: $fruits");

  //Adding Multiple Elements
  fruits.addAll(["kiwi", "pineapple", "papaya"]);
  print("After adding more fruits: $fruits");

  //loop through set
  for (var n in fruits) {
    print(n);
  }

  Set<String> days = {"Sunday", "Monday", "Tuesday"};

  // index starts from 0 so 2 means Tuesday
  print(days.elementAt(2));

  days.retainAll({"Monday"});
  print(days);
  //Clear Set
  days.clear();
  print(days);

  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  //the difference method creates a new Set with the elements that are not in the other.
  var differenceSet = fruits.difference(fruits2);
  print(differenceSet);

  //the intersection method creates a new Set with the common elements in 2 Sets
  var interset = fruits.intersection(fruits2);
  print(interset);
}

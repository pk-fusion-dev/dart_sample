void main() {
  // Integer List
  List<int> ages = [10, 30, 23];

  // String List
  List<String> names = ["Raj", "John", "Rocky"];

  // Mixed List
  var mixed = [10, "John", 18.8];

  print(ages);
  print(names);
  print(mixed);

  //Fixed length list
  var fixList = List<int>.filled(5, 0);
  print(fixList);

  var list = [210, 21, 22, 33, 44, 55];
  //accessing list value
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
  print(list[4]);
  print(list[5]);
  //get index by list value
  print(list.indexOf(22));
  print(list.indexOf(33));

  //length of list value
  //Note: Remember that List index starts with 0 and length always starts with 1.
  print(list.length);

  //changing list value
  names[1] = "Bill";
  names[2] = "Elon";
  print(names);

  //immutable list
  const List<String> os = ['mac', 'windows', 'linux'];
  print(os);

  List<String> drinks = ["water", "juice", "milk", "coke"];

  //first & last element of list
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");

  //Check The List Is Empty Or Not
  print("Is drinks Empty: ${drinks.isEmpty}");
  print("Is drinks not Empty: ${drinks.isNotEmpty}");

  //check list value is single (expection handling require)
  //print("List is single: ${drinks.single}");

  //reverse list value
  print("List in reverse: ${drinks.reversed}");

  var evenList = [2, 4, 6, 8, 10];
  print(evenList);
  //Add Item To List
  evenList.add(12);
  print(evenList);
  //add all intems to list
  evenList.addAll([12, 14, 16, 18]);
  print(evenList);

  //insert value at position
  evenList.insert(2, 155);
  print(evenList);

  //insert all value at position
  evenList.insertAll(1, [6, 7, 10, 9]);
  print(evenList);

  //Replace Range Of List
  evenList.replaceRange(0, 4, [55, 66, 77, 88]);
  print("List after updation using replaceAll() function : $evenList");

  //remove list value
  evenList.remove(155);
  print("List after removing element : $evenList");

  //remove list value at index
  evenList.removeAt(3);
  print("List after removing element : $evenList");

  //remove last value in list
  evenList.removeLast();
  print("List after removing last element:$evenList");

  //remove value in range
  evenList.removeRange(0, 3);
  print("List after removing range element:$evenList");

  //loop through list
  // ignore: avoid_function_literals_in_foreach_calls
  evenList.forEach((n) => print(n));

  //Multiply All Value By 2 Of All List
  var douledList = evenList.map((n) => n * 2);
  print((douledList));

  List<String> firstName = ["Raj", "John", "Rocky"];
  List<String> lastName = ["Mike", "Subash", "Mark"];
  var nickName = [];

  //Combine Two Or More List
  List<String> fullNames = [...firstName, ...lastName, ...nickName];
  print(fullNames);

  //condition in list
  bool sad = true;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart);

  //use where with List to filter specific items
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];

  List<int> even = numbers.where((number) => number.isEven).toList();
  print(even);
}

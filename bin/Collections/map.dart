void main() {
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital);

  //Access Value From Key
  print(countryCapital["USA"]);

  //Map Properties
  print("All keys of Map: ${countryCapital.keys}");
  print("All values of Map: ${countryCapital.values}");
  print("Is Map empty: ${countryCapital.isEmpty}");
  print("Is Map not empty: ${countryCapital.isNotEmpty}");
  print("Length of map is: ${countryCapital.length}");

  //Adding Element To Map
  countryCapital['Japan'] = 'Tokyo';
  print(countryCapital);

  //Updating An Element Of Map
  countryCapital['USA'] = 'Washington';
  print(countryCapital);

  //removing An Element Of Map
  countryCapital.remove("USA");
  print(countryCapital);

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  //Convert Maps Keys & Values To List
  // Without List
  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");

  // With List
  print("All keys of Map with List: ${expenses.keys.toList()}");
  print("All values of Map with List: ${expenses.values.toList()}");

  //Check Map Contains Specific Key/Value Or Not?
  // For Keys
  print("Does Map contain key sun: ${expenses.containsKey("sun")}");
  print("Does Map contain key abc: ${expenses.containsKey("abc")}");

  // For Values
  print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}");
  print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}");

  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };

  // Loop Through Map
  for (MapEntry book in book.entries) {
    print('Key is ${book.key}, value ${book.value}');
  }

  // Loop Through For Each
  book.forEach((key, value) => print('Key is $key and value is $value'));

  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  //Remove with Where
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);
}

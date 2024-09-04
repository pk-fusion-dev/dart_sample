void main() {
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];

  //Filter Only Odd Number From List
  List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();
  print(oddNumbers);

  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  //Filter Days Start With S
  List<String> startWithS =
      days.where((element) => element.startsWith("S")).toList();

  print(startWithS);

  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };

  //Where Filter In Map
  mathMarks.removeWhere((key, value) => value < 32);

  print(mathMarks);
}

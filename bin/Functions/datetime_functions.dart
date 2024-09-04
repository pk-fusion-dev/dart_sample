void getDateTimeInfo() {
  DateTime datetime = DateTime.now();
  print("Year is ${datetime.year}");
  print("Month is ${datetime.month}");
  print("Day is ${datetime.day}"); // If you don't want to use .toString
  print("Hour is ${datetime.hour}");
  print("Minutes is ${datetime.minute}");
  print("Second is ${datetime.second}");
}

void dateToString() {
  String datetime = DateTime.now().toString();
  print(datetime);
}

void stringToDate() {
  String myDateInString = "2022-05-01";
  DateTime myConvertedDate = DateTime.parse(myDateInString);
  print("Year is ${myConvertedDate.year}");
  print("Month is ${myConvertedDate.month}");
  print("Day is ${myConvertedDate.day}");
}

void addDate() {
  DateTime myBirthday = DateTime.parse("1997-05-14");
  myBirthday = myBirthday.add(Duration(days: 1));
  print("Year is ${myBirthday.year}");
  print("Month is ${myBirthday.month}");
  print("Day is ${myBirthday.day}");
}

void substractDate() {
  DateTime myBirthday = DateTime.parse("1997-05-14");
  myBirthday = myBirthday.subtract(Duration(days: 1));
  print("Year is ${myBirthday.year}");
  print("Month is ${myBirthday.month}");
  print("Day is ${myBirthday.day}");
}

void dateDifference() {
  DateTime myBirthday = DateTime.parse("1997-05-14");
  DateTime today = DateTime.now();
  Duration diff = today.difference(myBirthday);
  print("Difference in days: ${diff.inDays}");
  print("Difference in hours: ${diff.inHours}");
  print("Difference in minutes: ${diff.inMinutes}");
  print("Difference in seconds: ${diff.inSeconds}");
  print("Difference in milliseconds: ${diff.inMilliseconds}");
  print("Difference in microseconds: ${diff.inMicroseconds}");
}

void compareDate() {
  DateTime myBirthday = DateTime.parse("1997-05-14");
  DateTime today = DateTime.now();

  if (myBirthday.isBefore(today)) {
    print("My Birthday is before today.");
  } else if (myBirthday.isAfter(today)) {
    print("My Birthday is after today.");
  } else if (myBirthday.isAtSameMomentAs(today)) {
    print("My Birthday date and today's date is same.");
  }
}

void main() {
  getDateTimeInfo();
  dateToString();
  stringToDate();

  addDate();
  substractDate();
  dateDifference();
  compareDate();
}

// define enum outside main function
enum Weather { sunny, snowy, cloudy, rainy }

void main() {
  var age = 20;
  if (age >= 18) {
    print("You are voter.");
  } else {
    print("You are not voter.");
  }

  bool isMarried = false;
  // ignore: dead_code
  if (isMarried) {
    print("You are married.");
  } else {
    print("You are single.");
  }

  int noOfMonth = 5;

  // Check the no of month
  if (noOfMonth == 1) {
    print("The month is jan");
  } else if (noOfMonth == 2) {
    print("The month is feb");
  } else if (noOfMonth == 3) {
    print("The month is march");
  } else if (noOfMonth == 4) {
    print("The month is april");
  } else if (noOfMonth == 5) {
    print("The month is may");
  } else if (noOfMonth == 6) {
    print("The month is june");
  } else if (noOfMonth == 7) {
    print("The month is july");
  } else if (noOfMonth == 8) {
    print("The month is aug");
  } else if (noOfMonth == 9) {
    print("The month is sep");
  } else if (noOfMonth == 10) {
    print("The month is oct");
  } else if (noOfMonth == 11) {
    print("The month is nov");
  } else if (noOfMonth == 12) {
    print("The month is dec");
  } else {
    print("Invalid option given.");
  }

  var dayOfWeek = 5;
  switch (dayOfWeek) {
    case 1:
      print("Day is Sunday.");
      break;
    case 2:
      print("Day is Monday.");
      break;
    case 3:
      print("Day is Tuesday.");
      break;
    case 4:
      print("Day is Wednesday.");
      break;
    case 5:
      print("Day is Thursday.");
      break;
    case 6:
      print("Day is Friday.");
      break;
    case 7:
      print("Day is Saturday.");
      break;
    default:
      print("Invalid Weekday.");
      break;
  }

  const weather = "cloudy";

  switch (weather) {
    case "sunny":
      print("Its a sunny day. Put sunscreen.");
      break;
    case "snowy":
      print("Get your skis.");
      break;
    case "cloudy":
    case "rainy":
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }

  const weatherStatus = Weather.cloudy;

  switch (weatherStatus) {
    case Weather.sunny:
      print("Its a sunny day. Put sunscreen.");
      break;
    case Weather.snowy:
      print("Get your skis.");
      break;
    case Weather.rainy:
    case Weather.cloudy:
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }

  int num1 = 10;
  int num2 = 15;
  int max = (num1 > num2) ? num1 : num2;
  print("The greatest number is $max");

  var check = (age >= 18) ? 'You ara a voter.' : 'You are not a voter.';
  print(check);
}

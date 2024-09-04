void main() {
//Print Name 10 Times
  for (int i = 0; i < 10; i++) {
    print("John Doe");
  }

//print 1 To 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  } //for loop

  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  } //while loop

  do {
    print(i);
    i++;
  } while (i <= 10); //do while loop

//print 10 To 1
  for (int i = 10; i >= 1; i--) {
    print(i);
  } //for loop

  i = 10;
  while (i >= 1) {
    print(i);
    i--;
  } //while loop

  do {
    print(i);
    i--;
  } while (i >= 1); //do while loop

//print Sum of n Natural Numbers
  int total = 0;
  int n = 100; // change as per required

  for (int i = 1; i <= n; i++) {
    total = total + i;
  }
  print("Total is $total"); //for loop

  i = 1;
  while (i <= n) {
    total = total + i;
    i++;
  }
  print("Total is $total"); //while loop

  i = 1;
  do {
    total = total + i;
    i++;
  } while (i <= n);
  print("Total is $total"); //do while loop

//print Even Numbers Between 50 to 100
  for (int i = 50; i <= 100; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  } //for loop

//Using Foreach
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
//usage 1
  // ignore: avoid_function_literals_in_foreach_calls
  footballplayers.forEach((names) => print(names));
//usage 2
  footballplayers.forEach(print);
//usage 3
  for (String player in footballplayers) {
    print(player);
  }

  int number = 0;
  do {
    print("Hello");
    number--;
  } while (number > 1);

//break
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
//continue
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}

// function that returns a future
Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

// main function
void main() {
  print("Start");
  getUserName().then((value) => print(value));
  print("End");
}


/*

State Of Future

    Uncompleted
    Completed

Uncompleted

When you call an asynchronous function, it returns to an uncompleted future. 
It means the future is waiting for the function asynchronous operation to finish or to throw an error.

*/
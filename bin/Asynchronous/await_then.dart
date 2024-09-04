// function that returns a future
import 'dart:io';

Future<String> getData() async {
  File file = File('test.txt');
  var data = await file.readAsString();
  return data;
}

// main function
void main() async {
  print("Start");
  await getData()
      .then((value) => print(value))
      .catchError((error) => print(error));
  //getUserName().then((value) => print(value));
  print("End");
}

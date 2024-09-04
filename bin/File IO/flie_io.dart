// dart program to write to file
import 'dart:io';

void main() {
  writeTxtFile();
  //writeCsvFile();
  //readTxtFile();
  //fileInfo();
  //readCsvFile();
  //deleteFile();
}

void writeTxtFile() {
// open file
  File file = File('test.txt');
  // write to file
  file.writeAsStringSync('Welcome to test.txt file.');
  print('File written.');

  file.writeAsStringSync('\nThis is a new content.', mode: FileMode.append);
  print('Congratulations!! New content is added on top of previous content.');
}

void writeCsvFile() {
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name,Phone\n');
  for (int i = 0; i < 3; i++) {
    // user input name
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${i + 1}: ");
    // user input phone
    String? phone = stdin.readLineSync();
    file.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");
}

void readTxtFile() {
  // creating file object
  File file = File('test.txt');
  // read file
  String contents = file.readAsStringSync();
  // print file
  print(contents);
}

void fileInfo() {
  // open file
  File file = File('/Users/bluemix/Documents/test.txt');
  // get file location
  print('File path: ${file.path}');
  // get absolute path
  print('File absolute path: ${file.absolute.path}');
  // get file size
  print('File size: ${file.lengthSync()} bytes');
  // get last modified time
  print('Last modified: ${file.lastModifiedSync()}');
}

void readCsvFile() {
  // open file
  File file = File('student.csv');
  // read file
  String contents = file.readAsStringSync();
  // split file using new line
  List<String> lines = contents.split('\n');
  // print file
  print('---------------------');
  for (var line in lines) {
    print(line);
  }
}

void deleteFile() {
  // open file
  File file = File('test.txt');
  // check if file exists
  if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}

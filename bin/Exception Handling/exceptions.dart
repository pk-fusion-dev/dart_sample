void main() {
  int a = 18;
  int b = 0;
  int result;

  try {
    result = a ~/ b;
    print("Result is $result");
  }
  // It returns the built-in exception related to the occurring exception
  on UnsupportedError {
    print('Cannot divide by zero');
  } catch (ex) {
    print(ex);
  } finally {
    print('Finally block always executed');
  }

  try {
    checkAccount(-10);
  } catch (e) {
    print('The account cannot be negative');
  }

  try {
    checkMarks(-20);
  } catch (ex) {
    print(ex.toString());
  }
}

void checkAccount(int amount) {
  if (amount < 0) {
    throw FormatException(); // Raising explanation externally
  }
}

class MarkException implements Exception {
  String errorMessage() {
    return 'Marks cannot be negative value.';
  }
}

void checkMarks(int marks) {
  if (marks < 0) throw MarkException().errorMessage();
}

/*
Note

Some reasons why exception handling is necessary:

    To avoid abnormal termination of the program.
    To avoid an exception caused by logical error.
    To avoid the program from falling apart when an exception occurs.
    To reduce the vulnerability of the program.
    To maintain a good user experience.
    To try providing aid and some debugging in case of an exception.


'Try' You can write the logical code that creates exceptions in the try block.

'Catch' When you are uncertain about what kind of exception a program produces, 
then a catch block is used. It is written with a try block to catch the general exception.

The 'finally' block is always executed whether the exceptions occur or not. It is optional to include the final block, but if it is included, it should be after the try and catch block is over.

'On' block is used when you know what types of exceptions are produced by the program.

The throw keyword is used to raise an exception explicitly. 
A raised exception should be handled to prevent the program from exiting unexpectedly

*/
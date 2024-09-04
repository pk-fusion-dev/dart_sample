void main() {
  print("First Operation");
  Future.delayed(Duration(seconds: 3), () => print('Second Big Operation'));
  print("Third Operation");
  print("Last Operation");
}

/*

Note

  Why We Need Asynchronous

    To Fetch Data From Internet,
    To Write Something to Database,
    To execute a long-time consuming task,
    To Read Data From File, and
    To Download File etc.

    Synchronous operation blocks other operations from running until it completes.
    Synchronous function only perform a synchronous operation.
    Asynchronous operation allows other operations to run before it completes.
    Asynchronous function performs at least one asynchronous operation and can also perform synchronous operations.

*/
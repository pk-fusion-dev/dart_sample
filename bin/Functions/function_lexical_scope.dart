var txt = 'global value';

void main() {
  var val = 'lexical value';
  void func1() {
    print('Function 1 $val');
    print('Function 1 $txt');

    void func2() {
      print('Function 2 $val');
      print('Function 2 $txt');
    }

    func2();
  }

  func1();
  func3();
}

func3() {
  print('Function 3 $txt');
}

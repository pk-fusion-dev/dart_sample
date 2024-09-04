// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

void sleepTest() {
  var name = ['Mac', 'Windows', 'Linux', 'Android', 'IOS'];

  name.forEach((element) {
    sleep(Duration(seconds: 2));
    print(element);
  });
}

void timerTest() {
  int idx = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('Timer count $idx');
    idx++;

    if (idx == 5) {
      timer.cancel();
    }
  });
}

void concurrencyTest() {
  Isolate.spawn(doIt, "1st core thread.");
  Isolate.spawn(doIt, "2nd core thread.");
  Isolate.spawn(doIt, "3rd core thread.");
}

void doIt(String message) {
  print(message);
}

void main() {
  //sleepTest();
  //timerTest();
  concurrencyTest();
}

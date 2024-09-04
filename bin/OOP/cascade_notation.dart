class Developer {
  void code() {
    print('I love dart.');
  }

  void debug() {
    print('but I hate bugs');
  }
}

void main() {
  Developer developer = Developer();
  developer
    ..code()
    ..debug();
}

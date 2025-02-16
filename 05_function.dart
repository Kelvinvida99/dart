void main() {


  print(greetEveryone());
  print(addTowNumbers(1,1));
  print(addTowNumbers2(1,1));
  print(addTowNumbers3(1,1));
  print(greetPerson(name: 'Fernando', message: 'Todo Bien'));
}

String greetEveryone() {
  return 'Hello everyone';
}

int addTowNumbers(int a, int b) {
  return a + b;
}

int addTowNumbers2(int a, int b) => a + b;

int addTowNumbers3(int a, [int b = 0 ]) {
    // b ??= 0;
    return a + b;
}

String greetPerson({required String name, String message = 'Hola'}) {
  
  return '$message, Fernando';
}

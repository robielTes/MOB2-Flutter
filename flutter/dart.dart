import 'dart:io';

void main() {
  int counter = 0;
  while (true) {
  stdout.write('Press Enter to increment the counter, or q to quit: ');

  var input = stdin.readLineSync();

  if (input == 'q') {
    print('Goodbye!');
    break;
  }

  counter++;
  print('Counter: $counter');
  }

  print('Final counter: $counter');
}
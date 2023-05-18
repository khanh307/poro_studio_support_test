import 'dart:io';

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

int fibonacciSum(int a, int b) {
  int sum = 0;
  for (int i = a; i <= b; i++) {
    sum += fibonacci(i);
  }
  return sum;
}

void main() {
  print('Enter number a: ');
  int a = int.parse(stdin.readLineSync()!);

  print('Enter number b: ');
  int b = int.parse(stdin.readLineSync()!);

  print('Sum fibonacci a - b: ${fibonacciSum(a, b)}');
  
}

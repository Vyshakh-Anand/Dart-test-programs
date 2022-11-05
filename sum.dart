import 'dart:io';
void main()
{
  double a, b;
  stdout.writeln("Enter the numbers : ");
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  double c = a+b ;
  c.toStringAsFixed(2);
  print("$a + $b = $c ");
  
}
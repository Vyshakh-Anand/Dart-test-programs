import 'dart:io';
void main()
{
  int a, b,c;
  var op;
  String flag="0";
  do{
    print("Enter the numbers: ");
   a = int.parse(stdin.readLineSync()!);
   b = int.parse(stdin.readLineSync()!);
   print("Enter the operand");
   op = stdin.readLineSync();

    switch (op) {
      case "+":
      c=a+b;
      print("$a + $b = $c");  
      break;
      case "-":c=a-b;
      print("$a - $b = $c");
      break;
      case "*":
      c=a*b;
      print("$a * $b = $c");  
      break;
      case "/":
      c=a~/b;
      print("$a / $b = $c");  
      break;
      case "+":
      c=a%b;
      print("$a % $b = $c");  
      break;
      default:
    }
    print("would you like to continue? (Y/N)");
    flag=stdin.readLineSync()!;
  }while(flag=="y"||flag=="Y");
}
 
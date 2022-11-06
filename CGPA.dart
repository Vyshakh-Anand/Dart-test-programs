import 'dart:ffi';
import 'dart:io';

class Semester4
{
  int c_DCP=4,c_OOP=5,c_CA=4,c_DBMS=4,c_EVDS=3,c_DCPlab=3,c_OOPlab=3,c_DBMSlab=3;
SEM4()
{
  

}
}
class Calculation
{
  int i=0;
int convertToGP(String grade)
{
  int GP; 
switch (grade) {
  case "S": GP=10;
    break;
  case "A": GP=9;
  break;
  case"B": GP=8;
  break;
  case"C": GP=7;
  break;
  case"D": GP=6;
  break;
  case"E": GP=5;
  break;
  default: GP=0;
}
 return GP;
}
  List<int> addtolst(int gp)
{
  List<int> GPS=[10];
  GPS[i]=gp;
  i++;
  print("$i");
 return GPS;
}
void display(List<int> GPS)
{
  for(int i=0;i<=GPS.length;i++)
  {
    print(GPS[i]);
  }
}
  
}


main()
{
  var s4= new Semester4();
  var Cal= new Calculation();
  String flag="0";
  do
  {
    stdout.writeln("Enter the grades \n");
    stdout.write("DCP : "); String g =stdin.readLineSync()!;
    int gp=Cal.convertToGP(g);
    List<int>GPS=Cal.addtolst(gp);
    stdout.write("OOP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("CA : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("DBMS: "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("EVDS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("DCP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("OOP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    stdout.write("Dbms lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp);
    Cal.display(GPS);


  }while(flag=="Y"||flag=="y");
  


}

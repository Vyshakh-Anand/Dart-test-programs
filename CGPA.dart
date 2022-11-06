import 'dart:ffi';
import 'dart:io';
class Semester4
{
  int c_DCP=4,c_OOP=5,c_CA=4,c_DBMS=4,c_EVDS=3,c_DCPlab=3,c_OOPlab=3,c_DBMSlab=3;
  num tc=0;
  Semester4()
  {
  tc= c_DCP+c_OOP+c_CA+c_DBMS+c_EVDS+c_DCPlab+c_OOPlab+c_DBMSlab;
  }
  SGPA(List<int> GradePoint)
  {
    num Gsum=0;
    double sgpa;
    for(int i=0;i<GradePoint.length;i++)
    {
      Gsum=Gsum+GradePoint[i];
    }
    sgpa=(Gsum/tc);
    String Ssgpa=sgpa.toStringAsFixed(2);
    print("Your SGPA score for SEMESTER 4 : $Ssgpa");
  }
}
class Calculation 
{
  int i=0;
  List<int> GPS=[];
List<int> retGPS()
  {
    return GPS;
  }
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
  GPS.add(gp);
 return GPS;
}
void display()
{
 print(GPS);
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
    List<int>GPS=Cal.addtolst(gp*s4.c_DCP);
    stdout.write("OOP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_OOP);
    stdout.write("CA : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_CA);
    stdout.write("DBMS: "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_DBMS);
    stdout.write("EVDS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_EVDS);
    stdout.write("DCP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_DCPlab);
    stdout.write("OOP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_OOPlab);
    stdout.write("Dbms lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_DBMSlab);
    s4.SGPA(GPS);
    Cal.display();


  }while(flag=="Y"||flag=="y");
  


}

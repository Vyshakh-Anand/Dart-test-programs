import 'dart:ffi';
import 'dart:io';
/*
c_Subject Name = Credit score of that subject
tc = total credit of that sum
*/
class Semester6
{
  int c_MCS=5,c_CN=4,c_SDP=5,c_MC=5,c_NIM=5,c_ST=5,c_MCSlab=3,c_SDPlab=3,c_PS=10;
  num tc=0;
  Semester6()
  {
    tc=c_MCS+c_CN+c_SDP+c_MC+c_NIM+c_ST+c_MCSlab+c_SDPlab+c_PS;
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
    print("Your SGPA score for SEMESTER 6 : $Ssgpa");
  }
}
class Semester5
{
  int c_PMSE=4,c_WP=4,c_MP=4,c_IS=4,c_EH=4,c_CC=4,c_WPlab=2,c_MPlab=2,c_IV=2,c_CNElab=3,c_PS=0;
  num tc=0;
  Semester5()
  {
    tc=c_PMSE+c_WP+c_MP+c_IS+c_EH+c_CC+c_WPlab+c_MPlab+c_IV+c_CNElab+c_PS;
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
    print("Your SGPA score for SEMESTER 5 : $Ssgpa");
  }
}
class Semester4
{
  int c_DC=4,c_OS=4,c_DS=5,c_CSH=4,c_SAlab=3,c_DSlab=3,c_CSHlab=3,c_Adj=5;
  num tc=0;
  Semester4()
  {
    tc=c_DC+c_OS+c_DS+c_CSH+c_SAlab+c_DSlab+c_CSHlab+c_Adj;
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
class Semester3
{
  int c_DCP=4,c_OOP=5,c_CA=4,c_DBMS=4,c_EVDS=3,c_DCPlab=3,c_OOPlab=3,c_DBMSlab=3;
  num tc=0;
  Semester3()
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
    print("Your SGPA score for SEMESTER 3 : $Ssgpa");
  }
}
class Calculation 
{
  int i=0;
  List<int> GPS=[];
List<int> retGPS()//Redundant
  {
    return GPS;
  }
int convertToGP(String grade)//to convert grades to grade points
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
String display()
{
 print(GPS);
 stdout.write("Do you want to continue (Y/N) : ");
 String f=stdin.readLineSync()!;
 return f;
}
}
main()
{
  var Cal= new Calculation();
  String flag="0";
  do{
  stdout.write("Enter the sem you want calculate SGPA OF : \n1. SEM 1\t 2.SEM 2\t 3. SEM 4\t SEM 5\t SEM 6\n");
  String sem =stdin.readLineSync()!;
  switch (sem) {
    case  "1":
    break;
    case "2":
    break;
    case "3": 
     var s3= new Semester3();
    stdout.writeln("Enter the grades \n");
    stdout.write("DCP : "); String g =stdin.readLineSync()!;
    int gp=Cal.convertToGP(g);
    List<int>GPS=Cal.addtolst(gp*s3.c_DCP);
    stdout.write("OOP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_OOP);
    stdout.write("CA : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_CA);
    stdout.write("DBMS: "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_DBMS);
    stdout.write("EVDS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_EVDS);
    stdout.write("DCP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_DCPlab);
    stdout.write("OOP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_OOPlab);
    stdout.write("Dbms lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s3.c_DBMSlab);
    s3.SGPA(GPS);
    flag=Cal.display();
    break;
    case "4":
  var s4= new Semester4();
    stdout.writeln("Enter the grades \n");
    stdout.write("DC : "); String g =stdin.readLineSync()!;
    int gp=Cal.convertToGP(g);
    List<int>GPS=Cal.addtolst(gp*s4.c_DC);
    stdout.write("OS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_OS);
    stdout.write("DS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_DS);
    stdout.write("CSH : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_CSH);
    stdout.write("SA Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_SAlab);
    stdout.write("DS Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_DSlab);
    stdout.write("CSH Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_CSHlab);
    stdout.write("ADJ Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s4.c_Adj);
    s4.SGPA(GPS);
   flag=Cal.display();
    break;
    case "5":
    var s5= new Semester5();
    stdout.writeln("Enter the grades \n");
    stdout.write("PMSE : "); String g =stdin.readLineSync()!;
    int gp=Cal.convertToGP(g);
    List<int>GPS=Cal.addtolst(gp*s5.c_PMSE);
    stdout.write("WP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_WP);
    stdout.write("MP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_MP);
    stdout.write("IS : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_IS);
    stdout.write("EH : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_EH);
    stdout.write("CC : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_CC);
    stdout.write("WP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_WPlab);
    stdout.write("MP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_MPlab);
    stdout.write("IV : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_IV);
    stdout.write("CNE Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_CNElab);
    stdout.write("Project and Seminar : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s5.c_PS);
    s5.SGPA(GPS);
    flag=Cal.display();
    break;
    case "6":
    var s6= new Semester6();
    stdout.writeln("Enter the grades \n");
    stdout.write("MCS : "); String g =stdin.readLineSync()!;
    int gp=Cal.convertToGP(g);
    List<int>GPS=Cal.addtolst(gp*s6.c_MCS);
    stdout.write("CN : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_CN);
    stdout.write("SDP : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_SDP);
    stdout.write("MC : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_MC);
    stdout.write("NIM : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_NIM);
    stdout.write("ST : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_ST);
    stdout.write("MCS Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_MCSlab);
    stdout.write("SDP Lab : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_SDPlab);
    stdout.write("Project and Seminar : "); g =stdin.readLineSync()!;
    gp=Cal.convertToGP(g);
    GPS=Cal.addtolst(gp*s6.c_PS);
    s6.SGPA(GPS);
    flag=Cal.display();
    break;
    default : print("Invalid Input !");
}
}while(flag=="Y"||flag=="y");
}

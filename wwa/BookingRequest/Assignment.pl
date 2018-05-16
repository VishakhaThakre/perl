#!usr/bin/perl


use Student_4_2;

use strict;
use warnings;

my %cStudent;

my $coVal = Student_4_2->new();

print("Enter number of Student:\n");
my $iNum = <STDIN>;
chomp($iNum);

if(defined ($iNum) && $iNum >= 0)
{
 print("Enter Details of $iNum students:\n\n");

 for(my $iCount=1; $iCount<=$iNum; $iCount++)
  {

    my $iRollNo = $coVal->getRollNo($iCount);

    my $cName = $coVal->getName();

    my $cAdd = $coVal->getAddress();
    $cStudent{"$iRollNo"}{"$cName"}{"1.Address"} = ("$cAdd");

    my $iAge = $coVal->getAge();
    $cStudent{"$iRollNo"}{"$cName"}{"2.Age"} = ("$iAge");

    (my $iMarks1, my $iMarks2, my $iMarks3, my $iTotal, my $iPercent, my $cGrade) = $coVal->getMarks();

    $cStudent{"$iRollNo"}{"$cName"}{"3.English"} =("$iMarks1");
    $cStudent{"$iRollNo"}{"$cName"}{"4.Maths"} = ("$iMarks2");
    $cStudent{"$iRollNo"}{"$cName"}{"5.Marathi"} = ("$iMarks3");
    $cStudent{"$iRollNo"}{"$cName"}{"6.Total"} = ("$iTotal");
    $cStudent{"$iRollNo"}{"$cName"}{"7.Percent"} = ("$iPercent");
    $cStudent{"$iRollNo"}{"$cName"}{"8.Grade"} = ("$cGrade");
    print("\n");
    print("-------------------------------\n\n");
 }
}
else
{
  print("Number should be Numeric or greater than zero.\n\n");
}


foreach my $iRollno (sort keys %cStudent)
{
 print("Student Roll no.: $iRollno\n\n");

 foreach my $cName (keys %{$cStudent{$iRollno}})
  {
    print("      Student Name:$cName \n\n");

    foreach my $cData (sort keys %{$cStudent{$iRollno}{$cName}})
     {
       print("      $cData: $cStudent{$iRollno}{$cName}{$cData}\n\n");
     }
    print("\n\n");
  }
}

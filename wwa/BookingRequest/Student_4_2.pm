#!usr/bin/perl

package Student_4_2;
 
use strict;
use warnings;
use Import::Marks_4_2;

sub new
{
  my $class = $_[0];
  my $self = {
   _iRollNo=>shift,
  };
  bless ($self, $class);
  return $self;
}  

sub getRollNo
 {
   my ($self,$iRollNo) = @_;
   return $iRollNo;
 }

sub getName
 {
   print("Enter Name:\n");
   my $cName = <STDIN>;
   chop($cName);
   return $cName;
 }

sub getAddress
 {
   print("Enter Address:\n");
   my $cAddress = <STDIN>;
   chop($cAddress);
   return $cAddress;
 }

sub getAge
 {
  print("Enter Age:\n");
  my $iAge = <STDIN>;
  chop($iAge);
  return $iAge;
 }
 
sub getMarks
{
   print("Enter the Marks of Student:\n");
   print("Marks Should be out off 100\n");
   my $oVal = Marks_4_2->new();
   my $iMarks1 = $oVal->getMarks1();
   my $iMarks2 = $oVal->getMarks2();
   my $iMarks3 = $oVal->getMarks3();
   (my $iTotal, my $iPercent) = $oVal->getTotal();
   my $cGrade = $oVal->getGrade();
   return ($iMarks1, $iMarks2, $iMarks3, $iTotal, $iPercent, $cGrade);
}

1;

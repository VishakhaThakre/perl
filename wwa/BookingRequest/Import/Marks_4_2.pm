#!usr/bin/perl

package Marks_4_2;
use Export::Calculation_4_2;
 
use strict;
use warnings;

my $iMarks1;
my $iMarks2;
my $iMarks3;
my $iTotal;
my $cGrade;
my $iPercent:;

my $oCval = Calculation_4_2->new();

sub new
{
  my $class = $_[0];
  my $self = {
  };
  bless $self, $class;
  return $self;
}  

sub getMarks1
 {
   print("Enter English Marks:\n");
   $iMarks1 = <STDIN>;
   chop($iMarks1);
   return $iMarks1;
 }

sub getMarks2
 {
   print("Enter Maths Marks:\n");
   $iMarks2 = <STDIN>;
   chop($iMarks2);
   return $iMarks2;
 }

sub getMarks3
 {
   print("Enter Marathi Marks:\n");
   $iMarks3 = <STDIN>;
   chop($iMarks3);
   return $iMarks3;
 }

sub getTotal
 {
   $iTotal = $iMarks1 + $iMarks2 + $iMarks3;

   $iPercent = $oCval->getPercent($iTotal);
   return ($iTotal, $iPercent);
 }
 
sub getGrade
 {
   my $cGrade = $oCval->getGrade();
   return $cGrade;  
 } 

1;


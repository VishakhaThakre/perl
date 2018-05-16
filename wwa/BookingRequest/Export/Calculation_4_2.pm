#!usr/bin/perl

package Calculation_4_2;

use strict;
use warnings;

my $iPercent;
my $cGrade;

sub new
{
  my $class = $_[0];
  my $self = {
  _iTotal=>shift,
  };
  bless $self, $class;
  return $self;
}


sub getPercent
{

  my ($self,$iTotal) = @_;
  $iPercent = ($iTotal/300)*100;
  return $iPercent;

}


sub getGrade
{

if($iPercent > 80)
     {
        if($iPercent > 85)
         {
           $cGrade = 'A+';
         }

        else
         {
           $cGrade = 'A';
         }
      }
   else
     {

       if($iPercent > 60)
         {

            if($iPercent > 70)
            {
              $cGrade = 'B+';
            }
         else
            {
              $cGrade = 'B';
            }
         }

       else
        {

           if($iPercent > 50)
            {
              $cGrade = 'C';
            }

          else
            {
              $cGrade = 'D';
            }
        }
    }
return $cGrade;
}

1;

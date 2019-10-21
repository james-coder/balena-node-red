#!/usr/bin/perl

use strict;
use warnings;

use JSON::XS;
use Collect::Data;

#$VAR1 = \{
#            'Offset' => 0,
#            'Message' => {
#                           'TamperEnc' => 1,
#                           'ID' => 57202719,
#                           'Consumption' => 3967858,
#                           'Type' => 7,
#                           'TamperPhy' => 1,
#                           'ChecksumVal' => 33954
#                         },
#            'Time' => '2015-09-29T18:16:10.02182213-06:00',
#            'Length' => 35840
#          };

my $schema = Collect::Data->connect('dbi:mysql:database=data;host=192.168.99.201', 'root', '26815926535');
my $rtlamr = $schema->resultset('Rtlamr');

while (my $line = <>) {
  chomp $line;
  if (!($line =~ /^{/)) { next; }
  my $row = decode_json($line);
  my $time = $row->{Time};
  $time =~ s/T/ /;
  $time =~ s/Z//;
  $rtlamr->create({
    time => $time,
    offset => $row->{Offset},
    id => $row->{Message}->{ID},
    type => $row->{Message}->{Type},
    tamperphy => $row->{Message}->{TamperPhy},
    tamperenc => $row->{Message}->{TamperEnc},
    consumption => $row->{Message}->{Consumption} / 100,
    collection_device => 'james_home',
  })
}

#$rtlamr->populate(\@rows);

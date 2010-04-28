#!/usr/bin/perl
use strict;
use XML::Simple qw/XMLin/;
use LWP::Simple qw/get/;

my $xml = XMLin(get("http://api.sr.se/api/channels/channels.aspx"));
$xml = $xml->{channel};

foreach my $chan(keys %{$xml}) {
  my $id = $xml->{$chan}->{id};
  #if($chan =~ /\s+/) {
  #  $chan =~ s/\s+//; 
  #}
  print "$id,$chan\n";
}

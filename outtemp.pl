#!/usr/bin/perl
use LWP::UserAgent;
 
my $dir = '/rrdtool';
my $metar_url = 'http://weather.noaa.gov/pub/data/observations/metar/stations/KSTL.TXT';
my $is_celsius = 0; #set to 1 if using Celsius
 
my $ua = new LWP::UserAgent;
$ua->timeout(120);
my $request = new HTTP::Request('GET', $metar_url);
my $response = $ua->request($request);
my $metar= $response->content();
 
$metar =~ /([\s|M])(\d{2})\//g;
$outtemp = ($1 eq 'M') ? $2 * -1 : $2; #'M' in a METAR report signifies below 0 temps
$outtemp = ($is_celsius) ? $outtemp + 0 : ($outtemp * 9/5) + 32;
 
#print "Outside temp: $outtemp\n";

$rrd = `/usr/bin/rrdtool update $dir/outtemp.rrd N:$outtemp`;

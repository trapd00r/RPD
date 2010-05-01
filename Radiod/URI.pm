# vim: set ft=perl nowrap textwidth=100:
package Radiod::URI;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(geturi);
our %channels = (
  'p1'  => {
    'P1'                =>  'http://sverigesradio.se/topsy/direkt/132-hi.mp3',
  },
  'p2'  => {
    'P2'                =>  'http://sverigesradio.se/topsy/direkt/163-hi.mp3',
  },
  'p3'  => {
    'P3'                =>  'http://sverigesradio.se/topsy/direkt/164-hi.mp3',
  },
  'p4'  => {
    'P4 Radiosporten'   =>  'http://sverigesradio.se/topsy/direkt/179-hi.mp3',
  },
  'p2m' => {
    'P2 Musik'          =>  'http://sverigesradio.se/topsy/direkt/2562-hi.mp3',
  },
  'dg'  => {
    'P3 Din Gata'       =>  'http://sverigesradio.se/topsy/direkt/2576-hi.mp3',
  },
  'star'  => {
    'P3 Star'           => 'http://sverigesradio.se/topsy/direkt/1607-hi.mp3',
  },
  'street'  => {
    'P3 Street'         => 'http://sverigesradio.se/topsy/direkt/1606-hi.mp3',
  },
  'svea'  => {
    'P3 Svea'           => 'http://sverigesradio.se/topsy/direkt/1605-hi.mp3',
  },
  'm'  => {
    'Metropol'          => 'http://sverigesradio.se/topsy/direkt/2842-hi.mp3',
  },
  'r' => {
    'Rockster'          => 'http://sverigesradio.se/topsy/direkt/1604-hi.mp3',
  },
  'psy' => {
    'DI Psy/Goa'        => 'http://listen.di.fm/public3/goapsy.pls',
  },
  'dnb' => {
    'DI Drum & Bass'    => 'http://www.di.fm/images/live/blue_96k.gif',
  },
  'hc'  => {
    'DI Hardcore'       => 'http://listen.di.fm/public3/hardcore.pls',
  },
  'hs'  => {
    'DI Hardstyle'      => 'http://listen.di.fm/public3/hardstyle.pls',
  },
  'gb'  => {
    'DI Gabber'         => 'http://listen.di.fm/public3/gabber.pls',
  },
  'psyc' => {
    'DI Psychill'       => 'http://listen.di.fm/public3/psychill.pls',
  },
  'dub'  => {
    'DI Dubstep'        => 'http://listen.di.fm/public3/dubstep.pls',
  },
  'psy2' => {
    'Schizoid Psy'      => 'http://schizoid.in/schizoid-psy.pls',
  },
  'psy3' => {
    'Psyradio Prog'     => 'http://streamer.psyradio.org:8010/listen.pls',
  },
  'psy4' => {
    'Psyradio Full-On'  => 'http://streamer.psyradio.org:8030/listen.pls',
  },
  'psy5' => {
    'Chronomanova Psy'  => 'http://85.25.86.69:8000/listen.pls',
  },
  'psy6' => {
    'Philosomatika Psy' => 'http://yp.shoutcast.com/sbin/tunein-station.pls?id=5628',
  },
  'psy7' => {
    'NTR Psy'           => 'http://streaming.radionomy.com:8000/New-Trance-Radio.m3u&t=.pls',
  },
  'psy8' => {
    'Schizoid Psychill' => 'http://schizoid.in:8000/chill.m3u&t=.pls',
  },
  
);

sub geturi {
  my $chname = shift;
  my @chosen = ();
  for my $cname(keys %channels) {
    for my $url(keys(%{$channels{$cname}})) {
      push(@chosen, $channels{$chname}{$url});
    }
  }
  return @chosen;
}


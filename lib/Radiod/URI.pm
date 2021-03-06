package Radiod::URI;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(geturi listchans getchname);

our %channels = (
  p1        => {
    name => 'Sveriges Radio P1',
    uri  => 'http://sverigesradio.se/topsy/direkt/132-hi.mp3',
  },
  p2        => {
    name => 'Sveriges Radio P2',
    uri  => 'http://sverigesradio.se/topsy/direkt/163-hi.mp3',
  },
  p3        => {
    name => 'Sveriges Radio P3',
    uri  => 'http://sverigesradio.se/topsy/direkt/164-hi.mp3',
  },
  p4        => {
    name => 'Sveriges Radio P4',
    uri  => 'http://sverigesradio.se/topsy/direkt/179-hi.mp3',
  },
  p2musik   => {
    name => 'Sveriges Radio P2 Musik',
    uri  => 'http://sverigesradio.se/topsy/direkt/2562-hi.mp3',
  },
  dingata   => {
    name => 'Din Gata 100.6',
    uri  => 'http://sverigesradio.se/topsy/direkt/2576-hi.mp3',
  },
  star      => { 
    name => 'Sveriges Radio P3 Star',
    uri  => 'http://sverigesradio.se/topsy/direkt/1607-hi.mp3',
  },
  street    => {
    name => 'Sveriges Radio P3 Street',
    uri  => 'http://sverigesradio.se/topsy/direkt/1606-hi.mp3',
  },
  svea      => {
    name => 'Sveriges Radio P3 Svea',
    uri  => 'http://sverigesradio.se/topsy/direkt/1605-hi.mp3',
  },
  metropol  => {
    name => 'Sveriges Radio Metropol',
    uri  => 'http://sverigesradio.se/topsy/direkt/1605-hi.mp3',
  },
  rockster  => {
    name => 'Sveriges Radio Rockster',
    uri  => 'http://sverigesradio.se/topsy/direkt/1604-hi.mp3',
  },
  psy       => {
    name => 'Digitally Imported - Psychedelic',
    uri  => 'http://listen.di.fm/public3/goapsy.pls',
  },
  dnb       => {
    name => 'Digitally Imported - Drum and Bass',
    uri  => 'http://listen.di.fm/public3/drumandbass.pls',
  },
  hardcore  => {
    name => 'Digitally Imported - Hardcore',
    uri  => 'http://listen.di.fm/public3/hardcore.pls',
  },
  hardstyle => {
    name => 'Digitally Imported - Hardstyle',
    uri  => 'http://listen.di.fm/public3/hardstyle.pls',
  },
  gabber    => {
    name => 'Digitally Imported - Gabber',
    uri    => 'http://listen.di.fm/public3/gabber.pls',
  },
  psychill  => {
    name => 'Digitally Imported - Psychill',
    uri  => 'http://listen.di.fm/public3/psychill.pls',
  },
  dubstep   => {
    name => 'Digitally Imported - Dubstep',
    uri  => 'http://listen.di.fm/pulic3/dubstep.pls',
  },
  psy2       => {
    name => 'Schizoid - Psychedelic',
    uri  => 'http://schizoid.in/schizoid-psy.pls',
  },
  psy3       => {
    name => 'Psyradio - Progressive',
    uri  => 'http://streamer.psyradio.org:8010/listen.pls',
  },
  psy4       => {
    name => 'Psyradio Full-On',
    uri  => 'http://streamer.psyradio.org:8030/listen.pls',
  },
  psy5       => {
    name => 'Chromomanova - Psychedelic',
    uri  => 'http://85.25.86.69:8000/listen.pls',
  },
  psy6       => {
    name => 'Philosomatika - Psychedelic',
    uri  => 'http://yp.shoutcast.com/sbin/tunein-station.pls?id=5628',
  },
  kohina     => {
    name => 'Kohina - Chiptunes',
    uri  => 'http://www.kohina.com/kohinasolanum.m3u',
  },
  keygen     => {
    name => 'Keygen.fm',
    uri  => 'http://stream.keygen-fm.ru:8000/listen.pls',
  },
  sega       => {
    name => 'Radio SEGA',
    uri  => 'http://83.170.109.107:8000/listen.pls',
  },
  rainwave   => {
    name => 'Rainwave - Videogame Music',
    uri  => 'http://stream.gameowls.com:8000/rainwave.ogg',
  },
  gabber2    => {
    name => 'Hardcast Gabber',
    uri  =>'http://www.shoutcast.com/sbin/tunein-station.pls?id=1390',
  },
  gabber3    => {
    name => 'Rotterdam Terror (192kbps)',
    uri  => 'http://www.shoutcast.com/sbin/tunein-station.pls?id=784307',
  },
  moh  => {
    name => 'Masters of Hardcore',
    uri  => 'http://www.hardcoreradio.nl/hr.m3u',
  },
  hardstyle2 => {
    name => 'Hard.fm Hardstyle (192kbps)',
    uri  => 'http://files.hard.fm/192.pls',
  },
  hardstyle3 => {
    name => 'Blackout Hardstyle (320kbps)',
    uri  =>'http://yourno1hitradio.eu:8000/listen.pls',
  },
  '90'      => {
    name => "Hits from the 90's",
    uri  => 'http://www.shoutcast.com/sbin/tunein-station.pls?id=4384&t=.pls',
  },
  dnb2    => {
    name => 'Drum and Bass Radio',
    uri  => 'http://www.dnbradio.com/hi.m3u',
  },
  cvgm    => {
    name => 'cvgm.net - Video Game and Demo Music',
    uri  => 'http://de.cvgm.net/cvgm128.mp3',
  },
);

sub geturi {
  my $chname = shift;
  return undef unless exists $channels{$chname};
  return $channels{$chname}->{uri};
}

sub getchname {
  my $chname = shift;
  return $channels{$chname}->{name};
}

sub listchans { #FIXME
  my %hash;
  for my $chname(sort(keys(%channels))) {
    $hash{$channels{$chname}{name}} = $chname;
  }
    for my $key(sort(keys(%hash))) {
      printf("%-40s %0s\n",
        $key, $hash{$key});
  }
}

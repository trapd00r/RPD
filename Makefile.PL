#!/usr/bin/perl
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'radiod',
    DISTNAME => 'radiod',
    PM => {
      'Radiod/URI.pm'  => '/usr/lib/perl5/vendor_perl/Radiod/URI.pm',
    },
#    VERSION_FROM => 'Radiod/URI.pm',
    ABSTRACT => 'Daemon and client for playing radio streams',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['radiod','radioc','srnp'],
    LICENSE => "GPLv2",
    MIN_PERL_VERSION => 5.000,
    PREREQ_PM => {
        'Radiod::URI'  => 0,
        'LWP::Simple'  => 0,
        'XML::Simple'  => 0,
        'Proc::Daemon' => 0,
    },
);



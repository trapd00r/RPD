#!/usr/bin/perl
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'rpd',
    DISTNAME => 'rpd',
#    PM => {
#      'Radiod/URI.pm'  => '/usr/lib/perl5/site_perl/Radiod/URI.pm',
#    },
#    VERSION_FROM => 'Radiod/URI.pm',
    PMLIBDIRS => ['lib'],
    ABSTRACT => 'Daemon and client for playing radio streams',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['rpd','rpc'],
    LICENSE => "GPLv2",
    MIN_PERL_VERSION => 5.000,
    PREREQ_PM => {
        'Working::Daemon' => 0,
    },
);



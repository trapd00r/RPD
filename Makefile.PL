#!/usr/bin/perl
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'radiod',
    DISTNAME => 'radiod',
#    PM => {
#      'Radiod/URI.pm'  => '/usr/lib/perl5/site_perl/Radiod/URI.pm',
#    },
#    VERSION_FROM => 'Radiod/URI.pm',
    PMLIBDIRS => ['lib'],
    ABSTRACT => 'Daemon and client for playing radio streams',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['radiod','radioc','srnp'],
    LICENSE => "GPLv2",
    MIN_PERL_VERSION => 5.000,
    PREREQ_PM => {
        'LWP::Simple'  => 0,
        'XML::Simple'  => 0,
        'Proc::Daemon' => 0,
    },
);



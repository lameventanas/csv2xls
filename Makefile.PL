#!/usr/bin/perl

use ExtUtils::MakeMaker;
use strict;
use warnings;

require 5.008002;

my %deps = (
    'Excel::Writer::XLSX'  => 1.14,
    'Text::CSV::Separator' => 0.20
);

my %resources = (
    homepage   => 'https://github.com/lameventanas/csv2xls',
    repository => 'https://github.com/lameventanas/csv2xls',
    bugtracker => 'https://github.com/lameventanas/csv2xls/issues',
);

my %params = (
    AUTHOR        => 'Alan Mizrahi, lameventanas at gmail dot com',
    ABSTRACT_FROM => 'bin/csv2xls',
    VERSION_FROM  => 'bin/csv2xls',
    NAME          => 'csv2xls',
    NEEDS_LINKING => 0,
    PREREQ_PM     => \%deps,
    EXE_FILES     => [ 'bin/csv2xls' ],
    test          => { TESTS => 't/*.t' },
    dist          => {
        TAR      => 'gtar',
        COMPRESS => 'gzip --best',
        SUFFIX   => 'gz'
    },
);

if ( $ExtUtils::MakeMaker::VERSION ge '6.46' ) {
    $params{META_MERGE} = { resources => \%resources };
}

WriteMakefile( %params );

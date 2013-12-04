use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::Pastebin::PastebinCom::API',
    license             => 'Artistic_2_0',
    dist_author         => q{Zoffix Znet <zoffix@cpan.org>},
    dist_version_from   => 'lib/WWW/Pastebin/PastebinCom/API.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                  => 0,
        'LWP::UserAgent'        => 0,
        'HTTP::Cookies'         => 0,
        'Class::Data::Accessor' => 0,
        'overload'              => 0,
        perl                    => 5.006,
    },
    add_to_cleanup     => [ 'WWW-Pastebin-PastebinCom-API-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();

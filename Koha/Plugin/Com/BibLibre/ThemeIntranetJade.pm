package Koha::Plugin::Com::BibLibre::ThemeIntranetJade;

use Modern::Perl;

use base qw(Koha::Plugins::Base);

use C4::Context;

our $VERSION = '1.0';

our $metadata = {
    name   => 'Theme Intranet Jade',
    author => 'BibLibre',
    description => 'A beautiful new theme for intranet',
    date_authored   => '2019-04-01',
    date_updated    => '2019-04-01',
    minimum_version => '17.1100000',
    maximum_version => undef,
    version         => $VERSION,
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);

    return $self;
}

sub intranet_head {
    my ( $self ) = @_;

    return q|
<style>
/* Jade Intranet Theme */

body {
    background-color : white;
}

</style>
|;
}

1;

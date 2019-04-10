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
/*
 * Jade Intranet Theme
 * Main background color #ffffff
 * Activ background color #689f38
 */

/* Main page big links */
ul.biglinks-list li a.icon_general {
    border: solid 2px #dbd8d8;
    border-radius: 0px;
    background-color: #ffffff;
}
ul.biglinks-list li a:hover.icon_general {
    background-color: #689f38;
    color: #eeeeee;
}

/* Header */
.gradient {
    display: inherit;
    background-image: none;
    border-bottom-width: 2px;
    border-bottom-color: grey;
    border-bottom-style: solid;
}
#searchheader, #header.navbar-default {
    background: #ffffff;
}

</style>
|;
}

1;

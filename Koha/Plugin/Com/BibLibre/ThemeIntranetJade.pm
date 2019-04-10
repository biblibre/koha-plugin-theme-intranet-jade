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
 * Second background color #eeeeee
 * Highlight background color #689f38
 */

/* Main page big links */
ul.biglinks-list li a.icon_general {
    border: solid 2px #dbd8d8;
    border-radius: 0px;
    background-color: #ffffff;
    background-image:url('/plugin/Koha/Plugin/Com/BibLibre/ThemeIntranetJade/staff-home-icons-sprite.png');
}
ul.biglinks-list li a:hover.icon_general {
    background-color: #689f38;
    color: #eeeeee;
}

/* Copy from koha-tmpl/intranet-tmpl/prog/css/mainpage.css : */
/* Classes used for each individual module link */
ul.biglinks-list li a.icon_circulation {background-position:5px 3px;}
ul.biglinks-list li a.icon_patrons {background-position:5px -89px;}
ul.biglinks-list li a.icon_search {background-position:5px -181px;}
ul.biglinks-list li a.icon_lists {background-position:5px -273px;}
ul.biglinks-list li a.icon_cataloging {background-position:5px -365px;}
ul.biglinks-list li a.icon_authorities {background-position:5px -457px;}

ul.biglinks-list li a.icon_serials {background-position:5px -549px;}
ul.biglinks-list li a.icon_acquisitions {background-position:5px -641px;}
ul.biglinks-list li a.icon_reports {background-position:5px -733px;}
ul.biglinks-list li a.icon_administration {background-position:5px -825px;}
ul.biglinks-list li a.icon_tools {background-position:5px -917px;}
ul.biglinks-list li a.icon_koha {background-position:5px -1008px;}
ul.biglinks-list li a.icon_course_reserves {background-position:5px -1100px;}

/* Classes used for each individual module link on hover*/
ul.biglinks-list li a:hover.icon_circulation {background-position:5px -43px;}
ul.biglinks-list li a:hover.icon_patrons {background-position:5px -135px;}
ul.biglinks-list li a:hover.icon_search {background-position:5px -227px;}
ul.biglinks-list li a:hover.icon_lists {background-position:5px -319px;}
ul.biglinks-list li a:hover.icon_cataloging {background-position:5px -411px;}
ul.biglinks-list li a:hover.icon_authorities {background-position:5px -503px;}

ul.biglinks-list li a:hover.icon_serials {background-position:5px -595px;}
ul.biglinks-list li a:hover.icon_acquisitions {background-position:5px -687px;}
ul.biglinks-list li a:hover.icon_reports {background-position:5px -779px;}
ul.biglinks-list li a:hover.icon_administration {background-position:5px -871px;}
ul.biglinks-list li a:hover.icon_tools {background-position:5px -963px;}
ul.biglinks-list li a:hover.icon_koha {background-position:5px -1054px;}
ul.biglinks-list li a:hover.icon_course_reserves {background-position:5px -1146px;}
/* ==== MODULE LINKS - End ==== */

/* Big logo */
#container-main {
    background-image:url('/plugin/Koha/Plugin/Com/BibLibre/ThemeIntranetJade/background_koha_logo.png');
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

/* Bread crumbs */
#breadcrumbs {
    background-color : #ffffff;
}

/* Toolbar */
div#toolbar, .btn-toolbar {
    background-color : #eeeeee;
    border: 1px solid #000000;
}

/* Messages */
div.message, div.note {
    background: #eeeeee;
}

</style>
|;
}

1;

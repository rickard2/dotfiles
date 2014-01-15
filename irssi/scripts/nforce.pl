use strict;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '1.00';
%IRSSI = (
    authors     => 'Rickard Andersson',
    contact     => 'exz@slackware.se',
    name        => 'nforcescript. :p ',
    description => 'this must be' .
                   'the shittiest' .
                   'script for irssi',
    license     => 'ever created.',
);


sub nforce {
	my $nforce = exec("/home/exz/nforce.sh");
	sprintf("$nforce");
}


Irssi::statusbar_item_register('nforce', '[$0-]', 'nforce');
Irssi::statusbars_recreate_items();


#!/usr/bin/env perl

use strict;
use warnings;
use Getopt::Long::Descriptive;
use File::Find qw(find);

our $VERSION = '1.0.0';

my ($opt, $usage) = describe_options(
    "flowey %o <message>",
    [ "assets|a=s",  "Set assets directory.", { default => "/usr/share/flowey" } ],
    [ "character|c=s", "Set character.", { default => "ferris" } ],
    [ "version|v",   "Show version information" ],
    [ "help|h",  "Show this help message" ],
);

# Parse command line options
if ($opt->{help}) {
    print $usage;
    exit(0);
} elsif ($opt->{version}) {
    print "flowey version $VERSION\n";
    exit(0);
}
# random quotes from Undertale
# Source: https://undertale.fandom.com/wiki/Undertale_Wiki
my @rand_msg = (
    "It's a beautiful day outside. Birds are singing, flowers are blooming...",
    "You feel your sins crawling on your back.",
    "Determination fills your soul.",
    "Flowey’s smile is never just a smile.",
    "Sans teleported again… or was it just a shortcut?",
    "Papyrus is busy preparing his 'blue attack' spaghetti.",
    "You flirt with the ghost. It doesn't seem to understand, but appreciates the effort.",
    "Alphys is watching you from behind the wall again.",
    "You hug the goat mom. She smells like cinnamon and butterscotch.",
    "Undyne spears your confidence in half, then teaches you how to stand up again.",
    "Mettaton’s ratings just went up!",
    "Asgore quietly tends to his flowers, unaware of your presence.",
    "The save point sparkles with a strange energy.",
    "You tried to pet the lesser dog. It gets closer.",
    "You spared the monster. It doesn’t forget your kindness.",
    "The music suddenly stops. Something is coming.",
    "You equip the tutu. It's surprisingly comfortable.",
    "Frisk doesn't talk. But their eyes say enough.",
    "You feel strangely nostalgic near the ruins.",
    "The timeline trembles slightly.",
    "Sans’ eye flickers blue and yellow. You should be very afraid.",
    "You gave Monster Kid a high five. He stumbles with joy.",
    "Toriel offers you tea. You don't have the heart to refuse.",
    "Gaster whispers from the void, but no one hears.",
    "You sleep in Snowdin. It’s peaceful. For now.",
    "The echo flower repeats what it heard: ‘stay determined.’",
    "You dodge the bullets… barely.",
    "Your soul glows red, pulsing like a heartbeat.",
    "Someone is watching you from the shadows.",
    "You spare him, even though he wouldn’t have spared you.",
);

# Check if the assets directory exists
if (!-d $opt->assets) {
    my $dir = $opt->assets;
    die("Assets directory '$dir' does not exist.");
}
our $path = $opt->assets;

# Message from command line arguments or random selection
my $msg;
if (@ARGV) {
    $msg = "@ARGV";
} else {
    $msg = $rand_msg[rand @rand_msg];
}

# Find the character file in the assets directory
# It searches for a file named "<character>.flowey" or just "<character>"
# and sets the variable $meta_file to its path.
my $meta_file;
find(
    sub {
        if ($_ eq $opt->character . ".flowey" or $_ eq $opt->character) {
            $meta_file = "$File::Find::name";
            $File::Find::prune = 1;
        }
    },
    $path
);

die("Character file not found in '$path'") unless $meta_file;
if (!-f $meta_file) {
    die("Character file '$meta_file' does not exist.");
}

# === MAIN LOGIC ===
pretty_print($msg);
parse_section($meta_file, "data");

# === SUBROUTINES ===
# subroutine to pretty print a message
sub pretty_print {
    my $text = shift;

    if (defined $text) {
        my $width = length($text) + 2;

        print " " . "_" x $width . "\n";
        print "|" . " $text " . "|\n";
        print "|" . "_" x $width . "|\n";
    }
}

# subroutine to parse a section from a file
# It takes the file name and the section name as parameters
# It prints the content of the section to STDOUT
sub parse_section {
    my @params = @_;

    return 0 if @params < 2;

    open my $fh, '<', $params[0] or die "Could not open '$params[0]': $!";

    my $in_section = 0;
    while (my $line = <$fh>) {
        if ($line =~ /^\s*\w+\s*:\s*$/) {
            if ($in_section == 1) {
                $in_section = 0;
            }
        }

        if ($in_section == 1) {
            print("$line");
        }

        if (lc($line) =~ /^\s*\Q$params[1]\E\s*:\s*$/) {
            if ($in_section == 1) {
                next;
            }
            $in_section = 1;
        }
    }

    close $fh;
}
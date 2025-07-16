#!/usr/bin/env perl

# flowey.pl - A simple character viewer for Undertale characters
# This script allows you to view character files in the Flowey format.
# It supports various command line options to customize the behavior.
# It can generate new character files, list available characters, and display random messages.

# TODO:
#   - Implement character viewing functionality.
#   - Rewrite pretty_print to make better formatting.
#   - Add more character files to the assets directory.

use strict;
use warnings;
use Getopt::Long::Descriptive;
use File::Find qw(find);

our $VERSION = '1.0.0';

my ($opt, $usage) = describe_options(
    "flowey %o <message>",
    [ "assets|a=s",    "Set assets directory.", { default => "/usr/share/flowey" } ],
    [ "character|c=s", "Set character." ],
    [ "generate|g",    "Generate a new character file." ],
    [ "quiet|q",       "Run quietly." ],
    [ "list|l",        "List available characters." ],
    [ "random|r",      "Select random character." ],
    [ "version|v",     "Show version information." ],
    [ "help|h",        "Show this help message." ],
);

# Parse command line options
if ($opt->{help}) {
    print $usage;
    exit(0);
} elsif ($opt->{version}) {
    print "flowey version $VERSION\n";
    exit(0);
} elsif ($opt->{generate}) {
    use File::Which qw(which);

    my $chafa = which('chafa');
    if (!$chafa) {
        die("'chafa' is required to generate character files. Please install it.");
    }

    my @goodbyes = (
        "You're gonna carry that weight.",
        "Stay determined!",
        "See you in another timeline...",
        "Don't forget to SAVE your progress.",
        "This is the end of your journey, for now.",
        "Keep your friends close, and your soul closer.",
        "Your story is far from over.",
    );

    $SIG{INT} = sub {
        my $msg = $goodbyes[ int(rand(@goodbyes)) ];
        print "\n$msg\n";
        exit(0);
    };

    my $image_path = '';
    my $out_file = '';
    my $author = 'lazypwny751';
    print "Welcome to Flowey character generator!\n";
    print "You can generate a new character file by providing the image path, output file, and author.\n";
    print "Press Ctrl+C to exit at any time.\n\n";
    while (1) {
        print "flowey image path> ";
        chomp($image_path = <STDIN>);
        if (-f $image_path) {
            print "> $image_path\n";
        } else {
            print "- Image file does not exist. Please try again.\n";
            next;
        }

        print "flowey output file> ";
        chomp($out_file = <STDIN>);
        if ($out_file eq '') {
            print "- Output file cannot be empty. Please try again.\n";
            next;
        } else {
            if ($out_file !~ /\.flowey$/) {
                $out_file .= '.flowey';
            }
            print "> $out_file\n";
        }

        print "flowey author (default: $author)> ";
        chomp(my $input = <STDIN>);
        $author = $input if $input ne '';
        print "> $author\n";

        # Create the character file
        print "Creating character file...\n";
    }
    exit(0);
} elsif ($opt->{list}) {
    my @flowies;
    find(
        sub {
            return unless -f $_;
            return unless /\.flowey$/;
            push @flowies, $File::Find::name;
        },
        $opt->assets
    );

    if (@flowies) {
        print "Available characters:\n";
        foreach my $flowey (@flowies) {
            (my $name = $flowey) =~ s{.*/}{};
            $name =~ s{\.flowey$}{};
            print "- $name\n";
        }
    } else {
        print "No characters found in '$opt->{assets}'.\n";
    }
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
    chomp($msg = "@ARGV");
} elsif (!-t STDIN) {
    local $/; 
    $msg = <STDIN>;
    chomp $msg if defined $msg;
    $msg =~ s/^\s+|\s+$//g;
} else {
    $msg = $rand_msg[ int(rand @rand_msg) ];
}

# If the message is empty, set a default message
# This is used when no message is provided via command line or stdin.
if ($msg eq '') {
    $msg = "You feel a strange presence...";
}

# Find the character file in the assets directory
# It searches for a file named "<character>.flowey" or just "<character>"
# and sets the variable $meta_file to its path.
my $meta_file;
my $_charEq = $opt->character || '';
if ($opt->random or $_charEq eq '') {
    my @candidates;

    find(
        sub {
            return unless -f $_;
            return unless /\.flowey$/;
            push @candidates, $File::Find::name;
        },
        $path
    );

    if (@candidates) {
        $meta_file = $candidates[rand @candidates];
    } else {
        die("No character files found in '$path'.");
    }
} else {
    find(
        sub {
            if ($_ eq $opt->character . ".flowey" or $_ eq $opt->character) {
                $meta_file = "$File::Find::name";
                $File::Find::prune = 1;
            }
        },
        $path
    );
}

die("Character file not found in '$path'") unless $meta_file;
if (!-f $meta_file) {
    die("Character file '$meta_file' does not exist.");
}

# === MAIN LOGIC ===
if (!$opt->quiet) {
    pretty_print($msg);
}
parse_section($meta_file, "data");

# === SUBROUTINES ===
# subroutine to pretty print a message
sub pretty_print {
    # Need to improve this function to make it more visually appealing.
    # Currently, it just prints the message in a box.
    my $text = shift;
    return unless defined $text;

    my $width = length($text) + 2;

    print " " . "_" x $width . "\n";
    print "|" . " $text " . "\|\n";
    print "\|" . "_" x $width . "|\n";
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
#!/usr/bin/env perl

use Getopt::Long::Descriptive;

my ($opt, $usage) = describe_options(
    "flowey %o <message>",
    [ 'evil|e',  "Enable evil mode" ],
    [ 'color|c=s', "Set color (red, yellow, green)", { default => 'yellow' } ],
    [ 'help|h',  "Show this help message" ],
);

print($usage) and exit if $opt->help;

print("Mode: evil\n") if $opt->evil;
print("Color: " . $opt->color . "\n");
print("Message: @ARGV\n");

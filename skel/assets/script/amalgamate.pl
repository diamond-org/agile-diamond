#!/usr/bin/perl

# This program takes the combination of several Markdown files,
# extracts the YAML title metadata, and formats the title as Markdown
# so it can be rendered inline as part of a Table of Contents.

use strict;
use warnings;

my $file = $ARGV[0];

my $document = do {
    local $/ = undef;
    open my $fh, "<", $file
        or die "could not open $file: $!";
    <$fh>;
};

$document =~ s/^### (.*)$/#### $1/mg;
$document =~ s/^## (.*)$/### $1/mg;
$document =~ s/^# (.*)$/## $1/mg;
$document =~ s/^---$/\n/mg;
$document =~ s/^title: "(.*?)"$/# $1\n/mg;
$document =~ s/^author: .*$//mg;
$document =~ s/^date: .*$//mg;
$document =~ s/^back: .*$//mg;
$document =~ s/^classoption: .*$//mg;

print $document;

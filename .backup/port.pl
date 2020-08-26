#!/usr/local/bin/perl -w

opendir my $dir, "." or die("Failed\n");
@files = readdir($dir);

foreach $file (@files) {
    if (!(-d $file)) {
        if ($file =~ /^shrug(.*)$/) {
            my $newFilename = "gitlite$1";
            print "$file : $newFilename\n";
            open FILE, "<", $file or die("Failed\n"); 
            @lines = <$file>;
            foreach $line (@lines) {
                $lines =~ s/shrug/gitlite/ig;
            }
            # system("mv $file $newFilename");
        }
    }
}



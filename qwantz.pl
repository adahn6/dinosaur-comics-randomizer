#!/usr/bin/perl
#use LWP::Simple;

print "Content-type:text/html\r\n\r\n";

my $file = `cat boilerplate.html`;

my $index;
for($index = 1; $index < 7; $index++) {
	my $rand;
	my $original_url;
	$rand = int(rand(2283));
	$original_url = "http://www.qwantz.com/comics/comic2-".$rand.".png";

	$file =~ s/ORIGINALPANEL$index/$original_url/g;
	$file =~ s/INSERTPANEL$index/$rand/g;
}
print $file;

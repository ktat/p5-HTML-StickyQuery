
use Test::More tests => 1;
use HTML::StickyQuery;

my $s = HTML::StickyQuery->new(
			       href_regexp => '^(https?://example\.com)?/',
                               abs => 1,
			      );
$s->sticky(
	    file => './t/test8.html',
	    param => {SID => 'xxx'}
	   );
is($s->output,
   '<a href="http://www.example.com/"><a href="http://example.com/?SID=xxx">'. "\n");

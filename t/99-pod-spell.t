use strict;
use t::TestPlagger;

BEGIN {
    test_requires_command('spell');
    test_requires('Test::Spelling');
}

use FindBin;
use Test::Spelling;

add_authors_to_stopwords();
add_stopwords(<DATA>);
all_pod_files_spelling_ok('lib');

sub add_authors_to_stopwords {
    my $file = "$FindBin::Bin/../AUTHORS";
    open my $fh, "<", $file or die "$file: $!";
    while (<$fh>) {
        chomp;
        tr/\(\)//d;
        add_stopwords(split /\s+/);
    }
}

__DATA__
API
AdSense
Anil
AtomPP
AutoLink
Babelfish
BalloonNotify
Blog
BlogPet
BlogPet's
Bloglines
Bulkfeeds
CDTF
CONFIGS
CPAN
CSV
CVS
ControlPort
DWIM
DWIMs
DateTime
Deduped
Emoticon
EntryFullText
Estraier
FOAF
FULLTEXT
FeedBurner
FeedBurner's
FeedFlare
Firefox
Flickr
Frepa
FriendDiary
Gmail
GoogleTalk
HTML
HTTP
Hatena
HatenaDiary
HatenaGroup
HatenaRSS
IE
IKC
IMAP
IP
InternetExplorer
JS
JSON
JSONP
KinoSearch
Langworth's
Lilypond
Livedoor
Lucene
MSN
MSWin
MacOSX
Maildir
MeDoc
Mixi
Moritapo
MozRepl
NFC
NFD
NFKC
NFKD
Namaan
Namazu
NetNewsWire
Newsoku
Newsokuize
Nihongo
OPML
OSX
Odeo
PDF
POPFile
POSIX
PSP
PalmDoc
Plagger
PowerPoint
RDF
RFC
RPC
RSS
Rast
RecentComment
SCREENSHOT
SCREENSHOT
SQL
SSH
SSTP
STDOUT
SVN
Serializer
SmartFeed
SpamAssassin's
Splog
TODO
Tiarra
Trott
UA
URI
URL
URLBL
URLs
UTC
Wiki
XHTML
XML
XMLRPC
XOXO
XPath
XXX
YAML
YahooBlogSearch
YouTube
YouTube
aggregator
aggregators
al
ascii
atomfeed
authen
autodiscovery
backend
blog
blog's
blogroll
blogs
blosxom
bookmarked
bot
brian
callback
ch
ch
chRSSPermalink
co
com
conf
cronjob
csv
darwin
datetime
de
deduplicate
del
delimited
dir
embeddable
emoticons
en
euc
euc
exe
extendedPing
fallbacks
feedburner's
foaf
foafroll
foo
foobar
foy
freebsd
freenode
fulltext
gif
guid
hackish
hatena
href
html
iCal
iPod
iTunes
icio
ics
ini
init
inline
irc
ircbot
ized
ja
javascript
jp
json
jsonp
lang
lastBuildDate
linux
listsubs
livedoor
livedoor
livedoorClip
mailfrom
mailroute
mailto
medoc
metadata
microformats
mixi
mp
perlbal
permalink
permalinks
pingserver
pipermail
plagger
plagger
plagger's
playlog
plugins
pm
pubDate
pubDate
qpsmtpd
quickstart
rdf
rebless
referer
remixer
rsd
rss
rssad
searchable
serializer
shiftjis
sixapart
smartfeeds
smtp
src
std
strptime
stylesheet
svn
swf
tDiary
tagline
takahashi
takahashi
technorati
templatize
thingy
unsubscribe
url
urls
username
utf
varname
webbookmark
weblogUpdates
wget
win32
wosit
xml
xul
yaml
plaintext
Trackback
ccTLD
cc
asahi
ip
timezones
www
TZ
photocast
Fotolife
namespace
MyDiary


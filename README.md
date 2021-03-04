# WikiText-103 Formatter
Text to WikiText-103

## Suggested usage

+ Download a wiki dump from [here](https://dumps.wikimedia.org/backup-index-bydb.html "Wiki dumps")
+ Extract it with [this wikiextractor](https://github.com/dlt-rilmta/wikiextractor) fork\
For example:\
`python3 -m wikiextractor.WikiExtractor -b 1000M huwiki.xml -o extracted_huwiki`\
Hint: Use `-b` flag if you don't want to cut the dump to separated files.
+ Run:\
`./wikitext-103-formatter.sh extracted_huwiki/AA/wiki_00 huwikitext-103.txt`

## Credits
Thanks to [attardi](https://github.com/attardi) for the original [wikiextractor](https://github.com/attardi/wikiextractor)!

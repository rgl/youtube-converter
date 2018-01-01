all: po/youtube-converter.pot youtube-converter-locale/pt/LC_MESSAGES/youtube-converter.mo
.PHONY: all

po/youtube-converter.pot: youtube-converter.glade youtube-converter
	xgettext -o $@.glade.tmp.pot youtube-converter.glade
	xgettext -o $@.python.tmp.pot --language python youtube-converter
	msgcat -o $@ --sort-output $@.*.tmp.pot
	rm $@.*.tmp.pot

youtube-converter-locale/pt/LC_MESSAGES/youtube-converter.mo: po/pt.po
	mkdir -p $(shell dirname $@)
	msgfmt $< -o $@

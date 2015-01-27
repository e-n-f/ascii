all: charts ascii.ps

charts:
	( echo all: `ls *.code | sed 's/$$/.pic/'`; for i in *.code; do echo $$i.pic: $$i picify; echo '	./code2pic $$<'; done ) > makepic
	make -f makepic

ancient.pic: ibm-ancient ancient2pic
	./ancient2pic > ancient.pic

ascii.ps ascii.html: ascii.ms ancient.pic soelim/soelim
	./soelim/soelim -l ascii.ms | tbl | pic | groff tmac.s - > ascii.ps
	(echo "<html>"; soelim -l ascii.ms | tbl | pic | nroff -Tlatin1 tmac.s - ) | ./fixul > ascii.html

soelim/soelim: soelim/soelim.c
	(cd soelim; cc -o soelim soelim.c)

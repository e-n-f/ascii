.nr doublespace 0
.
.
.\" sets thickness back to default, moves to compensate for groffism
.ds fixthick \D't -1p'\h'1p'
.
.
.ds broken-bar \*[fixthick]\h'\\w!=!u/2u'\v'0.2m'\D'l 0 -.4m'\v'-0.2m'\D'l 0 -.4m'\v'0.8m'\h'\\w!=!u/2u'
.
.
.ds not-sign \*[fixthick]\v'-0.7m'\h'\\w!M!u/10u'\D'l \\w!M!u*8u/10u 0'\D'l 0 0.2m'\h'\\w!M!u/10u'\v'0.5m'
.ds squiggle \*[fixthick]\h'\\w!M!u/10u'\v'-0.6m'\D'~ \\w!M!u/4u -0.1m \\w!M!u/2u 0.2m \\w!M!u/4u -0.1m'\v'0.6m'\h'\\w!M!u/10u'
.
.
.ds tilde \*[fixthick]\h'\\w!n!u/10u'\v'-0.4m'\D'~ \\w!n!u/4u -0.3m \\w!n!u/2u 0.4m \\w!n!u/4u -0.3m'\v'0.6m'\h'\\w!n!u/10u'
.ds hat \*[fixthick]\h'\\w!n!u/10u'\v'-0.3m'\D'l \\w!n!u/2u -0.4m'\D'l \\w!n!u/2u 0.4m'\v'0.3m'\h'\\w!n!u/10u'
.ds acute \*[fixthick]\h'\\w!n!u/10u'\v'-0.4m'\D'l \\w!n!u -0.3m'\v'0.7m'\h'\\w!n!u/10u'
.ds grave \*[fixthick]\h'\\w!n!u/10u'\v'-0.7m'\D'l \\w!n!u 0.3m'\v'0.4m'\h'\\w!n!u/10u'
.ds umlaut \*[fixthick]\h'\\w!n!u/10u'\v'-0.7m'\D'c 0.1m'\h'\\w!n!u/2u'\D'c 0.1m'\v'0.7m'\h'\\w!n!u/10u'
.ds cedilla \*[fixthick]\v'-0.2m'\h'\\w!n!u/10u'\D'l 0 0.2m'\D'~ 0.1m 0.1m -0.1m 0.1m -0.1m -0.1m'\v'-0.1m'\h'0.1m'\h'\\w!n!u/10u'
.
.
.ds circleplus \*[fixthick]\h'\\w!n!u/10u'\v'-0.3m'\D'c 0.6m'\h'-0.6m'\D'l 0.6m 0'\h'-0.3m'\v'-0.3m'\D'l 0 0.6m'\h'0.3m'\h'\\w!n!u/10u'
.
.
.
.ds angle-tilde \*[fixthick]\h'\\w!\-!u/10u'\v'-0.1m'\D'l 0.1m -0.2m'\D'l \\w!\-!u 0'\D'l 0.1m -0.2m'\v'0.6m'\h'\\w!\-!u/10u'
.ds hammond-thing \*[fixthick]\h'\\w!M!u/10u'\v'-0.3m'\D'~ 0.4m -0.1m   0.1m -0.1m   -0.1m -0.1m  -0.1m 0.1m    0m 0.5m   -0.1m 0.1m   -0.1m -0.1m  0m -0.5m'\D'l -0.1m 0'\h'0.5m'\h'\\w!M!u/10u'\v'0.5m'
.
.
.
.
.de Fig
..
.de Line
.	br
.	if 1 \l'\\n(.lu-\\n(.iu.'
.	br
.	sp
..
.de Line
.	sp 2
..
.de Fignum
.	ps 9
.	if 1 \f(HBFigure \\n[Figure].\fH
.	nr Figure +1
..
.
.
.
.nr Reference 1
.de Ref
.	ie t \*{\c
.	el [\c
.
.	while !\(bs\\$1\(bs\(bs \{.
.
.		ie rDidref\\$1 \{.
.			nr Thisref \\n[Didref\\$1]
.		\}
.		el \{.
.			nr Didref\\$1 \\n[Reference]
.			nr Thisref \\n[Reference]
.			nr Reference +1
.		\}
.
.		ie \(bs\\$2\(bs\(bs \\n[Thisref]\c
.		el \\n[Thisref],\ \c
.
.		ds Ref\\n[Thisref] \\$1
.
.		shift
.
.	\}
.
.	ie t \*}
.	el ]
..
.
.
.
.if \n[doublespace] \{.
.	nr PS 12
.	nr VS 24
.	ps 12
.	vs 24
.\}
.nr indent 3n
.nr bigindent 5n
.nr PI \n[indent]
.nr Figure 1
.nr PD 0
.nr LL 6.5i
.
.
.
.
.TL
The Development of ASCII
.AU
Eric Fischer
.\" .AB
.\" The nearly universal use of the ASCII character set has played
.\" an extremely important role in making it possible to
.\" move programs and data between computers.
.\" This paper,
.\" which is based largely on the archived records of the X3.2 Subcommittee
.\" that designed ASCII,
.\" covers
.\" the need for a new, high quality, standard character code
.\" at the beginning of the 1960s,
.\" the series of proposals that led to the 1963 ASCII standard,
.\" the internationalization of the code,
.\" the resolution of the conflicts between ASCII and the needs of the PL/I
.\" programming language,
.\" and the emergence of the definitive ASCII standard in 1968.
.\" .AE
.if t .if '\n[doublespace]'0' .2C
.\" .SH
.\" Introduction
.\" .PP
.\" Computer users always have been, and probably always will be,
.\" plagued by the problem of incompatible data formats.
.\" Even in the worst cases, though, they can still generally count
.\" on being able to take a ``plain text'' file from one computer
.\" and use it on a different one, even when the two are
.\" incompatible in nearly every other way.
.SH
Early character codes
.PP
\('Emile Baudot designed the first telegraph
system that printed alphabetic characters from a constant-length binary code.
An earlier system, invented by David Hughes,
.\" .Ref munro
.\" name from Project Gutenberg reprint of telegraph book.  how to cite?
.\" first name also in that non-Murray telegraph tech article in J.IEE
was already in international use when Baudot began his work,\c
.Ref telegraph-1871
but its inefficient variable-length code
took 27 times as long to transmit the letter Z as the letter A.\c
.Ref baudot-1895
Baudot's original design, patented in 1874,
used six bits to encode each of 63 characters.\c
.Ref baudot-1874
By 1878
he had switched to a 5-bit code (Figure \n[Figure]a)
which borrowed from Hughes the use of two shift characters
to nearly double the 31 characters five bits could normally encode.\c
.Ref baudot-1879
.PP
In 1898,\c
.Ref murray-obit
.\" .Ref history-of-typewriters-murray-thing
Donald Murray, ``an Australian journalist, without prior practical
experience in telegraph work,''\c
.Ref vansize-1901
invented another 5-bit telegraph system.
Unlike Baudot's, his used a typewriter-like keyboard
(not a 5-key chorded keyboard) and printed on
ordinary sheets of paper (rather than a continuous paper strip).
His transmitter and receiver both used punched paper tape, so
Murray arranged his code to minimize wear on the punches by
giving the most
frequently used letters the codes that would require punching the
fewest number of holes.
An illustration in the 1901 paper on his system shows that
he must have arranged the digits
and punctuation to give each of these characters the same code as the
letter it was paired with on an unidentified
three-row, double-shift typewriter
that he evidently used as part of his prototype printer,
resulting in the code shown, to the extent it can be
determined, in Figure \n[Figure]c/\n[Figure]w.
.PP
By 1901, Murray was building his printer
around the Columbia Bar-Lock typewriter.
This was a seven-row machine with no shift keys,\c
.Ref barlock
so it did not encourage any particular pairing
of letters and figures and he could arrange the latter however he wanted.
By 1905, he had arranged them as
shown in Figure \n[Figure]d/\n[Figure]x.\c
.Ref murray-1905
He also switched from three shifts (lower case, upper case, and
figures) to two (upper case and figures) to make a code available
for a newline character,
the lack of which had been criticized in 1901.
In addition, he gave the letters J and Z new codes
so that the letter shift
would have the all-holes-punched code and could be punched over an error
to invisibly remove it.
By 1908 he made further changes to the locations of punctuation
(Figure \n[Figure]e/\n[Figure]x)\c
.Ref crotch-1908
to make room for a new page feed control character
and to reserve seven positions for ``national use''
characters that would vary from country to country.\c
.Ref murray-1911
.PP
After Murray sold his U.\ S. patents to Western Union in 1912,\c
.Ref murray-sells-out
new American equipment retained the structure of the Murray
code but reassigned most of the punctuation,
as can be seen in
Figure \n[Figure]f/\n[Figure]y.\c
.Ref western-electric-1919 houghtaling
In England, where Murray remained involved in the development
of his system,\c
.Ref creed-murray
there were also changes to the punctuation\(emdifferent
changes than in America\(emand,
more significantly, the figures, letters, and space controls were replaced,
respectively,
by the figure space, erasure, and letter space characters
that Baudot had used
(Figure \n[Figure]g/\n[Figure]z).
.PP
Along with these two varieties of Murray-derived codes,
Baudot's 5-bit code remained in use, as did the Siemens code,
approved for international use in 1925,\c
.Ref cti-1925-1-192
which followed Murray's (1908) pairings of
figures with letters but assigned them codes optimized
for the fewest level transitions instead of the fewest punches.
At the December 18, 1924 meeting of the Institution of Electrical
Engineers, A. E. Thompson declared that ``a matter which requires
some consideration if the telegraphs are to be linked up on an
extensive scale is the establishment of a standard 5-unit code.
At present three or four are in use in Europe....''
Murray agreed that standardization was
``a matter which will have to receive
the attention of the telegraph administations in the near future.''\c
.Ref murray-1925
.SH
CCIT Alphabets No. 1 and 2
.PP
Two years later, the Comit\('e Consultatif
International des Communications T\('el\('egraphiques (CCIT) met
for the first time in Berlin in November, 1926.\c
.Ref ccit-1926
Among the many standards issues the committee considered
was the establishment of a uniform 5-bit code.
Delegate Stahl provided a lengthy review of the characteristics of
existing codes and proposed a new standard code based on
a recalculation of the frequency with which letters were used.
The French delegation objected that this was impossible because
the operators of the many existing Baudot installations could not
adopt a wholly new code.
The technical subcommittee concluded that indeed, any new standard
would have to be based on the existing Baudot code.
.PP
The British delegation expressed its preference for a code with
figure space
and letter space characters rather than separate figures, letters,
and space codes.
The delegation from the USSR preferred to separate the shifts
from the spaces because the Cyrillic alphabet
has too many letters to fit only in the letters case and requires
that five codes from the figures case be used for additional letters.
The Czechoslovakian delegation asked that the committee address
the long-neglected problem of how to encode accented letters.
F. G. Creed raised the possibility of
abandoning the traditional 5-bit code for a 6-bit standard, which
would eliminate most shifting and, with shifts,
make room for non-Roman letters.
.PP
The next meeting of the CCIT was in June, 1929, again in Berlin.\c
.Ref ccit-1929
In the documents prepared before the conference,
the French and Belgian delegations expressed their willingness
to give up Baudot's accented-E (\('E) character.
The Netherlands asked for a new ``ch'' character, but there
was no room for it.
The following punctuation marks were chosen as essential:
period (.), comma (,), question mark (?), dash (\-), apostrophe ('),
colon (:), parentheses (\fC(\fP and \fC)\fP), and fraction bar (/).
Holland asked for the percent sign (%) to be in the letters case.
The Netherlands wanted a special character (XXX) to separate whole
numbers from fractions.





Most of the differences evident in Figure \n[Figure] are probably
due to the split of the ``line'' control into separate carriage return and
line feed signals, which took up one more position that had
formerly been a printing character.
In England, the Creed equipment introduced around 1926\c
.Ref creed-murray
and adopted by the Post Office in 1928\c
.Ref easterling-collins
also rearranged the punctuation (differently, of course, than
the Americans had)
and furthermore reassigned the figures, letters, and space
controls to be figure space, erasure, and letter space, respectively.


The Western Electric and Western Union companies made further
changes to the code.
They separated Murray's carriage return code into independent 
carriage return and line feed signals, which displaced
the period (.) and plus (+) signs from their former position.
Merging these with the other figures caused further rearrangements.
A 1919 Western Electric publication shows the code that resulted
from this change (Figure \n[Figure]) and a related code (Figure \n[Figure])
that may represent an earlier stage of development.
.PP
Murray's code, without these most recent changes,
also remained in use,
as did Baudot's original code.
The 1925 International Telegraphic Conference
approved the international use of a fourth (Siemens)
5-bit code.\c
.Ref cti-1925-1-192
There was little reason to have so many incompatible codes,
so in 1926 the
International Consultative Committee for Telegraphic Communications
began to attempt to define a standard code that could be used
by every 5-bit system.\c
.Ref ccit-1926



To eliminate this needless incompatibility,
the
.I "Comit\('e Consultatif International des Communications T\('el\('egraphiques"
began in 1926 to attempt to create a standard 5-bit character code
that could be used on every system.



His original printer appears to have been built from a three-row
typewriter with two shift keys (one for capital letters,
the other for figures), an arrangement today seen only on toy typewriters.
With such a printer, figures would have had to share the same code as
the letters with which they shared a key,
resulting in the code shown in Figure \n[Figure].
.PP
By the beginning of 1901,\c
.Ref vansize-1901
Murray had begun using in his printer
the Bar-Lock typewriter, a seven-row machine with no shift keys at all.\c
.Ref barlock
This equipment would not have encouraged any particular association
between letters and figures, so he could have arranged the punctuation
and digits any way he wanted.
He chose the arrangement shown in Figure \n[Figure].




.PP
The portability of plain text is a direct result of the
early 1960s work by the
American Standards Association (ASA)
X3.2 Subcommittee on Coded Character Sets and Data Formats
to establish a standard character code
and the subsequent extension and internationalization of the code
by
the ASA's X3.2.4 Working Group,
Technical Committee 1 of the
European Computer Manufacturers Assocation (ECMA),
Technical Committee 97 of
the International Organization for Standardization (ISO),
and the
International Telegraph and Telephone Consultative Committee (CCITT)
Working Party on the New Alphabet.
.SH
The need for a standard
.PP
It was not always nearly so easy to move text from computer to computer.
In 1951, UNIVAC had been introduced as ``the first computer which can
handle both alphabetic and numerical data to reach full-scale operation.''\c
.Ref 1951-eckert
Others soon followed, each manufacturer\(emor, in the worst
cases, each model from
the same manufacturer\(emusing a different character code.
.PP
By 1955 the situation had already become chaotic enough for
H. R. J. Grosch to urge that ``if possible, we should
register common codes so that `a' will always be `a'
and `7' will always be `7,' or so that we can program
the translation.''\c
.Ref 1955-grosch
But
it was not until 1960 that the American Standards Association
and the International Organization for Standardization
formed committees (X3 and Technical Committee 97, repectively)
to attempt ``standardization of terminology, problem description,
programming languages, and communication characteristics of
processing devices, equipments, and systems.''\c
.Ref 1963-07-utman
.PP
The X3 committee divided its standardization tasks among seven
subcommittees:
Optical Character Recognition (X3.1),
Coded Character Sets and Data Formats (X3.2),
Data Transmission (X3.3),
Common Problem-Oriented Programming Language (X3.4),
Terminology and Glossary (X3.5),
Problem Description and Analysis (X3.6),
and Magnetic Character Recognition (X3.7).
The X3.2 subcommittee began meeting in the fall of 1960
and ``as one of its initial steps, undertook a review of coded
character sets currently in use.''\c
.Ref 1962-02-06-macon
.PP
The results, published as a pair of articles in the
\fICommunications of the ACM\fP,\c
.Ref 1960-12-bemer 1960-12-smith
showed that there were at least 54 binary and 32 punch card codes
then in use.
The intent of the survey,
X3.2 chairman Charles E. Macon wrote in 1962,
``was to determine if there existed a coded character set which
came suitably close to meeting the criteria so that it could be
proposed as the standard.''
But ``[e]ach of the existing codes was designed to
solve the need in a particular area and was unsatisfactory when
studied from a general information interchange point of view.''\c
.Ref 1962-02-06-macon
.SH
Early design work by X3.2
.PP
As a result, at the end of 1960
X3.2's focus changed from deciding which
existing code should be promoted as a standard
to designing a new code of its own.
The first stage of the design process was to determine which
characters should be part of the code,
and in December, 1960 subcommittee members prepared reports
on the characters needed for
engineering and science,
business,
programming languages,
mathematics,
punctuation,
and data and machine control.\c
.Ref 1962-05-25-bibliography
.PP
The characters to meet the needs of all these fields would together
number far more than 64, the maximum number of characters
possible with the six-bit encoding that was then standard on computers.
So the subcommittee's intent
at the beginning of 1961 was to
design ``a `major usage' subset of 64 characters...;
the 64th character would be an `escape' character to allow
escaping into other subsets of 63 useful characters,
such as a `mathematics subset,' `weather symbol subset,'
`control mode subset,' etc.''\c
.Ref 1961-01-24-reach
.\" The idea for the escape character came from an article
.\" published the previous year by Robert W. Bemer.\c
.\" .Ref 1960-02-bemer
.PP
Roy Reach, the Honeywell representative to X3.2, reported to his
colleagues that at the January 11-12, 1961 meeting of the subcommittee
``[t]here was good agreement on 47 of the 64
characters that should be members of the `major usage' subset.''\c
.Ref 1961-01-24-reach
The characters that were agreed upon were
the capital letters (A to Z), digits (0 to 9), decimal point
or period (.), minus sign or hyphen (\-),
left (\fC(\fP) and right (\fC)\fP) parentheses,
slash (/),
asterisk (*),
number sign (#),
comma (,),
percent sign (%),
space or blank,
and escape code.
.PP
This left seventeen spaces in the table unassigned,
and what to fill those with was ``the subject of considerable debate.''
Since there were no more characters that everyone could agree upon,
``[t]he members of X3-2 were asked to bring a proposed complete
64 character set to the next meeting\(emafter sufficient
independent study\(emtogether with a proposed collating sequence
for the characters.''
.PP
One such proposal, Reach's,
is shown in Figure \n[Figure].
Most of the characters it contains beyond those that were
unanimously agreed upon
are symbols found on the keyboard of any typewriter
or essential control codes needed for telecommunications.
A few are more obscure.
The ``Cr'' character means ``credit;''
this and its opposite ``Db'' appear as possible substitutions
for ``\-'' and ``+'' in another 1961 character code proposal.\c
.Ref 1961-01-ross
The up (\(ua) and down (\(da) arrow characters
are from the Algol programming language,
which, in its original 1958 version,\c
.Ref 1958-12-algol
used them for exponents
(2\(ua5\(da meant 2\*{5\*}).
.KF
.Fig
.so 1961-01-24-reach.pic
.Fignum
Roy Reach's proposal, January, 1961
.sp .5
The characters not unanimously supported for inclusion in the
``major usage subset'' are highlighted.
.sp .5
For ease of comparison,
all the character code tables in this paper
have been redrawn to match the format used in the published ASCII standards.
Individual characters are referred to by their column and row numbers:
for example, Reach's letter Q is in column 2, row 1, or position 2/1.
Position \fIx\fP/\fIy\fP corresponds to character number
16\fIx\fP\|+\|\fIy\fP, so the letter Q in this code is character number 33.
.Line
.KE
.SH
Compromise
.PP
If it had been difficult for the X3.2 subcommittee members
to agree on what individual characters should
be included in a standard code in January,
it must have been even harder for them to try to agree upon
a complete character code the following month.
The debate continued at the subcommittee's March 8-9 meeting, where
the representatives from the U. S. Army
and the Bell System (AT&T and Teletype)
were particularly vocal in defense of their respective choices.\c
.Ref 1961-03-14-reach
.PP
The other subcommittee members, though, proved more eager to
``[consider] the long-term effects of the code
on a more generalized basis.''
After ``considerable debate,''
they were able to formulate a compromise code (Figure \n[Figure])
``as a first approach, meeting almost unanimous agreement.''
Six characters were nevertheless left unassigned,
reflecting the subcommittee's continued inability to find a code that
was completely acceptable to everyone.
.KF
.Fig
.so 1961-03-14-proposal.pic
.Fignum
Compromise code, March, 1961
.sp .5
Characters that had not been in the proposed ``major usage subset''
are highlighted.
.Line
.KE
.PP
The compromise code had several features that would
continue to appear in later versions of the proposed standard code:
.sp .5
.IP \(bu
The alphabet appears in alphabetical order (something that was
not true of telegraphic codes)
and without any gaps between letters (IBM's BCD interchange code
interspersed punctuation marks between I and J and between R and S).
.IP \(bu
The code can be divided down the middle into
alphabet and number/figure subsets,
the same organization used in 5-bit (32-character) telegraph codes.
.IP \(bu
The digits at the top of column 1 can be combined with the
punctuation marks at the bottom of column 0
to form a 4-bit (16-character)
subset for numeric-only purposes.
.IP \(bu
The ``null'' character is position 0/0 (all bits clear,
corresponding to an idle communication line)
and the ``delete'' character is position 3/15 (all bits set,
as in a completely punched-out character on paper tape).
.IP \(bu
The characters immediately following the digits are relatively
unimportant ones, so they can be replaced by two additional digits
if needed (for pre-decimalized British currency).
.IP \(bu
The ``format effector'' control characters sort earlier in
than any printing characters, and (most) punctuation marks
sort earlier than the alphabet.
.sp .5
.PP
The compromise code was not the only code that could
meet these criteria.
In spite of the subcommittee members' apparent general happiness with it,
Robert Bemer, Howard Smith, and F. A. Williams
published a somewhat different proposal (Figure \n[Figure]) in
the May, 1961 issue of the
\fICommunications of the ACM\fP.\c
.Ref 1961-05-design
It was dated one week after the March, 1961 X3.2 meeting
and accompanied by an editor's note indicating that
``[t]he X3.2 Subcommittee is now examining this work in detail
and, in my opinion, will probably recommend as an American Standard
a code which is quite similar in principle to the one described
here although it may differ in some details.''
.PP
.KF
.Fig
.so 1961-03-bemer.dp.pic
.Fignum
Data processing proposal, March, 1961
.Line
.KE
This turned out to be premature, and a note was printed in the November
issue\c
.Ref 1961-11-macon
to make it clear to readers that the proposal was only one of
several considered by X3.2;
that X3.2's goal was a single code (not related but different data processing
and communications codes, which the published proposal had included);
and that the code then under consideration by X3.2 was not
a direct outgrowth of the proposal published by Bemer, Smith, and Williams.
.SH
A different direction
.PP
Indeed, by the time the note appeared in print,
the X3.2 subcommittee
was considering something quite different for its standard code
(with Bemer's enthusiastic approval but resistance from Smith.
How Williams felt is not recorded).\c
.Ref 1961-09-18-reach
The new proposed six-bit code (Figure \n[Figure]) included all
the printing characters from March's compromise code (and many more),
but its arrangement was taken instead from a
code that Hugh McGregor Ross had designed for the
.nr Fig1 \n[Figure]+1
Ferranti Orion and Atlas computers (Figure \n[Fig1])\c
.Ref 1961-01-ross
and which was under consideration as a potential standard
by the British Standards Institution.\c
.Ref 1960-12-bemer 1962-05-25-comparison 
.\" Ross's article credits Bemer with ``valuable contributions'' to his code,
.\" so it is little surprise that Bemer would approve of the new shape of ASCII.
.KF
.Fig
.so 1961-09-15-6bit.pic
.Fignum
Proposed six-bit code, September, 1961
.Line
.KE
.KF
.Fig
.so 1961-01-ross.pic
.Fignum
Ferranti character code, January, 1961
.Line
.KE
.PP
In the course of adapting Ross's code, though,
the X3.2 subcommittee had rearranged most of the punctuation marks
so that the
characters that would appear on the same
key of a keyboard were placed in adjacent columns of the code.
This meant that the Shift key could work by changing only
a single bit in the character code and
was almost certainly meant to satisfy Teletype's
``very vocal demands about the code,
based on the savings to them of a relay contact or coil''\c
.Ref 1961-03-14-reach
and to gain support from fans of the U. S. Army's Fieldata code,\c
.Ref 1960-10-luebbert 1959-luebbert
which matched the standard electric
typewriter layout to an even greater degree.
.PP
Bit-pairing, as this came to be called,\c
.Ref 1970-03-02-mackenzie
seems to have always been a peculiarly American approach to
character code design.
In another example, decades earlier, Western Union's
5-bit teletypewriter code paired
1 with Q, 2 with W, 3 with E, and so on across the top row of the QWERTY
keyboard,\c
.Ref 1960-10-smith
while British designers were content to build more elaborate
equipment to match a standard keyboard to existing codes
rather than designing new codes to fit the equipment.\c
.Ref 1925-04-thompson 1934-07-thomas
.PP
Whatever national character it may have reflected,
the rearranged punctuation
displaced the control characters that occupied the
top of the first column in Ross's original code.
This could happen only because the X3.2 members
had made the difficult decision that
``the number of characters needed in many data processing systems
approaches the limit of a six bit set without including many
of the control characters essential for communication purposes''
and that
the only way to include enough of both of these
was to expand to a seven-bit set, with room for 128
characters.
The six-bit character set was reduced to the status of a
``graphic subset... free of control characters''\c
.Ref 1962-05-25-report
and the seven-bit version illustrated
in Figure \n[Figure] was the real character code proposal.
.KF
.Fig
.so 1961-09-15-proposal.pic
.Fignum
Proposed seven-bit code, September, 1961
.Line
.KE
.PP
Just a few months earlier, it had seemed absurd that Teletype
would want X3.2 to include thirteen control characters\c
.Ref 1961-01-24-reach
when earlier codes provided at most five or six.\c
.Ref 1956-reference-data
The new code made room for thirty five.
At the same time, it was also able to accomodate
what was then considered
a huge number of printing characters,
including both upper and lower case alphabets and,
in what must have been an accident, two exclamation points.
.SH
Characters for programming
.PP
Many of the newly added printing characters were meant to make
the code more useful for writing programs.
The only programming language for which the September, 1961
code explicitly promised to provide all the necessary characters
was COBOL,\c
.Ref 1961-09-18-reach
but it also clearly attempted to provide\(emwith only
some success\(emfor
Algol 60.
.PP
Algol had been designed as a universal language,
associated with no particular brand or make of computer.\c
.Ref 1958-12-algol
Fortran, in contrast,
was originally
closely tied to the IBM computer
for which it was designed.
So while there was ``a separate key on the keypunching device
for each character used in FORTRAN statements'' and
``[k]eypunching a FORTRAN program [was] therefore
a process similar to typing the program,''\c
.Ref 1957-backus
programs written in Algol
contained characters unavailable on any contemporary hardware.
.PP
As mentioned above, Algol 58 used up (\(ua) and down (\(da)
arrows for exponentiation.
It also required characters for
relational (<, \(<=, =, \(>=, >, \(!=)
and logical (\*[not-sign], \(OR, \(AN, \(==)
operators,
square brackets ([ and ]) for subscripts,
a right arrow (\(->) for substitution,
and both upper and lower case alphabets.
The expectation of the committee that developed
the language was that each implementor would design an appropriate
``hardware representation'' and a set of rules for transliterating
programs from the ``reference language'' to what the hardware
could accept.
.PP
Some earlier languages\(emnotably IT\(emhad used similar
workarounds to compensate for inadequate character sets,
but in practice this tended to make otherwise readable programs
nearly incomprehensible.\c
.Ref 1969-it
To avoid the same fate for Algol programs,
Herbert Bright\c
.Ref 1959-05-bright
and Robert Bemer\c
.Ref 1959-09-bemer
published proposals in 1959 for character
codes that would allow programs in the Algol reference language
to be entered into a computer with only minimal transliteration.
Bright's code is reproduced in Figure \n[Figure];
Bemer's is structured specifically for punch cards and cannot
easily be represented in a compact table.
.KF
.Fig
.so 1959-05-bright.pic
.Fignum
Bright's Algol code, May, 1959
.Line
.KE
.PP
Later revisions to Algol reduced the number of special characters
used in the language.\c
.Ref 1960-05-algol
In June, 1959, Herbert Kanner
observed that the Algol 58 notation for exponentiation,
which ``may be said to treat exponentiation as a functional operation
rather than a binary arithmetic one... seems to represent
a step in the wrong direction''
and proposed ``the convention that \fIm\fP\(ua\fIn\fP denote
`\fIm\fP to the power \fIn\fP.'\|''\c
.Ref 1959-06-kanner
Algol 60 incorporated this change and eliminated the down arrow (\(da).
It also eliminated the \fBdo\fP statement and with it the right arrow
(\(->) character.
.PP
Because of these changes,
the members of X3.2 felt no need to include down or right
arrows in their September, 1961 character code proposal.
They did include the up arrow, which remained part of Algol,
and the left arrow (\(<-) which was the assignment symbol in IT.
They also included a set of relational operators (<, \(<=, =, \(>=, >, \(!=)
that would be useful for both programming and mathematics.
.SH
Close to a standard
.PP
The September, 1961 proposal was considered close enough to ideal for it to
``be recommended for a standard to X3 by early November''\c
.Ref 1961-09-21-clippinger
and
``assignments were given each member to provide more detailed,
finished write-ups of the various documents required to support
a reccommendation of a standard Character Code.''\c
.Ref 1961-09-18-reach
Except for William Leubbert, whose duties with the U. S. Army
were keeping him from participating,
the members of X3.2 voted unanimously in favor of the proposed
standard (on November 10), its appendices (on December 27),
and its accompanying expository remarks (on February 2, 1962).
Following these votes, the proposed code was sent to the
X3 committee for its ``earnest consideration and timely attention.''\c
.Ref 1962-02-06-macon
.PP
Before X3 could give the proposal its consideration and attention, though,
changes to it became necessary
when a delegation from X3.2 attended a joint meeting with
the European Computer Manufacturers Association (ECMA).
At that meeting,\c
.Ref 1962-03-booth
held in Rome,
Hugh McGregor Ross said that ECMA was still dedicated to the
idea of a six-bit code that included control characters.
To make it possible to translate between
six-bit and seven-bit codes,
the control characters in the seven-bit code
would have to be rearranged.
The X3.2 delegates ``agreed that ECMA had done a more
thorough job in the control area and that a rearrangement
of the controls in the 7-bit set is highly desireable.''
.
.
.
.
.
.
.
.
.
.
.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.ds cbi67 Honeywell Inc. X3.2 Standards Subcommittee Records, 1961-1969 (CBI 67), Charles Babbage Institute, University of Minnesota, Minneapolis
.ds cbi42 Herbert S. Bright Papers (CBI 42), Charles Babbage Institute, University of Minnesota, Minneapolis
.ds cbi81 Calvin N. Mooers Papers (CBI 81), Charles Babbage Institute, University of Minnesota, Minneapolis
.
.
.ds nmah310 Computer Standards Collection, Archives Center, National Museum of American History, Smithsonian Institution
.ds nmah205 Western Union Telegraph Collection, Archives Center, National Museum of American History, Smithsonian Institution
.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.
.ds Ref:houghtaling W. A. Houghtaling, ``The Multiplex Printing Telegraph System,'' \fIThe Electric Journal\fP, vol. 23, no. 9, September, 1926, pp. 455-461.
.ds Ref:cti-1925-1-192 \fIDocuments de la Conf\('er\('ence T\('el\('egraphique Internationale de Paris\fP, Bureau International de l'Union T\('el\('egraphique, 1925, p. 192.
.ds Ref:murray-obit H. H. H., ``Obituary Notices: Donald Murray, M.A.,'' \fIThe Journal of the Institution of Electrical Engineers\fP, vol, 92, part I, no. 60, December, 1945, p. 471.
.ds Ref:murray-1925 Donald Murray, ``Speeding Up the Telegraphs: A Forecast of the New Telegraphy,'' \fIThe Journal of the Institution of Electrical Engineers\fP, vol. 63, no. 339, March, 1925, pp. 245-280.
.ds Ref:munro J. Munro, \fIHeroes of the Telegraph\fP, Project Gutenberg reprint edition, July, 1997, chapter 10.
.ds Ref:telegraph-1871 \fIDocuments de la Conf\('erence T\('el\('egraphique Internationale de Rome\fP, Bureau International des Administrations T\('el\('egraphiques, 1872, p. 172.
.ds Ref:baudot-1895 E. Baudot, ``La t\('el\('egraphie multiple,'' \fIJournal T\('el\('egraphique\fP, vol. 19, no. 11, November, 1895, pp. 241-247; vol. 19, no. 12, December, 1895, pp. 265-270; vol. 20, no. 1, January, 1896, pp. 5-10; vol. 20, no. 2, February, 1896, pp. 28-33; vol. 20, no. 3, March, 1896, pp. 57-62.
.ds Ref:baudot-1874 E. Baudot, ``Des Appareils T\('el\('egraphiques \(`a Signaux Ind\('ependants,'' \fIAnnales T\('el\('egraphiques\fP, vol. 4, no. 1, January-February, 1877, pp. 20-32.
.ds Ref:baudot-1879 ``T\('el\('egraphe Multiple Imprimeur de M. Baudot,'' \fIAnnales T\('el\('egraphiques\fP, vol. 6, no. 4, July-August, 1879, pp. 354-389.
.ds Ref:history-of-typewriters-murray-thing Geo. Carl Mares, \fIThe History of the Typewriter\fP, Guilbert Pitman, 1909, pp. 306-308.
.ds Ref:barlock Wilfred A. Beeching, \fICentury of the Typewriter\fP, new edition, British Typewriter Museum Publishing, 1990, pp. 195-198.
.ds Ref:murray-1905 Donald Murray, ``Setting Type by Telegraph,'' \fIJournal of the Institution of Electrical Engineers\fP, vol. 34, 1904-1905, pp. 555-608.
.ds Ref:crotch-1908 Arthur Crotch, \fITelegraphic Systems and Other Notes\fP, Charles Griffin & Company, Ltd., 1908, pp. 151-170.
.ds Ref:murray-sells-out M. E. Montriol, ``Les Diff\('erents Syst\(`emes de T\('el\('egraphie Rapide,'' \fIAnnales des T\('el\('egraphes, Postes, et T\('el\('ephones\fP, vol. 8, no. 3, September, 1919, pp. 324-353.\"XXX
.ds Ref:vansize-1901 William B. Vansize, ``A New Page-Printing Telegraph,'' \fITransactions of the American Institute of Electrical Engineers\fP, vol. 18, 1902, pp. 7-43.
.ds Ref:creed-murray ``Description du Telegraphe Creed Syst\(`eme \(FoStart-Stop\(Fc,'' \fIAnnales des Postes, T\('el\('egraphes, et T\('el\('ephones\fP, vol. 15, no. 4, April, 1926, pp. 302-312.
.ds Ref:easterling-collins C. E. Easterling and J. H. Collins, ``The Tele\%printer No. 11,'' \fIThe Post Office Electrical Engineers' Journal\fP, vol. 46, part 2, July, 1953, pp. 53-58.
.ds Ref:murray-1911 Donald Murray, ``Practical Aspects of Printing Telegraphy,'' \fIJournal of the Institution of Electrical Engineers\fP, vol. 47, 1911, pp. 450-529.
.ds Ref:western-electric-1919 \fIPrinting Telegraphy: A Technical Description of the Western Electric Printing Telegraph Systems\fP, bulletin A-1, Western Electric Company Engineering Department, October, 1919.
.
.
.
.ds Ref:1963-07-utman R. E. Utman, ``Standards for Information Processing: A Progress Report,'' \fIComputers and Automation\fP, vol. 12, no. 7, July, 1963, pp. 8-15.
.ds Ref:1959-06-kanner Herbert Kanner, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 6, June, 1959, pp. 6-7.
.ds Ref:1959-05-bright H[erbert] S. Bright, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 5, May, 1959, pp. 6-9.
.ds Ref:1959-09-bemer R[obert] W. Bemer, ``A Proposal for a Generalized Card Code for 256 Characters,'' \fICommunications of the ACM\fP, vol. 2, no. 9, September, 1959, pp. 19-23.
.ds Ref:1962-03-booth J[ohn] B. Booth, report from the ECMA TC-1 and ASA X3.2 Joint Meeting, Rome, Italy, March 8-9, 1962, \*[cbi67], box 1, folder 3.
.ds Ref:1925-04-thompson A. E. Thompson, ``A New Keyboard Perforator for the Baudot Printing Telegraph System,'' \fIElectrical Communication\fP, vol. 3, no. 4, April, 1925, pp. 295-300.
.ds Ref:1934-07-thomas F. R. Thomas, ``Improved Teleprinter Keyboard Technique,'' \fIElectrical Communication\fP, vol. 12, July, 1934, pp. 3-8.
.ds Ref:1956-reference-data \fIReference Data for Radio Engineers\fP, International Telephone and Telegraph Company, 1956, pp. 843-849.
.ds Ref:1957-backus J[ohn] W. Backus, R. J. Beeber, S. Best, R. Goldberg, L. M. Haibt, H. L. Herrick, R. A. Nelson, D. Sayre, P. B. Sheridan, H. Stern, I. Ziller, R. A. Hughes, and R. Nutt, ``The FORTRAN Automatic Coding System,'' \fIProceedings of the Western Joint Computer Conference\fP, Los Angeles, February 26-28, 1957, pp. 188-198.
.ds Ref:1958-12-algol A[lan] J. Perlis and K. Samuelson for the ACM-GAMM Committee, ``Preliminary Report\(emInternational Algebraic Language,'' \fICom\%mun\%i\%ca\%tions of the ACM\fP, vol. 1, no. 12, December, 1958, pp. 8-22.
.ds Ref:1959-luebbert W[illiam] F. Luebbert, ``Data Transmission Equipment Concepts for \s-1FIELDATA\s0,'' \fIProceedings of the Western Joint Computer Conference\fP, San Francisco, March 3-5, 1959, pp. 189-196.
.ds Ref:1960-02-bemer R[obert] W. Bemer, ``A Proposal for Character Code Compatibility,'' \fICommunications of the ACM\fP, vol. 3, no. 2, February, 1960, pp. 71-72.
.ds Ref:1960-05-algol Peter Naur, ed., J[ohn] W. Backus, F. L. Bauer, J. Green, C. Katz, J[ohn] McCarthy, A[lan] J. Perlis, H. Rutishauer, K. Samuelson, B. Vaquois, J. H. Wegstein, A. van Wijngaarden, and M. Woodger, ``Report on the Algorithmic Language ALGOL 60,'' \fICommunications of the ACM\fP, vol. 3, no. 5, May, 1960, pp. 299-314.
.ds Ref:1960-10-luebbert William F. Luebbert, ``Data Processing as a Tool for Generalizing Communications Systems,'' \fICommunications and Electronics\fP, no. 50, September, 1960, pp. 431-436.
.ds Ref:1960-10-smith Fred W. Smith, ``European Teleprinter Developments,'' \fIWestern Union Technical Review\fP, vol. 14, no. 4, October, 1960, pp. 162-175.
.ds Ref:1960-12-bemer R[obert] W. Bemer, ``Survey of Coded Character Representation,'' \fICommunications of the ACM\fP, vol. 3, no. 12, December, 1960, pp. 639-641.
.ds Ref:1961-01-24-reach R[oy] W. Reach, memorandum to W. W. Finke and J. E. Smith, January 24, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-01-ross H[ugh] McG[regor] Ross, ``Considerations in Choosing a Character Code for Computers and Punched Tapes,'' \fIThe Computer Journal\fP, vol. 3, no. 3, January, 1961, pp. 202-210.
.ds Ref:1961-03-14-reach R[oy] W. Reach, memorandum to J. E. Smith and W. W. Finke, March 14, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-05-design R[obert] W. Bemer, H[oward] J. Smith, Jr., and F. A. Williams, Jr., ``Design of an Improved Transmission/Data Processing Code,'' \fICommunications of the ACM\fP, vol. 4, no. 5, May, 1961, pp. 212-217, 225.
.ds Ref:1961-09-18-reach R[oy] W. Reach, memorandum to R[ichard] F. Clippinger, September 18, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-09-21-clippinger R[ichard] F. Clippinger, memorandum to W. W. Finke, September 21, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-11-macon C[harles] E. Macon, quoted by H. S. B. (Herbert S. Bright), editor's note, \fICommunications of the ACM\fP, vol. 4, no. 11, November, 1961, p. 497.
.ds Ref:1962-02-06-macon C[harles] E. Macon, letter to X3 Sectional Committee, February 2, 1962, \*[cbi67], box 1, folder 4.
.ds Ref:1962-05-25-bibliography X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section VII (Bibliography), \*[cbi42], box 5, folder 12.
.ds Ref:1962-05-25-comparison X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section III (Comparison of the Proposed Standard Code with Other Codes), \*[cbi42], box 5, folder 12.
.ds Ref:1962-05-25-report X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section I (X3.2 Subcommittee Report on the Proposed American Standard Code for Information Interchange), \*[cbi42], box 5, folder 12.
.ds Ref:1969-it Jean E. Sammet, \fIProgramming Languages: History and Fundamentals\fP, Prentice-Hall, Inc., 1969, pp. 139-143.
.ds Ref:1970-03-02-mackenzie C[harles] E. Mackenzie, letter to Lloyd M. Burstein, March 2, 1970, \*[cbi81], box 20, folder 50.
.ds Ref:1955-grosch H. R. J. Grosch, ``Standardization of Computer Interconnections,'' \fIProceedings of the Eastern Joint Computer Conference\fP, Boston, November 7-9, 1955, pp. 87-89.
.ds Ref:1951-eckert J. Presper Eckert, Jr., H. Frazer Welsh, James R. Weiner, and Herbert F. Mitchell, ``The UNIVAC System,'' \fIProceedings of the Eastern Joint Computer Conference\fP, Philadelphia, December 10-12, 1951, pp. 6-16.
.ds Ref:1960-12-smith H. J. Smith and F. A. Williams, ``Survey of Punch Card Codes,'' \fICommuncations of the ACM\fP, vol. 3, no. 12, December, 1960, pp. 638, 642.
.
.
.
.ds Ref:holzmann Gerard J. Holzmann and Bj\(:orn Pehrson, \fIThe Early History of Data Networks\fP, IEEE Computer Society Press, 1995, pp. 42-43.
.ds Ref:pendry H. W. Pendry, \fIThe Baud\(^ot Printing Telegraph System\fP, second edition, Sir Isaac Pitman & Sons, Ltd., 1919.
.ds Ref:survey-amendment H. McG. Ross, ``Further Survey of Punched Card Codes,'' \fICommuncations of the ACM\fP, vol. 4, no. 4, April, 1961, pp. 182-183.
.ds Ref:vincent George O. Vincent, ``Self-Checking Codes for Data Transmission,'' \fIWestern Union Technical Review\fP, vol. 11, no. 1, January, 1957, pp. 15-21.
.ds Ref:augustin J. Augustin, ``Teleprinter for Reliable Transmission of Numbers,'' \fIElectrical Communication\fP, vol. 35, no. 4, 1959, pp. 245-246.
.ds Ref:steeneck Robert Steeneck, ``Error Checking Possibilities Concealed Within the 5-Unit Code,'' \fIWestern Union Technical Review\fP, vol. 14, no. 2, April, 1960, pp. 69-71.
.ds Ref:holmes James F. Holmes, ``Undetected Errors in 5-Unit Code Transmission and Their Elimination,'' \fIComputers and Automation\fP, vol. 9, no. 11, November, 1960, pp. 10-13.
.ds Ref:smith Fred W. Smith, ``A Proposed New Teleprinter Code for Error Detection,'' \fIWestern Union Technical Review\fP, vol. 15, no. 2, April, 1961, pp. 60-67.
.ds Ref:bright-algol-set H. S. Bright, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 5, May, 1959, pp. 6-9.
.ds Ref:bemer-algol-set R. W. Bemer, ``A Proposal for a Generalized Card Code for 256 Characters,'' \fICommunications of the ACM\fP, vol. 2, no. 9, September, 1959, pp. 19-23.
.ds Ref:fieldata William F. Luebbert, ``Data Processing as a Tool for Generalizing Communications Systems,'' \fICommunications and Electronics\fP, no. 50, September, 1960, pp. 431-436.
.ds Ref:ross-considerations H. McG. Ross, ``Considerations in Choosing a Character Code for Computers and Punched Tapes,'' \fIThe Computer Journal\fP, vol. 3, no. 3, January, 1961, pp. 202-210.
.\"
.SH
References
.nr PI 4n
.LP
.nr i 1
.while \ni<\n[Reference] \{.
.	IP \ni.
.	ie dRef:\*[Ref\ni] \*[Ref:\*[Ref\ni]]
.	el [missing citation: \*[Ref\ni]]
.	nr i +1
.\}

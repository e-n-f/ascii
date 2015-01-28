.so style.ms
.
.if \n[doublespace] \{.
.	LP
.	if 1 \fBThe Evolution of Character Codes, 1874-1968\fR
.	sp
.	if 1 Eric Fischer
.	sp
.	if 1 5759 N. Guilford Ave.
.	br
.	if 1 Indianapolis, IN 46220
.	br
.	if 1 (317) 253-0700
.	br
.	if 1 enf@pobox.com
.
.	sp 2
Biographical sketch:
.	sp .5
Eric Fischer was most recently employed
by the Rootsweb on-line genealogy service
as an applications programmer.
Prior to this he was a systems programmer
at the University of Chicago.
He received the A.B. degree in Linguistics
from the University of Chicago in 1995.
.	bp 1
.\}
.TL
The Evolution of Character Codes, 1874-1968
.if !\n[doublespace] \{.
.	AU
.	if 1 Eric Fischer
.	br
.	if 1 \fC\s-1enf@pobox.com\s0\fP
.\}
.my-ab
\('Emile Baudot's printing telegraph was
the first widely adopted device
to encode letters, numbers, and symbols
as uniform-length binary sequences.
Donald Murray introduced a second successful code
of this type, the details of which continued to evolve until
versions of Baudot's and Murray's codes
were standardized
as International Telegraph Alphabets No.\~1 and No.\~2, respectively.
These codes were used for decades before
the appearance of computers and the changing needs of communications
required the design and standardization of a new code.
Years of debate and compromise resulted in
the ECMA-6 standard in Europe,
the ASCII standard in the United States,
and the ISO 646 and International Alphabet No.\~5 standards internationally.
.my-ae
.I "This work has been submitted to the IEEE for possible publication."
Paper copies:
.I "Copyright may be transferred without notice, after which this version"
.I "will be superseded."
Electronic copies:
.I "Copyright may be transferred without notice, after which this version"
.I "may no longer be accessible."
.sp
.if t .if '\n[doublespace]'0' .2C
.
.
.
.if n \{.
.	rn PP origPP
.	de PP
.		origPP
.		if 1 <p>
.		br
..
.	de SH
.		LP
.		if 1 <h2>
.		br
..
.	de endSH
.		br
.		if 1 </h2>
.		LP
..
.	de PT
..
.\}
.if t \{.
.	de endSH
..
.\}
.
.
.
.SH
Introduction
.endSH
.PP
Today we take it for granted that a ``plain text'' file on a computer
can be read by nearly any program, printed on any printer,
displayed on any screen, transmitted over any network,
and understood equally easily by any other make or model of computer.
Plain text is plain, though, only because of a near-universal
agreement about what symbols and actions correspond to what
arbitrary arrangement of bits,
an agreement that was reached only after many years of
design work, experimentation, and compromise.
.PP
The first portion of the paper will cover the origins of
International Telegraph Alphabet No.\~2 (often called ``Baudot''),
the five-unit code standardized in the 1930s.
The second portion will cover the design and standardization
of its successor, the seven-bit international standard code now used by the
majority of the world's computers and networks.
This second topic has previously been addressed
from different perspectives
in a paper by Robert\~W. Bemer\c
.Ref bemer-1972
and a book by Charles\~E. Mackenzie.\c
.Ref mackenzie-1980
.SH
\('Emile Baudot
.endSH
.PP
On July 16, 1870,
twenty-four-year-old
Jean-Maurice-\('Emile Baudot (\*[Figure])
left his parents' farm and began a new career
in France's Administration des Postes et des T\('el\('egraphes.
He had received only an elementary school education,
but began studying electricity and mechanics in his spare time.
In 1872, he started research toward a telegraph system that would
allow multiple operators to transmit simultaneously over a single wire
and, as the transmissions were received,
would print them in ordinary alphabetic characters
on a strip of paper.
He received a patent for such a system
on June 17, 1874.\c
.Ref son-oeuvre harrison-1923 necrologie
.>>>>
.PSPIC baudot150.ps
.sp
.Caption
\('Emile Baudot (1845-1903).\c
.Ref son-oeuvre
.<<<<
.PP
Baudot's was not the first printing telegraph,
but it made considerably more efficient use of
communications lines than an earlier
system invented by David\~E. Hughes.
Hughes's printer contained
a continually
rotating wheel with characters engraved on it in the order shown
in \*[Figure].
A character could be printed by sending a single pulse over
the telegraph line,
but depending on the current position of the wheel it
might take nearly a complete rotation before the correct
character would be ready to print.\c
.Ref herbert-1909
Instead of a variable delay followed by a single-unit pulse,
Baudot's system used a uniform six time units to transmit each character.
I have not been able to obtain a copy of Baudot's 1874 patent,
but his early telegraph probably used the six-unit code (\*[Figure])
that he attributes to Davy in an 1877 article.\c
.Ref baudot-1877
.>>>>
.so chart-hughes
.Caption
Order of characters on Hughes printing telegraph typewheel.\c
.Ref herbert-1909
Some equipment replaced the letter W by the accented letter \('E
and the multiplication sign (\(mu) by a section sign (\(sc).
.<<<<
.>>>>
.so chart-baudot-6
.Caption
Six-unit code (alphabet only) from an 1877 article by
\('Emile Baudot.\c
.Ref baudot-1877
.<<<<
.PP
(In Figure \n[Figure],
and in other figures to follow,
each printable character is shown
next to the pattern of impulses that is transmitted
on a telegraph line to represent it.
In this figure,
dots (\*0) specifically
represent the positive voltage of an idle telegraph
line and circles (\*1) the negative voltage of
an active line.
In related systems using punched paper tape,
circles represent a hole punched in the tape
and dots the absence of a hole.)
.PP
It may seem surprising that Hughes and Baudot invented
their own telegraph codes rather than designing printers that could
work with the already-standard Morse code.
Morse code, though, is extremely difficult to decode mechanically
because its characters vary both in their length
and in their pattern.
It was not until the beginning of the twentieth century
that F.\~G. Creed was able to develop a successful Morse printer,
and even his invention could not print messages immediately
as they were received, but instead required that they first
be punched onto paper tape.\c
.Ref creed-1929
Hughes simplified the task by adopting a code
in which characters varied only with time, not in their pattern.
Baudot chose the opposite simplification: his characters had varying
patterns but were always transmitted in the same amount of time.
.PP
A six-unit code can encode 64 (2\*{6\*}) different characters,
far more than the twenty-six letters and space that are needed,
at a minimum, for alphabetic messages.
This smaller set of characters can be encoded more efficiently
with a five-unit code,
which allows 32 (2\*{5\*}) combinations,
so in 1876 Baudot redesigned his equipment to use a five-unit code.
Punctuation and digits were still sometimes needed, though, so
he adopted from Hughes the use of two special
.Ctrl "letter space"
and
.Ctrl "figure space"
characters that would cause the printer to shift between
cases at the same time as it advanced the paper without printing.
.PP
The five-unit code he began using at this time (\*[Figure])\c
.Ref webber-1878
.\"   better early source?
was structured to suit his keyboard (\*[Figure]),
which controlled two units of each character with switches
operated by the left hand and the other three units with the
right hand.\c
.Ref rothen-1884
Such ``chorded'' keyboards have from time to time been reintroduced.\c
.Ref owen-1978 engelbart
The Hughes system had used a piano-like keyboard (\*[Figure]).
The typewriter was still too new an invention to have
any impact on the design of telegraph equipment.
.>>>>
.so chart-baudot
.Caption
\('Emile Baudot's five-unit code.\c
.Ref webber-1878 rothen-1884 pendry-1919
.<<<<
.>>>>
.PSPIC chorded.ps
.sp
.Caption
Baudot's five-key keyboard.\c
.Ref rothen-1884
.<<<<
.>>>>
.so kbd-hughes
.Caption
Hughes printing telegraph keyboard.\c
.Ref blavier-1867
.<<<<
.SH
Donald Murray
.endSH
.PP
By 1898, though, typewriters had become much more common.
In that year,\c
.Ref murray-obit
Donald Murray (\*[Figure]),
``an Australian journalist, without prior practical
experience in telegraph work,''\c
.Ref vansize-1901
invented a device which operated the keys of a typewriter or
typesetting machine according to patterns of holes punched
in a strip of paper tape.
In 1899 he received a United States patent for this invention\c
.Ref murray-patent-1899
and came to New York, where
he worked to develop a complete telegraph system around it
for the Postal Telegraph-Cable Company.\c
.Ref murray-obit mares murray-to-new-york
.>>>>
.PSPIC murray-photo.PS
.sp
.Caption
Donald Murray (1866-1945).
Photo provided by and reproduced courtesy of Bob Mackay.
.<<<<
.PP
Murray's printer, like Baudot's telegraph, represented
each character as a sequence of five units
and employed special shift characters to switch between cases.
Baudot's system had only letter and figure cases, but
Murray's first printer had three: figures, capitals, and
miniscules (``release'').
To maximize the structural stability of the tape,\c
.Ref post-office-oct-1956
Murray arranged the characters in his code so that
the most frequently used letters were represented by the
fewest number of holes in the tape.
\*[Figure] shows the codes he assigned to the letters, control characters,
and
.Code comma
and
.Code period .
His patent unfortunately gives no indication of what characters were
available in the figures case or in what order they were arranged.
.>>>>
.PSPIC murray-code.ps
.sp
.Caption
Murray printer code, 1889.\c
.Ref murray-patent-1899
.<<<<
.PP
On January 25, 1901, William\~B. Vansize (identified as Murray's attorney
in several of his pat\%ents)\c
.Ref murray-patents
described Murray's invention to the
American Institute of Electrical Engineers, and Murray
demonstrated the printer in operation.\c
.Ref vansize-1901
By this time, his equipment used a code
(\*[Figure]a) that was almost identical to the one
.nr Murray-fig \n[Figure]
from 1899,
except that the codes for the
.Ctrl "space"
and
.Ctrl "release"
characters
had been reversed.
Again only the codes for the letters were listed in the paper, but
an illustration (redrawn as \*[Figure])
shows the keyboard positions of some of the punctuation and digits.
These would have had the same codes as the letters with which they share keys.
.>>>>
.so chart-murray
.Caption
Murray Printing Telegraph codes, 1901-1929.\c
.Ref vansize-1901 murray-1905 crotch-1908 ccit-1929-prelim
Character assignments shown as
.Ctrl unk
are unknown.
.<<<<
.>>>>
.so kbd-murray-1901
.Caption
Fragment of Murray keyboard, 1901.\c
.Ref vansize-1901
.<<<<
.PP
It is unclear why Murray should have
chosen this arrangement for the figures case,
as it is not the same as that of any identifiable
typewriter.
It also has no connection to the key arrangement
of the Columbia Bar-Lock typewriter,\c
.Ref barlock
which Murray named
at the 1901 demonstration
as the typewriter used in his printer, and the distinctive silhouette
of which can be recognized in his 1899 patent.
Whatever its origin,
this arrangement of punctuation and digits did not last long.
Another patent, filed July 20, 1901, shows a new keyboard
arrangement (\*[Figure]).\c
.Ref murray-sep-30-1902
.>>>>
.so kbd-murray-1902
.Caption
Murray keyboard, 1902.\c
.Ref murray-sep-30-1902
.<<<<
.PP
One of the criticisms of Murray's printer at its 1901 demonstration
was its lack of automation.
An operator had to turn a crank to make it print
and had to return the typewriter carriage manually at the end
of each line.
By February 23, 1905, when Murray spoke at a London meeting of the
Institution of Electrical Engineers,\c
.Ref murray-1905
he had
introduced a
.Ctrl "line"
control character which automatically
returned the carriage and advanced the paper.
This took the place of the former
.Ctrl "release"
control,
so the system now had only two cases: figures and capitals.
The code was further changed to give the
.Ctrl "capitals"
character,
rather than the letter Z,
the all-holes-punched code, so that errors in punching could
be erased invisibly by repunching the
.Ctrl "capitals"
code, which did not print,
over the mistyped sections of the tape.
The 1905 code is shown in Figure \n[Murray-fig]b
and the keyboard that generated it in \*[Figure].
.>>>>
.so kbd-murray-1905
.Caption
Murray keyboard, 1905.\c
.Ref murray-1905
.<<<<
.PP
By 1908, Murray's code and keyboard had undergone further
changes, as can be seen in \*[Figure] and Figure \n[Murray-fig]c.\c
.Ref crotch-1908
The
.Code comma
(\|,\|) was removed from the letters case
(as the former capitals case had been renamed) to make room
for a new
.Ctrl "page"
control character indicating the end of
a page of text.
The movement of the comma into the figures case required the
rearrangement of other figures and the combination of the
.Code left
(\fC(\fP) and
.Code right
(\fC)\fP)
.Code parentheses
into a single
character (\|\o'()'\|).
In 1911,
Murray explained a further reason for the extent of the reorganization:
to move the most important punctuation onto the bottom row
of the keyboard so that the middle row of the figures case
could be reserved for ``national use'' characters
needed in particular countries but not used in international
communications.\c
.Ref murray-1911
\*[Figure] is the international version of the keyboard.
.\" \*[Figure] shows the 1911 keyboard.
.>>>>
.so kbd-murray-1908
.Caption
Murray keyboard, 1908.\c
.Ref crotch-1908
.<<<<
.>>>>
.so kbd-murray-1911
.Caption
Murray keyboard, 1911.\c
.Ref murray-1911
.\" .\" XXX maybe should be reproduced from?
.<<<<
.br
.ne 3
.SH
The Murray code diverges
.endSH
.PP
On April 12, 1912,
Donald Murray announced that he had sold his United States
patents to the Western Union Telegraph Company.\c
.Ref murray-journal
After this date, American and English Murray equipment
and codes began to
diverge because of their independent development.
The most significant change in England was the reintroduction
of the
.Ctrl "letter space" ,
.Ctrl "figure space" ,
and
.Ctrl "erasure"
control characters, which Baudot had used, in place of the
.Ctrl "space" ,
.Ctrl "figures" ,
and
.Ctrl "letters"
codes of earlier
Murray models.\c
.Ref easterling-1953
.\" XXX better reference?
.\" creed-1926 has a crummy picture but you can see the space bars
In addition, the
.Ctrl line
control was separated
into independent
.Ctrl column
(sometimes known as
.Ctrl "line feed" )
and
.Ctrl "carriage return"
characters.
The added control code
displaced the
.Code period
(\|.\|) from the letters case and resulted
in the rearranged punctuation shown
in the code of Figure \n[Murray-fig]d.\c
.Ref ccit-1929-prelim
.PP
The different changes that took place in the United States were
the result of influence from another printing telegraph
system, the Morkrum.
The Morkrum company was founded in 1901 by Joy Morton,
the owner of Morton Salt, and Charles\~L. Krum,
a mechanical engineer.
Krum, later joined by his son Howard, an electrical engineer,
built his early telegraph printers around
the Blicksenderfer and Oliver typewriters.\c
.Ref engineering-and-science
It appears, though, that the Hammond typewriter's ``Universal'' model
may also have had an impact on the design of
Morkrum equipment.
The Morkrum keyboard (\*[Figure])
is more similar to the Hammond
keyboard (\*[Figure])
than to that of any other identifiable typewriter,
and both machines use similar typewheel-based printing mech\%an\%isms.\c
.Ref morkrum-1916 barlock
.\" XXX did I really mean barlock here?
.PP
\*[Figure] shows the Morkrum five-unit code,
which was evidently based, like Murray's, on a study of the
relative frequency of use of the characters, but with the idea
of making the typewheel move the shortest distance rather than
minimizing the number of holes punched.
The most frequently used letters are clustered in the middle
of the first column, which represents one side of the typewheel;
the least frequently used are clustered in the middle of the
second column, a complete half-turn of the wheel away.
.>>>>
.so kbd-morkrum
.Caption
Morkrum keyboard.\c
.Ref morkrum-1911 morkrum-1914
.<<<<
.>>>>
.so kbd-hammond
.Caption
Hammond ``Universal'' keyboard.\c
.Ref burghagen-1898
.<<<<
.>>>>
.so chart-morkrum-only
.Caption
Morkrum code.\c
.Ref morkrum-1911 morkrum-1912 morkrum-1913 morkrum-1914
.<<<<
.PP
By January 15, 1915, the Western Union Telegraph Company
had begun using a printing telegraph system that combined
aspects of the
Murray and Morkrum codes.
It used Murray's codes for the letters and controls,
but generally followed the Morkrum conventions for
which figures should be paired with which letters.\c
.Ref western-union-1915
Like the Morkrum code and the later English Murray code,
the Western Union code used separate
.Ctrl "line feed"
and
.Ctrl "carriage return"
characters instead of a single
.Ctrl line
character.
Some changes to the Morkrum figures were necessary
so that the
.Code period
(\|.\|) could be moved from the letters
case to the figures case and so that
three new controls could be added:
.Ctrl signal ,
which rang a bell,
.Ctrl city ,
which switched
the receiver from retransmitting to printing, and
.Ctrl thru,
which switched from printing to retransmitting.\c
.Ref houghtaling
The Morkrum and Western Union codes are compared in
\*[Figure]a
.nr Morkrum-fig \n[Figure]
and \n[Morkrum-fig]b.
Western Electric
.\" (which later became Morkrum's parent
.\" company after Morkrum merged with Kleinschmidt
.\" and changed its name to Teletype)\c
.\" .Ref engineering-and-science
also began using this code on its telegraph equipment,
as well as a related one
(Figure \n[Morkrum-fig]c)
which retained the Morkrum
placement of the
.Code apostrophe
(\|'\|) because it contained fewer controls.\c
.Ref western-electric-1919
.\" XXXX say something somewhere about TWX code, maybe later
.>>>>
.so chart-morkrum
.Caption
Morkrum, Western Union, and Western Electric codes.\c
.Ref morkrum-1911 morkrum-1914 western-union-1915 western-union-1918 western-electric-1919
.<<<<
.SH
Code standardization
.endSH
.PP
By 1916, Donald Murray could say that
``the inventive stage is nearly over.
The mystery is gone and printing telegraphy has
become one of the exact arts.''\c
.Ref harrison-1916
With the experimental era at its end, there was little
reason for the world's telegraphers to continue
using several similar but incompatible
five-unit codes,
but no progress had been made toward standardization
as late as 1924, when the German telegraphic administration
began publishing articles advocating the adoption
of an international standard code.
Later that year
in England,
A.\~E. Thompson and Donald Murray
also declared their support for standardization.
Murray had previously had the habit of referring to
any five-unit code, including his own, as ``the Baudot alphabet,''\c
.Ref murray-1911 murray-journal
as if all five-unit codes were interchangeable,
but now agreed that standardization was
``a matter which will have to receive
the attention of the telegraph administations in the near future.''\c
.Ref murray-1925
In early 1925, German articles advocating standardization
were reprinted in France and Switzerland.\c
.Ref unification-feb-1925 unification-may-1925
.PP
In November, 1926,
the Comit\('e Consultatif
International des Communications T\('e\%l\('e\%graph\%iques (CCIT) met
for the first time in Berlin.\c
.Ref ccit-1926
Its parent organization, the Bureau International
de l'Union T\('e\%l\('e\%graph\%ique,
had, decades earlier,
standardized Morse code\c
.Ref itu-1872
and the list of characters that could be transmitted with Baudot equipment
(but not their codes).\c
.Ref itu-1903
Among the many standards issues the newly formed committee
was to consider
(another was the invention of the ``baud'' as the standard
unit of communications speed)
was the establishment of a uniform five-unit code.
Delegate Stahl provided a lengthy review of the characteristics of
existing codes and proposed a new standard code (\*[Figure]) based on
a recalculation of the frequency with which letters were used.
The French delegation objected that this was impossible because
the operators of the many existing Baudot installations could not
be forced to memorize a wholly new code.
The technical subcommittee concluded that indeed, any new standard
would have to be closely related to the original Baudot code.
.>>>>
.so chart-stahl
.Caption
Stahl's proposed standard code, September, 1926.\c
.Ref ccit-1926
.<<<<
.PP
The British delegation expressed its preference for a code with
.Ctrl "figure space"
and
.Ctrl "letter space"
characters rather than separate
.Ctrl figures ,
.Ctrl letters ,
and
.Ctrl space
codes.
The delegation from the USSR preferred to separate the shifts
from the spaces because the Cyrillic alphabet
has too many letters to fit only in the letters case and requires
that five codes from the figures case be used for additional letters.
The Czechoslovakian delegation asked that the committee address
the long-neglected problem of how to encode accented letters.
F.\~G. Creed raised the possibility of
abandoning the traditional five-unit code for a six-unit standard, which
would eliminate most shifting and, with shifts,
would make room for non-Roman letters,
but this suggestion went nowhere.
.PP
Many details of the Baudot-derived standard-to-be
were worked out in advance of the next CCIT meeting,
which was to be held in June, 1929.\c
.Ref ccit-1929-prelim
The
.Code "accented letter E"
(\('E) and the
.Code "superscript letter T"
(\|\*{t\*}\|)
would be sacrificed for
the
.Ctrl "carriage return"
and
.Ctrl "line feed"
codes, respectively.
The
.Code period
(\|.\|), which had been the upper case of the superscript T,
would replace the
.Code semicolon
(\|;\|).
The following punctuation marks were considered essential to retain:
.Code period
(\|.\|),
.Code comma
(\|,\|),
.Code "question mark"
(?),
.Code dash
(\-),
.Code apostrophe
(\|'\|),
.Code colon
(\|:\|),
.Code parentheses
(\fC(\fP and \fC)\fP), and
.Code "fraction bar"
(\|/\|).
Other essentials were a
.Ctrl stop
signal and the
two punctuation marks that were conventionally
used to separate the address from
the message (=) and to indicate the end of the message (+).
.PP
The obstacle to universal adoption
of this modified Baudot code (\*[Figure]) was that
when combined with a QWERTY keyboard it put
the digits in nonsensical locations (\*[Figure]).
Booth and Willmot of the British Post Office
had provided a possible solution when
they invented a keyboard (\*[Figure])
that was arranged like Murray's but
used complicated mechanical means to transmit the Baudot code,\c
.Ref thompson-1925
but many attendees of the June 11, 1929 session of the CCIT conference
preferred the Murray code's direct association of letters and figures.\c
.Ref ccit-1929-reunion
A morning of debate only managed to reaffirm that the Baudot code
should be modified as little as possible,
but the possibility was raised that another code might
be more appropriate for start-stop equipment.
.\" such as
.\" that made by Creed\c
.\" .Ref creed-start-stop
.\" and Morkrum.\c
.\" .Ref morkrum-start-stop
.>>>>
.so chart-ccit1-early
.Caption
Proposed International Telegraph Alphabet,
March 22, 1929.\c
.Ref ccit-1929-prelim
.<<<<
.>>>>
.so kbd-baudot-bad
.Caption
Proposed International Telegraph Alphabet,
arranged on QWERTY keyboard.\c
.Ref ccit-1929-prelim
.<<<<
.>>>>
.so kbd-baudot
.Caption
Major Booth and Mr. Willmot's New Keyboard Perforator
for the Baudot Printing Telegraph System.\c
.Ref thompson-1925
Some keys show replacement of standard Baudot figures
with alternate characters by the British Post Office.
.<<<<
.PP
After a break from 12:00 to 2:15
and further debate,
the delegate from the Netherlands proposed that a subcommittee
investigate what code was most appropriate for start-stop equipment.
The committee adjourned and the subcommittee met from 3:20 to 5:50.
It returned with a code (\*[Figure]),
to be known as International Telegraph Alphabet No.\~2,
that, for the most part, combined the Baudot codes for the letters
with the English Murray pairings
of the letters and figures,
and reserved four positions for national use.
(The new code reversed Baudot's assignments for
.Ctrl error
and the
.Code "letter P"
so that the
.Ctrl error
character
would have the all-holes-punched code and
could be repunched over a mistyped character.)
The next day, the proposed International Telegraph Alphabet No.\~1,
as the Baudot-style standard code would be known, was also modified to
reserve four characters for national use,
and other specifications were worked out to ensure that
systems would be compatible.
.>>>>
.so chart-ccit2-early
.Caption
Proposed International Telegraph Alphabet No.\~2, June 11, 1929.\c
.Ref ccit-1929-reunion
.<<<<
.PP
The proposal to standardize two International Telegraph Alphabets was
vigorously opposed by the USSR, so
a committee continued to meet to try to come up with a better idea.\c
.Ref ccit-1931-prelim
On January 21, 1931, British delegate Mr. Booth
informed members of the committee of a British plan to introduce
a teletypewriter exchange service of the type
then also being introduced in the United States.\c
.Ref page-1941
The service would place teleprinters in ordinary offices,
so to avoid confusing new customers with keyboards with dual space bars,
as would be found on equipment that used either the British Murray code
or either of the proposed International Telegraph Alphabets,
they planned to use an American-style Murray code
and a keyboard with separate space and shift keys.
The USSR also
expressed a preference to use the Murray code,
rather than the proposed International Telegraph Alphabets,
for international communication.
Feuerhahn of Germany urged the CCIT to carry on with its
original plan,
but at its June, 1931 meeting the committee resolved
to replace the proposed International Telegraph Alphabet No.\~2
with a code based on Murray's.\c
.Ref ccit-1931-reunion
\*[Figure] and \*[Figure]
show International Telegraph Alphabets Nos. 1 and 2
as they were finally adopted.\c
.Ref itu-1938
.>>>>
.so chart-ccit1
.Caption
International Telegraph Alphabet No.\~1.\c
.Ref itu-1938
.<<<<
.>>>>
.so chart-ccit2
.Caption
International Telegraph Alphabet No.\~2.\c
.Ref itu-1938
.<<<<
.SH
The next generation
.endSH
.PP
In the years that followed,
International Telegraph Alphabet No.\~1 fell into disuse, while
equipment using Alphabet No.\~2
came to dominate the world's international non-voice communications.
.\" XXX need some reference for this
In May, 1948,
the United States delegation to the CCIT
proposed ``the adoption, with reservations,
of the 5-unit code Alphabet No.\~2, as
the code for general use in international telegraphy,''
and the proposal was accepted.
A British proposal to turn the code's
.Ctrl "not used"
character into
a third shift ``received general support''
but was first to be subjected to further study.\c
.Ref post-office-july-1948
It was not until 1988 that Alphabet No.\~2 was finally extended
to support both upper and lower case letters.\c
.Ref ccitt-s2-1988
.PP
The four characters reserved for national use in International Telegraph
Alphabet No.\~2 were not a very general solution to the problem
of encoding letters with accent marks, especially since
their use was prohibited in international communications.
At the December, 1956 meeting of the CCIT,
one of the issues brought up was
the ``possible need for extending the facilities offered
by the present 5-unit telegraph alphabet, perhaps by the introduction,
under agreed conditions, of a 6-unit code.''\c
.Ref post-office-april-1957
The proposed expanded code would provide for
``the inclusion of diacritical signs and additional
characters required in some languages and... the needs
of data processing.''\c
.Ref renton-oct-11-1961
.PP
On January 1, 1957, the CCIT and
its former telephonic counterpart, the Comit\('e Consultatif
International T\('el\('ephonique (CCIF),
were merged into a single International Telegraph
and Telephone Con\%sul\%ta\%tive Committee (CCITT).\c
.Ref bloecker-nov-1957
.\" XXX find french spelling of ccitt name
So it was the CCITT that held a special meeting in Warsaw
in May, 1958 to consider an expanded code.
There was ``general agreement... that it was premature
at that time to standardise a new telegraph alphabet,''\c
.Ref renton-oct-11-1961
but the meeting did result in a list of the diacritical
marks that would have to appear in any code that was
standardized: the
.Code acute
(\*[acute]),
.Code grave
(\*[grave]),
.Code circumflex
(\*[hat]),
.Code umlaut
(\*[umlaut]), and
.Code tilde
(\*[tilde])
accents.\c
.Ref ccitt-may-13-1963
At its December, 1960 meeting, the CCITT
established a Working Party responsible for
further development of the new telegraph code.
.PP
In the United States,
accented letters were not a concern
but there was nevertheless interest in the possibility
of a six-unit
replacement for International Telegraph Alphabet No.\~2.
In 1952, I.\~S. Coggesgall, the Director of Planning for
Western Union's International Communications Department,
observed that
``a 6-unit general purpose printer would afford 2\*{6\*}\|=\|64
combinations of characters and controls and has been proposed
to increase the usefulness of printers in certain language
applications.
Among other things, it would make possible tabulators and
back-spacers.''\c
.Ref coggeshall-jan-1953
.PP
It was Western Union's competitor AT\*(AMT, though, that was most
convinced of the value of a six-unit code.
The company was planning to replace its
manually switched teletypewriter exchange network
with a new direct dial network
on August 31, 1962.\c
.Ref tyberghien-1962
It saw the transition as an ideal opportunity to introduce
a new code that would eliminate the need to shift manually
between letters and figures cases and would use a keyboard
as similar as possible to that of a standard typewriter.
The new network would not make old equipment or codes obsolete,
but it would allow faster connections than the old one
for those who wanted greater speed,
and most of the installed equipment would not be able to keep up.
Replacement equipment designed to work at high speed
(by AT\*(AMT's Teletype subsidiary, the company once known as Morkrum)
would also be designed for the new code.\c
.Ref auwaerter-may-1963
.PP
\*[Figure] shows the proposed new code
.nr Bellfig \n[Figure]
and \*[Figure] the keyboard that would transmit it.
Notice that characters that appear on the same key of the keyboard
are located in the same row of columns 2 and 3 of the code.
This arrangement makes the operation of the keyboard's
Shift key mechanically simpler,
because the codes for characters in row 2 differ from
the codes for characters in row 3 by only a single bit.
.>>>>
.so bell-1960-12-19.code.pic
.Caption
``Proposed Six-Unit Code for Teletypewriter and Other
Data Communications to Operate with Four-Row Electric
Typewriter Keyboard,'' December 19, 1960.\c
.Ref whitman-dec-19-1960
.<<<<
.>>>>
.so kbd-teletype-planned
.Caption
``Keyboard Format Based on Electric Typewriter Format
to go with Six-Unit Code,'' December 19, 1960.\c
.Ref whitman-dec-19-1960
.<<<<
.PP
(Unlike the previous code charts in this paper,
Figure \n[Bellfig]
does not show
the pattern of electrical signals that
would be transmitted across a telegraph line to represent each
of its characters.
Instead, it is arranged in numbered rows and columns.
A character in column \fIx\fP, row \fIy\fP,
sometimes referred to as character \fIx\fP/\fIy\fP,
represents character number 16\fIx\fP\|+\|\fIy\fP,
and is transmitted as a sequence of impulses
corresponding to the binary representation of its column and row numbers,
in reverse order.
For example, in Figure \n[Bellfig],
the
.Code apostrophe
(\|'\|) is in column 3, row 10,
so it is character 3/10, number 58.
Three in binary is 11\*<2\*>, and ten is 1010\*<2\*>,
so the character's binary code is 111010\*<2\*> and is transmitted in
reverse order as \*0\*1\*0\*1\*1\*1.
Most of the remaining code charts in this paper will
use the same conventions.)
.PP
The character in Figure \n[Bellfig]
labelled
.Ctrl blank ,
also called
.Ctrl null
or
.Ctrl "master space" ,
corresponds to an idle transmission line
or a section of paper tape with no holes punched
and is ignored.
(Confusingly, in some other codes the
.Ctrl blank
name refers
to the
.Ctrl space
function instead.)
Similarly,
.Ctrl rubout ,
also called
.Ctrl delete ,
is the character
with all holes punched, and is also ignored.
It is used to correct errors by punching it over a mispunched
character, the same function for which the
.Ctrl "letter shift"
code
could be used in Murray's codes and in International Telegraph Alphabet No.\~2.
The characters
.Ctrl uc
and
.Ctrl lc
would shift between upper case
and lower case on printers that supported two cases.
The
.Ctrl lf ,
.Ctrl cr ,
and
.Ctrl sp
characters are shorter names for the
.Ctrl "line feed" ,
.Ctrl "carriage return" ,
and
.Ctrl space
functions also seen on earlier equipment.
The
.Ctrl bell
control rings a bell.
The
.Ctrl wru
control stands for ``who are you'' and
causes the receiving equipment to transmit
back information identifying itself so the sender can be sure
he or she is sending to the correct destination.
The character named
.Ctrl stunt
was intended to be used as the first
character in a two-character sequence that would cause some
special function.
For example, it was anticipated that ``the STUNT followed by
a letter T might be used to perform a tabulate function.''\c
.Ref whitman-dec-19-1960
The character was named after the programmable ``stunt box''
that performed these sorts of functions in the
earlier Teletype Model 28.\c
.Ref benjamin-march-1954
.PP
The code of Figure \n[Bellfig]
was intentionally similar to
a proposed U.S. military standard,
the FIELDATA code (\*[Figure])
designed by Captain William F. Luebbert
of the U.S. Army Signal Research and Development Laboratory,
but with some punctuation rearranged or replaced
to make its keyboard more
like that of a standard electric typewriter.
FIELDATA
was an ``integrated family of data processing and data
transmission equipment'' noted for the ``almost complete
disappearance of conventional distinctions between
communications and data processing.''\c
.Ref luebbert-1959-western
The use of the FIELDATA code was the key to eliminating
those distinctions,
because communications equipment would otherwise invariably use
a version of International Telegraph Alphabet No.\~2,
while computer makers would not even consider using it
because of the nonsensical order of its characters
when sorted by their binary codes (\*[Figure]).
.>>>>
.so fieldata-1960-06-21.code.pic
.Caption
FIELDATA code, June 21, 1960.\c
.Ref mil-std-188a
Versions of the code given in
Luebbert's 1959\c
.Ref luebbert-1959-western
and 1960\c
.Ref luebbert-sep-1960
articles differ in minor details.
.<<<<
.>>>>
.so chart-ccit2-binary
.Caption
International Telegraph Alphabet No.\~2,
arranged in binary order.
.<<<<
.PP
Unfortunately there was no other established standard
for character codes,
despite an increasing need for one.
In 1951, UNIVAC had been billed as ``the first
computer which can handle both alphabetic and numerical
data to reach full-scale operation.''\c
.Ref eckert-1951
There were soon many others,
each with its own character code.
Sometimes there were even multiple character codes in use
within a single company.
IBM had been using the same representation for alphanumeric characters
on punch cards since the 1930s (about which more will be said below),
but not all IBM computers mapped those punch card codes
to the same internal binary representation,
and certain codes corresponded to different punctuation marks
on ``scientific'' equipment than on ``commercial'' equipment.\c
.Ref bemer-june-1-1960
.PP
By 1955, Herbert Grosch had become sufficiently concerned about
the growing incompatibility of character codes
that he urged the attendees of the Eastern Joint Computer Conference to
``register common codes so that `a' will always be `a'
and `7' will always be `7,' or so that we can program the
translation.''\c
.Ref grosch-1955
It was not until nearly five years later, though,
by which time at least twenty-nine incompatible codes were in use,\c
.Ref eia-feb-1960
that industry organizations
began to show an interest in establishing a character code standard
for computers.
The first to make a move was the
Electronic Industries Association (EIA),
which on
May 25, 1960
proposed that the codes for the letters and digits be
tentatively standardized as in \*[Figure].\c
.Ref eia-may-25-1960
.>>>>
.so eia.code.pic
.Caption
Electronic Industries Association tentative standard
for Basic Character Set Code, May 25, 1960.\c
.Ref eia-may-25-1960
.<<<<
.SH
The X3.2 subcommittee
.endSH
.PP
The American Standards Association (ASA)
got involved in character code standardization
on August 4, 1960,
when it created the X3.2 subcommittee for
Coded Character Sets and Data Format.
X3.2's parent organization, the X3 committee
for Computer and Information Processing standards,
had been formed on January 13, 1960.
Five other X3 subcommittees were also created in August
to address other computer-related standards issues.\c
.Ref summary-of-activities-june-9-1961 utman-jul-1963
The X3.2 subcommittee (or X3-2, as its name was often spelled
until late 1961)
met for the first time on October 6, 1960.
Its members decided that they should
first determine what characters should be in the standard
character code, then in what order they should appear,
and finally how they should be represented in media.\c
.Ref x3.2-oct-6-1960
.PP
By the December 2, 1960
meeting of X3.2,
the work on the first part of that procedure
had led to an agreement
that the standard would have to contain
ten
.Code digits ,
the
.Code "letters A"
to
.Code Z ,
a
.Code blank ,
and probably about ten punctuation marks and eight business symbols.
The meeting was also
attended by Mr. Craig of AT\*(AMT
.\" XXX find out his name
and Allen\~L. Whitman of Bell Laboratories,
who presented the modified FIELDATA code
described above.
X3.2 chairman Irving Liggett was enthusiastic about it:
``This could be the X3-2 code if we work fast enough.''\c
.Ref liggett-dec-7-1960
.PP
Many people in data processing, though,
didn't want to standardize a FIELDATA-derived code.
``The computer industry representatives' most fundamental objection
to the character arrangement in the DOD Fieldata code,''
L.\~L. Griffin wrote, ``is that the special characters
(punctuation symbols) are placed higher in the code structure
than the alphabetic characters.''\c
.Ref griffin-may-5-1961
In data processing, punctuation had traditionally been
sorted earlier than letters, and letters earlier than digits;
the FIELDATA order was letters, symbols, digits, and more symbols.
A second point of dispute was that FIELDATA,
and especially the Bell System rearrangement of it,
mixed control and printing characters together rather
than isolating them in separate parts of the code table.
As the X3.2 code developed,
many characters would be repeatedly relocated to satisfy
either the data processing desire to group related characters
together or the communications desire to arrange characters
as they were arranged on keyboards.
.PP
X3.2 was, however, still officially at the stage of
choosing what characters to standardize and would not
decide until later in what order they should appear.
By the January 11-12, 1961 meeting,
X3.2 members were able to agree that the
set should contain,
in addition to the letters, digits, and blank previously agreed upon,
a
.Code period
or
.Code "decimal point"
(\|.\|),
.Code "minus sign"
or
.Code "hyphen"
(\-),
.Code left
and
.Code "right parentheses"
(\fC(\fP and \fC)\fP),
.Code slash
(\|/\|),
.Code asterisk
(*),
.Code "number sign"
(#),
.Code comma
(\|,\|),
.Code "percent sign"
(%), and an
.Ctrl escape
code that would give access to other useful sets of characters.
No other characters were unanimously supported.\c
.Ref reach-jan-24-1961
Members were asked to bring to the following meeting
complete lists what
characters they thought should appear in the main
64-character set
and in what order.
\*[Figure] and \*[Figure] are two of these proposals.
The latter is actually cut down from a 256-character superset
that also included lower case, Greek and Russian letters,
and numerous special symbols.
.\" The January 11-12 meeting also clarified
.\" the respective roles of X3.2 and the Electronic Industries
.\" Association subcommittees.
.\" X3.2 would concentrate on codes and the EIA subcommittees
.\" on the physical media.
.>>>>
.so reach.code.pic
.Caption
Roy Reach's proposed major usage subset, January 24, 1961.\c
.Ref reach-jan-24-1961
.<<<<
.>>>>
.so porter.code.pic
.Caption
64-character subset of S. Porter's ``preliminary
symbol and code assignment for a 256 character set,''
January 25, 1961.\c
.Ref porter-jan-25-1961
.<<<<
.PP
The March 8-9, 1961 meeting of X3.2
finally led to a code
(based on a proposal by Robert\~W. Bemer,
Howard\~J. Smith,
and F.\~A. Williams)
that nearly everyone could
agree upon\(em\c
but there is some disagreement about exactly what it was
that was agreed.
According to the minutes of the meeting,
two codes
(\*[Figure]a
.nr Marchfig \n[Figure]
and \n[Marchfig]b)
``were identified which seemed to accomplish most of
the objectives.
These are to be studied so that a single proposed code
can be identified at the next meeting.''\c
.Ref x3.2-mar-8-1961
According to Roy Reach's report to fellow Honeywell employees,
though, it was the code in Figure \n[Marchfig]c, which
left several assignments still to be determined, that
``was agreed upon as a first approach, meeting almost
unanimous agreement.''\c
.Ref reach-mar-14-1961
And in the May, 1961
.I "Communications of the ACM"
article by Bemer, Smith,
and Williams,
it is
the two codes Figure \n[Marchfig]d and \n[Marchfig]e
that have the caption of ``the proposed standard code.''\c
.Ref bemer-may-1961
Of these five codes,
the second one from the minutes (Figure \n[Marchfig]b)
is notable for its attempt to place characters that would
appear on the same key of a keyboard in the same row
of columns 0 and 1.
.\" All these codes are clearly related, but they are not the same.
.>>>>
.so chart-mar-8-1961
.Caption
Conflicting reports of the March, 1961 X3.2 code proposal.
(a) first proposal, from minutes;
(b) second proposal, from minutes;\c
.Ref x3.2-mar-8-1961
(c) proposal, as reported by Reach;\c
.Ref reach-mar-14-1961
(d) data processing code, from CACM;
(e) transmission code, from CACM.\c
.Ref bemer-may-1961
.<<<<
.\" .>>>>
.\" .so mar-8-1961-1.code.pic
.\" .Caption
.\" First X3.2 code proposal, March 8-9, 1961.\c
.\" .Ref x3.2-mar-8-1961
.\" .<<<<
.\" .>>>>
.\" .so mar-8-1961-2.code.pic
.\" .Caption
.\" Second X3.2 code proposal, March 8-9, 1961.\c
.\" Ref: x3.2-mar-8-1961
.\" .<<<<
.\" .>>>>
.\" .so mar-8-1961-reach.code.pic
.\" .Caption
.\" ``First Proposal for Standard Code Set by ASA X3-2,''
.\" March 8-9, 1961.\c
.\" .Ref reach-mar-14-1961
.\" .<<<<
.\" .>>>>
.\" .so improved-transmission.code.pic
.\" .Caption
.\" ``The Proposed Standard Code: Transmission Code,'' March 15, 1961.\c
.\" .Ref bemer-may-1961
.\" .<<<<
.\" .>>>>
.\" .so improved-data.code.pic
.\" .Caption
.\" ``The Proposed Standard Code: Data Processing Code,'' March 15, 1961.\c
.\" .Ref bemer-may-1961
.\" .<<<<
.SH
A seven-bit code
.endSH
.PP
Whatever may have been agreed,
the basic structure of the code was not yet settled.
At an April 26-27 meeting,
X3.2 members discussed the idea of
creating a family of related codes of different
sizes rather than a single code.
There would be a four-bit numeric set,
a shifted five-bit set like International Telegraph Alphabet No.\~2,
a six-bit set for data processing,
a seven-bit set for communications or data processing,
and an eight-bit expanded set.\c
.Ref x3.2-apr-26-1961
At an informal meeting
held during the Western Joint Computer Conference,
May 8-11, 1961
the seven-bit set ``was identified as the prime set
for information interchange and communication.''\c
.Ref x3.2-may-8-1961
.PP
In May, the seven-bit set was conceived as having
64 control characters
in the first half and 64 printing characters
in the second half,
the same arrangement used in a seven-bit, extended
version of the FIELDATA code.
But this was impossible because the
.Ctrl delete
control character
had to be the character with all bits set,
and therefore had to be located at the bottom
of the rightmost row.
It was also impossible to make the first half of the code
a block of 64 printing characters,
because the
.Ctrl null
control character had to have
no bits set and therefore had to occupy the top position
of the leftmost row.
So at the June 7-8, 1961 meeting, the printing characters
were shifted into the middle 64
of the 128 characters of a seven-bit set (\*[Figure]).\c
.nr Junefig \n[Figure]
.Ref x3.2-jun-8-1961
.>>>>
.so x3.2-june-8-1961.code.pic
.Caption
X3.2 code, June 7-8, 1961.\c
.Ref x3.2-jun-8-1961
.<<<<
.PP
Several characters appear in the June 7-8, 1961 code
that have not been previously mentioned.
In particular there seems to have been an attempt to
fill column three entirely with mathematical symbols
in an effort to make it suitable for use as
a four-bit numeric subset.
The
.Code "angular tilde"
(\*[angle-tilde])
had appeared before, in IBM's June 1960 Extended Character Set (\*[Figure]),\c
.Ref bemer-june-1-1960 mackenzie-1980
where it represented a hyphen, and where the
.Code "horizontal line"
symbol (\-)
was used only for the minus sign.
Here the situation seems to have been reversed, as the
.Code tilde
is grouped with the mathematical symbols and the
.Code "horizontal line"
with the punctuation.
In either case, the
.Code "angular tilde"
appears to be unrelated to the
.Code "tilde"
diacritical mark (\*[tilde]).
.>>>>
.so ecs.code.pic
.Caption
An Extended Character Set Standard, June 1, 1960.\c
.Ref bemer-june-1-1960
.<<<<
.PP
The
.Code up
(\*[up-arrow]) and
.Code left
(\(<-) arrows
are probably in the code for the convenience of Algol programmers
(although a 1978 article by Robert W. Bemer\c
.Ref bemer-1978
seems to suggest that the two characters were included at
Teletype's request).
In contrast to the Fortran programming language,
in which ``there is a separate key on the keypunching device
for each character used in FORTRAN statements... [and]
keypunching a FORTRAN program is therefore a process similar
to that of typing the program,''\c
.Ref fortran-1957
Algol programs are written on paper in a ``reference language,''
printed in a ``publication language,''
and entered into a particular computer
by transliterating them into a ``hardware representation''
appropriate to that computer.\c
.Ref algol-58
Transliterating the reference language into anything
very far removed from it
tends to make programs unreadable,\c
.Ref sammet
so character codes were soon proposed that would
allow the hardware representation to be as close as possible
to the reference language.\c
.Ref bright-sep-11-1958 bright-1959 some-algol-char-code-thing
.PP
In the Algol publication language,
exponents are written using superscripts.
In Algol 58,
the corresponding reference language used paired arrows
to suggest the start and end of the superscript.
For example, 2\*{5\*} in the publication language
became 2\*[up-arrow]5\*[down-arrow] in the reference language.
In 1959, Herbert Kanner proposed that a single arrow
be used instead (2\*[up-arrow]5),\c
.Ref kanner-june-1959
and his suggestion was adopted in Algol 60.\c
.Ref algol-60
The
.Code "left arrow"
(\(<-) has a less direct connection to Algol.
The
.I do
statement in
Algol 58
used a right arrow character (\(->),
but according to
Herb Bright, many Americans would have
preferred to use a left arrow instead.
They ``yielded on this
item to the Europeans,'' but
one of Bright's Algol-oriented character code proposals
left open the option to point it left instead.\c
.Ref bright-sep-11-1958
.PP
The code of Figure \n[Junefig]
was designed with politics as well as technical issues in mind.
On April 25, 1961,
the Committee on Military Systems Technical Standards
had informed a delegation from X3.2 (John Auwaerter,
L.\~L. Griffin, Irving Liggett, and Allen\~L. Whitman) that
``the military, for lack of an industry standard and lack
of definitive action to establish such a standard,
developed their own standard, Fieldata....
An industry standard which is different from the mil[itary]
standard would have to present strong advantages over the mil[itary]
standard before it would gain acceptance by the military.''\c
.Ref x3.2-april-26-1961
So the June X3.2 code
was designed so that reordering code
columns 4, 5, 2, and 3 as columns 0, 1, 2, and 3, respectively,
would at least put the letters and digits in the same places
FIELDATA put them.
This would
maximize the palatibility of the X3.2 code
to the Department of Defense and minimize the difficulty
of building translators to interoperate with existing FIELDATA equipment.
There was even talk of naming the code Fieldata II or Fieldata 1961
to emphasize the codes' similarities.\c
.Ref macon-june-9-1961
.PP
There was also a second version of the X3.2 code,
with the characters arranged
for international compatibility rather than military compatibility.
In January, 1961, Hugh McGregor Ross had published an article
about the character code of the Ferranti Orion
and Atlas computers.\c
.Ref ross-jan-1961
Several versions of this code were proposed to the
British Standards Institution (BSI) as possible standards,
notably the six-bit code shown in \*[Figure].
Ross and X3.2 alternate Robert\~W. Bemer
had met in February, 1960,\c
.Ref bemer-1972
and the second version of the X3.2 code (\*[Figure])
was arranged so that the most important characters
in its columns 2, 3, 4, and 5
would match Ross's columns 0, 1, 2, and 3.
.>>>>
.so ross.code.pic
.Caption
BSI Proposed Standard 6-Track Tape Code,
January 23, 1961.\c
.Ref ferranti-apr-1961
.<<<<
.>>>>
.so x3.2-june-8-1961-2.code.pic
.Caption
``X3-2 Code Alphabet Set Being Studied for International Compatibility,''
June, 1961.\c
.Ref june-8-1961-codes
.<<<<
.PP
The June 7-8 proposal, in either of its versions,
made only minimal concessions to keyboard design.
On July 11, 1961,
John Auwaerter sketched the keyboard
that would naturally result from the X3.2 code
(\*[Figure]),
leading Allen\~L. Whitman to comment that
``from the standpoint of ordinary Bell System teletypewriter
operation, this keyboard is in my opinion a monstrosity.''\c
.Ref whitman-jul-12-1961
It appears that, as a result, on August 4,
either X3.2 members or Whitman
designed an altered code (\*[Figure]) that
could be produced by a keyboard much closer to that of
a standard electric typewriter (\*[Figure]).
.>>>>
.so kbd-monster
.Caption
``Proposed Keyboard Layout Based on X3-2 Subcommittee 7-Bit
Code of June 9, 1961.''\c
.Ref whitman-jul-12-1961
.<<<<
.>>>>
.so x3.2-aug-4-1961.code.pic
.Caption
X3.2 code, August 4, 1961.\c
.Ref alw-aug-4-1961
.<<<<
.>>>>
.so kbd-aug-4-1961
.Caption
``Keyboard Layout Based on X3-2 Subcommittee 7-Bit Code
of August 4, 1961.''\c
.Ref alw-aug-4-1961
.<<<<
.\" .PP
.\" (The introduction of the
.\" electric typewriter keyboard layout is often credited
.\" to IBM's typewriter division.
.\" .\" XXX find cite
.\" This division began as an independent company,
.\" Electromatic Typewriters, Inc., in 1923.
.\" Electromatic's first electric typewriter, introduced around
.\" May, 1930,
.\" used the traditional manual typewriter layout
.\" which pairs 2 with quote ("), 6 with underline (_),
.\" 8 with apostrophe ('),
.\" minus (\-) with asterisk (*), and at (@) with cents (\(ct).\c
.\" .Ref electromatic-jul-1930
.\" The company first used the ``electric'' layout,
.\" which pairs 2 with at (@), 6 with cents (\(ct),
.\" 8 with asterisk (*), minus (\-) with underline (_),
.\" and apostrophe (') with quote ("),
.\" in a 1931 model designed for stencil cutting.
.\" The rearrangement put two characters of approximately
.\" equal size on each key,
.\" making it mechanically feasible to ensure that
.\" ``the type impression... is even and uniform because
.\" each character receives the correct power impulse,
.\" entirely independent of the operator's touch.''\c
.\" .Ref electromatic-oct-1931
.\" IBM purchased Electromatic
.\" around August, 1933\c
.\" .Ref electromatic-aug-1933
.\" and continued to use the modified keyboard
.\" arrangement in later typewriters.)
.SH
Movement toward a draft standard
.endSH
.PP
The September 14-15, 1961
meeting of X3.2 saw further revisions of the printing
characters of the code
and the most elaborate plans so
far for the arrangement of the control characters.
The
.Code "angular tilde"
(\*[angle-tilde]),
.Code "multiplication sign"
(\(mu),
and
.Code "vertical line"
(\*[vertical-bar])
were deleted and replaced by
an
.Code "at sign"
(@) and
.Code less-than-or-equal-to
(\(<=)
and
.Code greater-than-or-equal-to
(\(>=) operators.
A motion was specifically passed
``to try to design a 7 bit set with due consideration
for the requirements of an 8 bit set and the keyboard,''
so the code that resulted from this meeting made for a
better keyboard than the one from June (but not as good
as the proposal from August).
\*[Figure] is the code as it appeared in the minutes of the meeting.\c
.Ref x3.2-sep-14-1961
(Honeywell representative Roy Reach's drawing of the code chart
showed a lowercase alphabet in columns 6 and 7, an addition that
would not officially be made until the end of 1963.)
According to Reach,
the committee was ``attempting to prepare
a report to X3 for a recommended standard Character Set by
early November.''
He further reported that all members were in agreement
except Howard Smith of IBM,
and that IBM's alternate member, Robert W. Bemer, had nevertheless
indicated that IBM
``would be very pleased with this proposed Character Set
and would go along with it.''\c
.Ref reach-sep-18-1961
.>>>>
.so x3.2-sep-14-1961.code.pic
.Caption
X3.2 code, September 14-15, 1961.\c
.Ref x3.2-sep-14-1961
.<<<<
.\" .>>>>
.\" .so x3.2-sep-14-1961-reach.code.pic
.\" .Caption
.\" X3.2 code, September 14-15, 1961,
.\" as reported by Roy Reach.\c
.\" .Ref reach-sep-18-1961
.\" .<<<<
.PP
On September 28, 1961,
Bemer wrote to the members of X3.2
that he should have suggested at the meeting
that the committee not add
.Code less-than-or-equal-to
(\(<=)
and
.Code greater-than-or-equal-to
(\(>=) signs to the code,
but instead also remove the
.Code not-equal-to
(\(!=) sign
and assign the three characters' positions to
.Code left
(\|[\|)
and
.Code right
(\|]\|)
.Code brackets
and a
.Code "reverse slash"
(\|\e\|).\c
.Ref bemer-sep-28-1961
He cited statistics indicating that the three symbols
he proposed to replace were rarely used in actual Algol programs
and that the
.Code brackets
were very frequently used.
The
.Code "reverse slash" ,
he explained, could be combined with
the
.Code slash
to form approximations of Algol's
logical \fIand\fP (\(AN, \fC/\e\fP)
and logical \fIor\fP (\(OR, \fC\e/\fP) operators,
and by itself
could represent a ``reverse division''
operator, as it had in the IBM Extended Character Set.\c
.Ref bemer-june-1-1960
In addition to this prior use in computing,
there was also a precedent for including the
.Code "reverse slash"
in communications codes:
a 1937 manual and 1945 parts list show the character
on the keyboard of a Teletype Wheatstone Perforator.\c
.Ref teletype-wheatstone-1937 teletype-wheatstone-1945
.PP
At the November 8-10, 1961 X3.2 meeting,
the proposed character substitutions were unanimously approved
and the control characters were repeatedly rearranged.
(The
.Ctrl acknowledge
character was placed in position 7/12 because
that position's bit pattern, 1111100\*<2\*>,
is easy to generate mechanically.
The September, 1961 code had put it in position 6/0,
which also has a mechanically convenient bit pattern:
1100000\*<2\*>.
Some International Telegraph Alphabet No.\~2 equipment
used the
.Code "letter V"
(\*0\*1\*1\*1\*1)
as an acknowledgement character\c
.Ref tyberghien-1962
for the same reason.)
A motion was passed to give the draft the name
``Proposed American Standard Code for Information Interchange,''
the word ``proposed'' to be deleted when the code was approved
as a standard.\c
.Ref x3.2-nov-8-1961
The corresponding acronym, ASCII,
was pronounceable enough that it became the colloquial name
for the code.
A draft of the proposed standard (\*[Figure]) was
distributed on November 28.\c
.Ref x3.2-nov-28-1961
.>>>>
.so x3.2-nov-28-1961.code.pic
.Caption
Proposed American Standard Code for Information Interchange,
November 28, 1961.\c
.Ref x3.2-nov-28-1961
.<<<<
.SH
Internationalization
.endSH
.PP
While the letters, digits, and parentheses of the X3.2 code had been
arranged for
compatibility with a proposed British standard,
and X3.2 had been represented at
the first meeting
of the International Organization for Standardization
Technical Committee 97  Working Group B (ISO/TC 97/WG B) on May 18, 1961,\c
.Ref tc97-may-18-1961
most of the details of the proposed American
standard had been worked out without any
coordination with other standards organizations.
To rectify this, in January, 1962,
John Auwaerter and Leon Bloom travelled to Europe
to meet many of the people who were working on
character code standards there.
.PP
Their first destination was Paris, France,
where they spent January 3-5.\c
.Ref agenda-jan-62
There they learned from H.\~Feisell,
the chairman of TC 97,
that only three groups were likely to have
character code proposals ready to present
before TC 97's October meeting:
the American Standards Assocation (ASA),
the British Standards Institution (BSI),
and possibly the European Computer Manufacturers Association (ECMA).\c
.Ref bloom-jan-62
All three of these groups were already in agreement about
the locations of the digits and letters in a six-bit code.
The BSI and ECMA further agreed that,
in the six-bit code, the controls should be in the first half
of column 0 and the most important symbols in the bottom half
of the same column,
while the Americans had stopped including controls in their six-bit
set and had spread symbols through the entire column.
.PP
This was only a minor incompatibility, though,
and it was agreed that ``it would be highly desirable if
a single proposal from all three groups could be developed
in time for the TC-97 meeting so as to avoid further
solidifying each of their positions along different lines.''
In Munich, Germany, January 16-17,
Dr. Lockemann, the chairman of ECMA TC-1,
``expressed wholehearted approval'' of the idea of a unified proposal
and invited X3.2 representatives to attend the March meeting of
TC-1.
.PP
At that March meeting,\c
.Ref ecma-mar-8-1962
Hugh McGregor Ross
proposed that the seven-bit code be structured for six-bit
compatibility by dividing the controls into four distinct
sections of eight characters apiece:
switching system controls, page format controls,
information separators,
and terminal controls.
As Dr. Neubauer of Lorenz had proposed January 18-19,\c
.Ref bloom-jan-62
the page format controls
.Ctrl "carriage return" , (
.Ctrl "line feed" ,
.Ctrl "horizontal tab" ,
.Ctrl "vertical tab" ,
and
.Ctrl "form feed" )
would be arranged in a hierarchical order so that
they could also be used as data delimiters in the six-bit set.
.PP
There was also discussion of how to arrange the punctuation
in a universally acceptable way.
The British wanted a four-bit decimal subset to include
digits
.Code 0
through
.Code 9
plus
.Code 10
and
.Code 11 ,
.Code period
(\|.\|),
.Code slash
(\|/\|),
.Code minus
(\-) and
.Code plus
(+).
ECMA wanted the following additional symbols to be
included in the six-bit set:
.Code parentheses
(\fC(\fP and \fC)\fP),
.Code comma
(\|,\|),
.Code asterisk
(*),
.Code ampersand
(\*(AM),
.Code percent
(%),
.Code equals
(=),
.Code apostrophe
(\|'\|), and
.Code semicolon
(\|;\|).
Six-bit (\*[Figure])
and seven-bit (\*[Figure])
codes were arranged that would meet most of these requirements,
but the
.Code "percent sign"
was left out of the six-bit code.
The
.Code colon
and
.Code "dollar sign" ,
which had no international support,
were arranged so that they would
be displaced by the
.Code 10
and
.Code 11
when necessary.
.>>>>
.so ecma-mar-1962-6.code.pic
.Caption
Six-bit code from ECMA TC-1 and ASA X3.2 joint meeting,
March 8-9, 1962.\c
.Ref ecma-mar-8-1962
.<<<<
.>>>>
.so ecma-mar-1962-7.code.pic
.Caption
Seven-bit code from ECMA TC-1 and ASA X3.2 joint meeting,
March 8-9, 1962.\c
.Ref ecma-mar-8-1962
.<<<<
.PP
Allen\~L. Whitman remained
dissatisfied with the keyboard that would correspond to
this code.
On April 2, 1962, he observed that ``the X3.2 Subcommittee
at its regular meeting in Chicago on April 11-13 will consider
the possibility of making changes in the proposed American
Standard Code''
and submitted another proposal of his own
because ``this is the last minute at which such changes
could be considered at all.''\c
.Ref whitman-april-2-1962
Whitman's proposal (\*[Figure])
paired, for the first time, the
.Code comma
(\|,\|) and
.Code period
(\|.\|)
with the
.Code less-than
(\*(LT) and
.Code greater-than
(\*(GT) signs, respectively,
and ordered the symbols paired with the numbers
approximately as they would have been on the keyboard
of a manual typewriter.
The April X3.2 meeting yielded yet another possible code
(\*[Figure]),
this one incorporating some of Whitman's proposals
but in other ways remaining closer to the proposed standard
from the previous November.
.>>>>
.so whitman-april-62.code.pic
.Caption
Printing characters from
seven-bit code proposed by Allen\~L. Whitman,
April 2, 1962.\c
.Ref whitman-april-2-1962
Heavy borders indicate characters paired differently
from the March 8-9 code.
.<<<<
.>>>>
.so x3.2-april-1962.code.pic
.Caption
Code from X3.2 meeting, April, 1962.\c
.Ref x3.2-april-1962
Heavy borders indicate characters paired differently
from Whitman's April 2 proposal.
.<<<<
.SH
Working Group B meets
.endSH
.PP
The design of the possible international standard solidified further at
the May 2-4, 1962 meeting of ISO/TC 97/WG B.\c
.Ref wgb-may-2-1962
First the German Standards Organization
presented a code (\*[Figure])
similar to the one being proposed by the BSI, ECMA, and ASA,
but with the alphabet beginning at the top
of the column rather than offset by one position.
(The reason for the one-character offset has never been explained
very well.
Ross's 1961 article only says that ``it has been found preferable
that letter A should have position 1, B, 2, etc., as in most
British 5-track computer codes.'')\c
.Ref ross-jan-1961
E.\~G. Cluff presented the joint proposal from the BSI, ECMA, and ASA.
A small group was then formed to work
out a compromise.
Its members were
Leon Bloom (NCR, U.S.A.),
Mr. Durand (Bull, France),
Mr. Lockemann (Siemens \*(AM Halske, Germany),
and Hugh McGregor Ross (Ferranti, U.K.),
who had submitted the proposals;
P. Bienfait (Union Internationale des Chemins de Fer),
E.\~G. Cluff (I.C.T., ECMA),
and Richard Gottlieb (Olivetti, Italy),
who would observe;
and H.\~Feisell (Bull, France), the president of WG B.
.>>>>
.so german-apr-1962.code.pic
.Caption
German code proposal, April, 1962.\c
.Ref wgb-may-2-1962
.<<<<
.PP
The group met the morning of May 3
and returned with two possible arrangements of the controls
(A and B, \*[Figure]) and a preliminary arrangement of the printing characters.
No agreement could be reached that afternoon about which
ordering of the controls was better.
The next morning, the group met again from 8:45 to 10:30,
and returned with a complete plan for ordering the characters
in the symbols and digits columns.
The characters in the column adjacent to the digits were
specifically chosen so they would
be paired appropriately on a keyboard (\*[Figure]).
Code tables were worked out for the combination of each of the two
possible arrangements of the controls with these symbols.
In an informal vote,
Germany supported arrangement A; France, Great Britain,
and the U.S.A. supported arrangement B;
and Italy abstained.
\*[Figure] and \*[Figure] are the six- and seven-bit
codes of the majority preference, solution B.
.>>>>
.so chart-wgb-controls
.Caption
Control arrangements A and B,
ISO/TC 97/WG B meeting,
May 2-4, 1962.\c
.Ref wgb-may-2-1962
.<<<<
.>>>>
.so kbd-model35
.Caption
Keyboard of Teletype Model 35 tele\%printer (1964),\c
.Ref smith-april-1964
showing character pairings established in 1962 by the ISO/TC 97/WG B
character code proposal.
.<<<<
.>>>>
.so wgb-may-1962-6.code.pic
.Caption
Six-bit code B,
ISO/TC 97/WG B meeting,
May 2-4, 1962.\c
.Ref wgb-may-2-1962
.<<<<
.>>>>
.so wgb-may-1962-7.code.pic
.Caption
Seven-bit code B,
ISO/TC 97/WG B meeting,
May 2-4, 1962.\c
.Ref wgb-may-2-1962
.<<<<
.PP
In the United States, X3.2 quickly revised its
code to match what was agreed upon at the ISO meeting.
They proposed, though, to interchange the agreed positions of
the
.Code asterisk
(*) and
.Code plus
(+) signs with
those of the
.Code colon
(\|:\|) and
.Code semicolon
(\|;\|), respectively,\c
.Ref bloom-may-28-1962
so that the
.Code plus
and
.Code asterisk
would be retained
when the
.Code 10
and
.Code 11
characters were needed,
a change also supported by ECMA.\c
.Ref bemer-1972
.\" XXX say something better
A copy of the code, dated May 25, 1962,
was submitted to the X3 committee
for consideration as the proposed American Standard Code
for Information Interchange.\c
.Ref x3.2-may-25-1962
.SH
The Hollerith challenge
.endSH
.PP
Not everyone, though,
was happy about the idea of standardizing a character code
that had never been tried on any existing equipment,
even if it did have international support.
On March 9, 1962, the Office Machines Group Engineering Committee
of X3.2's sponsor,
the Business Equipment Manufacturers Association,
declared that the proposed standard code could not
be implemented economically in office equipment
and recommended that the X4 committee on Office Equipment
urge X3 ``to direct X3.2 to consider rearrangement of
the proposed graphic subset so as to make it more closely
compatible with the Hollerith Code'' as used on punch cards.\c
.Ref x4-mar-9-1962
.PP
Punch card codes have been neglected so far in this paper.
According to Brian Randell's summary of an anonymous article
in his Annotated Bibliography on the Origins of Digital Computers,\c
.Ref randell-1979
Charles Foster invented the first alphabetic printing mechanism
for tabulating equipment in 1916.
This date is called into question, however,
by Foster's
1918 U.S. patent,\c
.Ref foster-patent
in which he refers to a British patent he had received for
an alphabetic printer in 1915.
Whenever he may have invented his first printer, it
did not do a completely satisfactory job of printing alphabetic
characters because his code (\*[Figure])
did not provide for the letters
.Code J ,
.Code V ,
and
.Code X .
By November, 1915, Robert Neil Williams had developed
a second alphabetic printer for punch cards that used
a different encoding (\*[Figure])
to support the entire alphabet.\c
.Ref williams-patent
.>>>>
.so chart-foster
.Caption
Charles Foster's alphabetic card code,
September 18, 1917.\c
.Ref foster-patent
.<<<<
.>>>>
.so chart-williams
.Caption
Robert Neil Williams's alphabetic card code,
November 13, 1915.\c
.Ref williams-patent
.<<<<
.PP
One descendant of the Williams code
that was still in use decades later can be seen in
an April, 1961 article by Hugh McGregor Ross,\c
.Ref ross-april-1961
as can several others designed along different lines.
IBM's earliest alphabetic code (\*[Figure]a)
.nr Hollerithfig \n[Figure]
was mostly a copy of the Williams code but replaced the
.Code hyphen
(\-) with a character for
.Code Mc
and shifted the remaining
characters so they were still in alphabetical order.
IBM employees then experimented for several years with many other
possible ways to assign letters to punch card codes
(Figures \n[Hollerithfig]b-\n[Hollerithfig]g)
before eventually settling on the code in Figure \n[Hollerithfig]h.
Unlike most of the other codes in Figure \n[Hollerithfig],
this code preserves the traditional use of punches 0 to 9 to
encode the digits, arranges the letters in such a way that they
are easy to sort, and preserves the structural stability of cards
by never punching holes in adjacent rows of the same column.
.>>>>
.so ancient.pic
.Caption
Some of the punch card codes cited by inventors who assigned
patents to IBM in the late 1920s
and early 1930s.\c
.Ref bryce-oct-1932 dechene-mar-1933 peirce-jul-1932 bryce-sep-1933 peirce-feb-1933 tauschek-aug-1935 carroll-nov-1934 mills-oct-1935
.<<<<
.PP
This is the ``Hollerith'' code with which the X4 committee wanted the
standard code to preserve compatibility.
Charles E. Mackenzie of IBM brought
one possibility for a Hollerith-compatible code
to the attention of X3.2 in August, 1962,
when he attended the subcommittee's meeting
and presented an eight-bit ``extended character set'' or ECS (\*[Figure]).
Like the proposed standard code,
Mackenzie's was structured for easy sorting:
control characters would sort earliest,
then space, then punctuation, then letters,
and then digits.
And to an even greater extent than the proposed standard,
his code was designed so that the type of a character
could generally be distinguished by its binary pattern
(for instance, any character with the code 1111xxxx would be a digit).
.PP
The main appeal of Mackenzie's code, though,
was its relationship to the Hollerith code.
Earlier in 1962, IBM had established an internal
standard for the six-bit binary representation
of the decimal-oriented Hollerith card code,
which was referred to as the Binary Coded Decimal Interchange Code,
BCDIC
(\*[Figure]).
Mackenzie's paper claimed that eight-bit ECS characters
could be trivially translated into BCDIC-compatible six-bit characters by
stripping off the two most signficant bits.\c
.Ref mackenzie-aug-1962
The actual code presented in the paper seems to require
a somewhat more complicated transformation to get from ECS to BCD.
.>>>>
.so ebcdic-aug-1962.code.pic
.Caption
``A Compatible 8-Bit ECS Code for Information Interchange,''
August 17, 1962.\c
.Ref mackenzie-aug-1962
.<<<<
.>>>>
.so bcdic.code.pic
.Caption
IBM's Binary Coded Decimal Interchange Code, 1962.\c
.Ref bcdic-1962
.<<<<
.PP
The members of X3.2 were not convinced.
John\~B. Booth moved that ``the material proposed by Mr. Mackenzie...
has been reviewed and, since it is based on a structure which was
rejected earlier by X3.2, the X3.2 subcommittee does not recommend
revision or withdrawal of ASCII of May 25, 1962.''
After a seven-to-one vote (with one abstention) in favor of Booth's
motion, discussion of the proposed code was terminated.\c
.Ref x3.2-aug-1962
But despite the X3.2 subcommittee's rejection
of the ECS code,
with several changes it eventually evolved into
EBCDIC (\*[Figure]), the character code of
IBM's 360 series computers.\c
.Ref 360
.>>>>
.so ebcdic-1970.code.pic
.Caption
Extended Binary-Coded Decimal Interchange Code (EBCDIC),
revision of August, 1970.\c
.Ref 360
.<<<<
.PP
Meanwhile, for the existing proposal there was still the question
of what should appear in the two rightmost columns of the seven-bit code.
In September, 1962, X3.2 formed a task group, X3.2.4, to study
the possibilities.\c
.Ref griffin-jan-21-1963
E.\~J. Lewis and W.\~H. McKenzie believed that the columns should
be used for additional control characters and listed 88 possibilities.
``That certain groups need the lower case alphabet is insufficient
reason for putting the alphabet into the unassigned area,''
they believed.
``Those that actually use the lower case alphabet represent a small
specialized group.''\c
.Ref lewis-mckenzie-nov-1962
(Their typed proposal, naturally, used lower case.)
But John Auwaerter wrote to K.\~J. Amos
that he believed control characters were the least likely use
to which the unassigned area might be put.
He thought a lower case alphabet was the most popular idea
and that additional programming language characters were
second in popularity.\c
.Ref auwaerter-nov-13-1962
Hugh McGregor Ross named the additional possibilities of
superscript and subscript digits and common fractions.\c
.Ref ross-may-3-1963
In the first draft of the proposed ISO standard, issued in January, 1963,
the area remained unassigned.\c
.Ref iso-jan-1963
.PP
In March, 1963,
ECMA published a six-bit code corresponding to the ISO draft
as standard ECMA-1 (\*[Figure]).\c
.Ref ecma-1
On June 17,
the American Standards Assocation followed with
X3.4-1963, its seven-bit, ISO-compatible, American Standard Code
for Information Interchange
(\*[Figure]).\c
.Ref ascii-63 ascii-63-cacm
.\" The American standard was published over the objections of
.\" its sponsor, the Business Equipment Manufacturers Assocation,
.\" which did not want to approve the code until
.\" ``it can be adapted to the common methods of machine to machine
.\" communication, i.e., paper tape, punch cards, and magnetic tape.''
.\" It might have been better to wait, actually,
.\" since the international draft standard from which it was derived
.\" was about to change incompatibly.
.>>>>
.so ecma-1.code.pic
.Caption
ECMA Standard for a 6 Bit Input/Output Character Code,
March, 1963.\c
.Ref ecma-1
.<<<<
.>>>>
.so ascii-1963.code.pic
.Caption
American Standard Code for Information Interchange,
June 17, 1963.\c
.Ref ascii-63
.<<<<
.SH
The CCITT gets involved
.endSH
.PP
The CCITT's Working Party on the New Telegraph Alphabet,
organized in December, 1960,
finally met for the first time from May 13-15, 1963.\c
.Ref ccitt-may-13-1963
There was no reason to start from scratch when the ISO
character code proposal was already so well developed,
so it was used as a starting point.
The ISO proposal, though, did not include the lower case alphabet
and the five accent marks that the CCITT considered essential.
The unassigned area was the natural place to add the lower case
alphabet, but
adding the accents as well would have
put the total number of necessary printing characters
and controls at 135, seven too many for a seven-bit character code.
ISO representatives ``stated that there were certain parts
of the 7-bit code which were `softer' than others and which
were, therefore, more readily subject to replacement''
so that the character count could be reduced.
The ``softest'' were the three characters following the alphabet,
which were already reserved for national use;
then the
.Code "at sign"
(@) and
.Code arrows
(\*[up-arrow], \(<-),
and finally, if necessary, the
.Code "exclamation point"
(!),
.Code "quotation mark"
("),
.Code "number sign"
(#), and
.Code "currency symbol" ,
all four of which were already excluded from the six-bit code.
.PP
At its October 29-31, 1963 meeting,\c
.Ref sc2-oct-29-1963
ISO/TC 97/SC 2 made changes to the proposed ISO code
to meet the CCITT's needs.
It voted to place the lower case letters in columns 6 and 7;
only France supported adding a note indicating
possible other uses for the former unassigned area.
The formerly unspecified
.Ctrl "format effector 0"
was
assigned to be the
.Ctrl backspace
character;
accented letters were to be transmitted as a sequence of
three characters: the letter,
.Ctrl backspace,
and the accent.
The
.Code "quotation mark"
(") and
.Code "apostrophe"
(') were modified
in appearance so they could also serve as
.Code umlaut
(\*[umlaut])
and
.Code acute
(\*[acute])
.Code accents ,
and the
.Code up
(\*[up-arrow]) and
.Code left
(\(<-)
.Code arrows
were removed
and replaced with
.Code circumflex
(\*[hat]) and
.Code grave
(\*[grave])
.Code accents .
The
.Code "number sign"
(#) was given an alternate meaning as the
.Code tilde
(\*[tilde]).
If the three characters following the lower case were to
be reserved for national use,
as the characters following the upper case alphabet were,
the
.Ctrl acknowledge
control would have to be moved.
Italy proposed that it be relocated to position 6/0
(as in the September, 1961 X3.2 code)
and print as an
.Code underline
(\|_\|).
.PP
By the end of the meeting,
the code table looked like \*[Figure].
A second draft proposal, incorporating the changes,
was distributed in December, 1963.\c
.Ref iso-dec-63
It gave this explanation
of the dual assignment of the
.Code tilde
and
.Code "number sign" :
``In position 2/3 of the 7-bit set, [a] unique choice should
be made between the preferred proposal to use tilde (\*[tilde])
and the second proposal to use the number sign (#).
(This note is not intended to be included in the final Recommendation),''
and included the following note for position 6/0:
``If an `Acknowledge' (Ack) signal is required it should be
coded in this position and the `Underline' sign becomes
its graphical representation.''
The code chart shows positions 2/2 and 2/7 as accent marks, but it
is clear from the text
that they still were intended as punctuation as well.
.>>>>
.so iso-dec-63.code.pic
.Caption
ISO second draft code chart, December, 1963.\c
.Ref iso-dec-63
Heavy borders indicate additions and changes from the first draft.
.<<<<
.PP
At its December 17-18, 1963 meeting, ASA task group X3.2.4
concluded that it would rather keep
the
.Code "number sign"
(#) than the
.Code "exclamation point"
(!) so it would rather see the
.Code tilde
(\*[tilde]) replace the latter rather than the former.
Further motions established a preference to place the
.Code underline
(\|_\|)
in position 4/0, not 6/0 and the
.Code "at sign"
(@) in position 6/0, not 4/0.
An ad hoc committee (Eric Clamons, O.\~R. Arne, C.\~J. Davis,
W.\~Y. Lang, and L.\~R. Turner) was established to consider what
characters should be assigned in the United States
to the national use positions following the lower case alphabet.
They decided that a
.Code "left brace"
(\fC{\fP),
.Code "vertical line"
(\*[vertical-bar]),
and
.Code "right brace"
(\fC}\fP) would be useful and would remain comprehensible
when they were mapped onto the
.Code brackets
and
.Code backslash
in upper-case-only versions of the code.
They further decided that if the
.Code tilde
did replace the
.Code "exclamation point" ,
then the
.Code "exclamation point"
could replace the
.Code "vertical line" .\c
.Ref x3.2.4-dec-17-1963
.PP
There is no explanation in the minutes of why the task group
thought it was a good idea to switch the
.Code "at sign"
(@) and
.Code underline
(\|_\|).
Charles Mackenzie, who was present at the meeting,
explains in his book,
.I "Coded Character Sets, History and Development" ,
that ``it was forecast that, in the French national variant
of the ISO 7-Bit Code, @ would be replaced by \(`a.
Since \(`a is an accented small letter, it should be in
columns 6 or 7 where the other small alphabetics were positioned.''
He goes on to say that the U.S.A. requested the at sign in position 4/0
and France in position 6/0 and that ``it actually moved back and
forth at successive meetings,''\c
.Ref mackenzie-1980
a statement that seems to contradict both
the X3.2.4 minutes and the later ISO drafts.
Unfortunately other countries' comments on the
ISO second draft do not make the
situation any clearer.
It is recorded that the U.K. supported the switch ``having in
mind assistance to certain countries who may have difficulties
with certain extended letters''\c
.Ref iso-comments-mar-1964
and that Germany also proposed the change so that
the underline ``will then be nearer to the other special symbols.''\c
.Ref iso-german-comments-mar-1964
Whatever the reason, the
.Code underline
and
.Code "at sign"
traded places in the May 20, 1964 third draft (\*[Figure]).\c
.Ref iso-draft-may-20-1964
.\" .PP
.\" (The six-bit ISO code still contained no provision at all
.\" for accent marks beyond the three national use characters.
.\" A proposal from Poland would have added them
.\" by turning the less-than sign (<) into an acute accent (\*[acute]),
.\" the greater-than sign (>) into a grave accent (\*[grave]),
.\" and the equals sign (=) into an umlaut (\*[umlaut]).
.\" They considered relations such as ``\fIa\fP \*[acute] \fIb\fP''
.\" to be comprehensible as meaning ``\fIa\fP < \fIb\fP''
.PP
The third draft incorporated several additional changes
resulting from the May, 1964 meeting of several ISO subcommittees
in New York.\c
.Ref iso-may-1964
The number of
.Ctrl "information separators"
was reduced to four
(and they were given names)
to make room for changes to the control characters,
most notably the relocation of
.Ctrl acknowledge
to position 0/6
and
.Ctrl escape
to position 1/11.
The third draft also deleted the
.Code "dollar sign"
($) and
.Code backslash
(\|\e\|)
and made their former positions into
.Code first
and
.Code "second currency symbols"
to be assigned by each country.
Positions 2/2 and 2/7 returned to being shown in the code table
as
.Code "quotation mark"
(") and
.Code "apostrophe"
(') symbols rather than
.Code umlaut
(\*[umlaut]) and
.Code acute
(\*[acute])
.Code accents ,
though the characters continued to serve dual purposes.
The
.Code tilde
(\*[tilde]) was removed from the
.Code "number sign" 's
position (#),
but the latter gained a new alternate appearance (N\*{o\*}).
(At the time,
the ``#'' symbol was not used internationally.
Hugh McGregor Ross's attempt to justify to British readers
why it was in the code in the first place
does not sound very convincing:
``The symbol # means the same as No., and it can be very useful.'')\c
.Ref ross-oct-1964
The displaced
.Code tilde
became an alternate graphic for the
.Code circumflex
(\*[hat]) accent, as it was (erroneously) believed
that no language used both accents.
.>>>>
.so iso-may-64.code.pic
.Caption
ISO third draft, May 20, 1964.\c
.Ref iso-draft-may-20-1964
Heavy borders indicate changes from the second draft.
.<<<<
.PP
The relocation of
.Ctrl escape
had opened up a fourth national use
position following the lower case alphabet.
At its July 14-15, 1964 meeting, task group X3.2.4
voted to use it in the United States for a logical
.I not
sign or
.Code overline
(\*[not-sign]).
A second motion that would have reversed the positions of the
.Code backslash
(\|\e\|,
which the U.S. intended to keep rather than replace it with a
.Code "second currency symbol" )
and
.Code "vertical line"
(\*[vertical-bar]) was defeated.
.\" XXX include US code chart at this point?
.PP
The CCITT Working Group on the New Alphabet met again
in Geneva, October 6-9, 1964.\c
.Ref ccitt-oct-6-1964
The German and Swiss delegations made the case for accent
characters that did not cause a space and therefore did not
require the use of a
.Ctrl backspace
character between them and
the letter to be accented.
The proposal was defeated because
.Ctrl backspace
can also be used with
the
.Code underline
character (\|_\|) to underline text.
The Portuguese delegation informed the working group
that both the
.Code tilde
(\*[tilde]) and
.Code circumflex
(\*[hat])
are used in the Portuguese language with different meanings.
To accomodate both accents, the working group removed the
.Code "second currency symbol"
from position 5/12 and put the
.Code tilde
there.
.PP
The
.Code underline
(\|_\|) was moved again after the USSR informed
the working group that it needed 31 characters
to accomodate each case of the Cyrillic alphabet.
The upper case
would occupy all of columns 4 and 5 except for position 5/15.
The
.Code "grave accent"
(\*[grave]), which had been in position 5/15,
was useless for Russian, but the
.Code "underline"
was not,
so the two characters had their positions reversed.
It was further decided that it was too dangerous in international
communications to use currency symbols that could be localized.
Data processing representatives insisted that it was nevertheless
essential that the code contain provisions for a currency symbol
of some sort.
To allow the use of a currency symbol, but to force it to be
defined explicitly,
the Italian delegation proposed that the position for
the currency symbol be assigned to a new symbol (\(Cs)
that would denote no particular currency.
At the end of the discussions, the code table was
as shown in \*[Figure].
.>>>>
.so ccitt-oct-64.code.pic
.Caption
CCITT New Alphabet proposal, October 6-9, 1964.\c
.Ref ccitt-oct-6-1964
Heavy borders indicate changes from the ISO third draft.
.<<<<
.SH
The ill-fated ASCII-1965
.endSH
.PP
Through all of these changes,
the X3.2.4 task group had been continually updating
a proposed revision to the American Standard Code for
Information Interchange to match the changes in the
international proposals.
At a meeting October 19-21, 1964 in New York City,
the draft proposed revision (\*[Figure]) was updated to
incorporate the CCITT changes.\c
.Ref x3.2.4-oct-19-1964
There was every expectation that the next ISO draft
would make the same changes.
When the revised ISO draft appeared in March, 1965,
though,
it included the new locations of the
.Code underline
(\|_\|) and
.Code "grave accent"
(\*[grave])
but did not assign the
.Code tilde
(\*[tilde]) to position 5/12,
and instead left that position for one of two unspecified
.Code "currency symbols" .
The ISO draft did not make it to the American Standards Assocation
until April 27, 1965,\c
.Ref grey-april-27-1965
by which time the slightly incompatible
Proposed Revised ASCII had already been printed in the
\fICommunications of the ACM\fP.\c
.Ref cacm-april-1965
.>>>>
.so ascii-oct-1964.code.pic
.Caption
Proposed Revised ASCII, October 19-21, 1964.\c
.Ref x3.2.4-oct-19-1964
Heavy borders indicate additions and changes
since X3.4-1963.
.<<<<
.PP
Comments began to come in concerning the proposed revision.
W.\~E. Andrus wrote to suggest that that the
.Code "vertical line"
(\*[vertical-bar],
logical \fIor\fP) and
.Code overline
(\*[not-sign], logical \fInot\fP)
should be located somewhere other than national use positions
because of their importance to programming languages,
and that the
.Code "at sign"
(@) be placed in the middle four columns
so that it could be used in uppercase-only applications.
\*[Figure] is his suggested arrangement of the code, which
makes both the
.Code overline
and
.Code tilde
(\*[tilde]) alternate graphics for the
.Code circumflex
(\*[hat]) and adds a
.Code "cent sign"
(\(ct).\c
.Ref andrus-june-9-1965
The ISO draft standard would have allowed the
.Code "at sign"
to be the national assignment for position 5/12,
satisfying that part of his request, but the CCITT draft would not, so
the X3.2.4 task group responded that no action could be taken
until the differences between the two proposals were
resolved.\c
.Ref x3.2.4-jul-1-1965
Thomas\~E. Kurtz, the director of the Dartmouth College
computation center, wrote to express his regret that the
.Code "up arrow"
(\*[up-arrow]) had been eliminated and suggested
that it take the place of the
.Code "vertical line"
(\*[vertical-bar]).
John\~L. Little replied that
the proposal should have stated that that the character in position 5/14
was still intended to represent an
.Code "up arrow"
when it was not used
with
.Ctrl backspace
to overstrike a
.Code "circumflex accent"
(\*[hat]),
but later revisions never restored this language.\c
.Ref kurtz-dec-21-1965
.>>>>
.so andrus.code.pic
.Caption
Proposed Revised ASCII, as modified by W.\~E. Andrus,
June 9, 1965.\c
.Ref andrus-june-9-1965
Heavy borders indicate differences from October, 1964
proposed revised ASCII.
.<<<<
.PP
By the end of 1965,
in spite of these criticisms
and the lack of international agreement,
the proposed revision had been approved as the
American Standard Code, but it had not yet been published.\c
.Ref goodstat-may-24-1966
The ISO and CCITT had agreed in October to hold a joint meeting
at which they hoped to resolve the differences between their
character code proposals.
At the January 25-26 meeting of X3.2.4,
John\~B. Booth moved that X3 request that
the American Standards Assocation
delay publication of the revised standard until after
the ISO/CCITT meeting, which might allow the
.Code "at sign"
(@) to be relocated back into the center four columns as had been requested.
The group then voted to relocate the
.Code "at sign" ,
.Code tilde
(\*[tilde]),
.Code "vertical line"
(\*[vertical-bar]), and
.Code overline
(\*[not-sign]) as in \*[Figure]
if the international code that resulted from the reconcilation
would allow it.\c
.Ref x3.2.4-jan-25-1966
.>>>>
.so x3.2.4-jan-1966.code.pic
.Caption
X3.2.4 proposal to ISO and CCITT,
January 25-26, 1966.\c
.Ref x3.2.4-jan-25-1966
Heavy borders indicate diffences from October, 1964
proposed revised ASCII (X3.4-1965).
.<<<<
.SH
The ISO/CCITT joint meeting
.endSH
.PP
ISO and CCITT representatives
.\" XXX what is GM/ALP???
met jointly in Paris, France, April 26-28, 1966.\c
.Ref ecma-april-25-1966 iso-april-26-1966
An Austrian proposal (\*[Figure])
might have caused a large-scale rearrangement of the code,\c
.Ref austria-april-1966
but it had been ``resolved to discuss only those points on which CCITT
and I.S.O. did not completely agree.''
The first such disagreement was resolved
with a decision
to place a character which
could represent either a
.Code tilde
(\*[tilde])
or an
.Code overline
(\*[overline])
in position 7/14,
with notes indicating that it could be preempted for
other national use if necessary.
The
.Code "at sign"
(@) was returned to position 4/0,
its location in X3.4-1963 and in the early ISO drafts.
The
.Code "grave accent"
(\*[grave]), which had been in that position,
was relocated to 6/0.
A proposal, related to what W.\~E. Andrus
had suggested,
to make the
.Code "vertical line"
(\*[vertical-bar]) an alternate
graphic for the
.Code "exclamation point"
(!) and the
.Code "logical not sign"
(\*[not-sign]) an alternate for the
.Code "circumflex"
(\*[hat]),\c
.Ref ecma-sep-10-1965
was rejected.
.>>>>
.so austria-april-1966.code.pic
.Caption
Austrian character code proposal, April, 1966.\c
.Ref austria-april-1966
.<<<<
.PP
The main issue still to be resolved was the currency signs.
The options were (1) to use a generic
.Code "currency symbol"
(\(Cs)
or (2) to give the
.Code dollar
($) and
.Code pound
(\(Po)
.Code signs
permanent assignments.
Italy, Portugal, Switzerland, and the USSR preferred option 1;
Canada, France, Germany, the Netherlands, Sweden,
and the United Kingdom preferred option 2.
The United States wanted to see the
.Code "dollar sign"
included
but did not have an opinion about the
.Code "pound sign" ;
Japan wanted one currency symbol to be assigned
internationally and a second to be reserved for national use.
This was considered sufficient agreement to get the
.Code "dollar sign"
assigned to position 2/4.
.PP
Discussion continued about the location and appearance
of the second currency symbol.
One proposal was to put the
.Code "pound sign"
(\(Po) in position 2/3 internationally.
The U.S. proposed that if this assignment were made, there
should also be a note allowing the
.Code "number sign"
(#) to be
used in countries that did not need the
.Code "pound sign" .
The CCITT proposed that the
.Code "pound sign"
be in position 2/3
and that the
.Code "number sign"
be relocated to the national use position 5/12.
Another proposal put the same two symbols in the opposite locations.
The chairman preferred the CCITT proposal
.Code "pound sign" "" (
in 2/3,
.Code "number sign"
in 5/12) and took a vote in support of it, which passed.
The U.S. delegation asked that a vote also be taken on their
proposal
.Code pound "" (
in 2/3, except when not required), and
this also passed its vote.
.PP
The chairman then ruled that the U.S. proposal was accepted,
over the objections of ECMA:
``This proposal which had the sole objective of keeping the code
table unchanged for the U.S., was presented under the disguise
of a compromise, and when it obtained approval in an obscure
fashion only the U.S. delegation was happy,
the other delegations had obviously not realized
what they had been tricked into.''
The X3.2.4 task group later attempted to restore
a good relationship with ECMA
by offering to accept the
.Code "pound sign"
(\(Po) in
position 5/12 where the British were also willing to accept it.\c
.Ref x3.2.4-june-28-1966 x3.2.4-june-29-1966
.PP
In the United States on May 9, 1966, D.\~A. Kerr edited
the still unpublished revised American Standard Code
to incorporate the new international changes.
He took the national option to put the
.Code "number sign"
(#)
rather than the
.Code "pound sign"
(\(Po) in position 2/3,
and returned the
.Code backslash
(\|\e\|) to the now-open national use
position 5/12 that it had occupied in X3.4-1963.\c
.Ref kerr-may-9-1966
In additional revisions May 12,
he drew position 7/14 as a
.Code "wavy overline"
(\*[squiggle])
to suggest its dual meanings as
.Code tilde
(\*[tilde])
and
.Code overline
(\*[overline]).\c
.Ref kerr-may-12-1966
The resulting proposed Revised American Standard Code for
Information Interchange (\*[Figure])\c
.Ref x3.2.4-may-18-1966
was sent to X3.2 members May 20, 1966\c
.Ref bousquer-may-20-1966
and to X3 on May 24.\c
.Ref goodstat-may-24-1966
.>>>>
.so ascii-may-1966.code.pic
.Caption
Proposed Revised ASCII, May 12, 1966.\c
.Ref kerr-may-12-1966
Heavy borders indicate differences from X3.4-1965.
.<<<<
.SH
Trouble with SHARE
.endSH
.PP
In June, 1966, the ISO distributed its new draft proposal
(\*[Figure]).\c
.Ref iso-june-1966
It looked at this point as if all the important issues
that had been holding up the international character code standard
had been resolved.
But on June 8, 1966,
H.\~W. Nelson, the chairman of the SHARE (IBM user group)
character set committee, sent an angry letter saying that
``the `Proposed Revised (1966) American Standard Code for
Information Interchange' dated May 20, 1966 does
.I not
meet the needs of computer programmers!
There are no characters in the international use section
of center four column subset (2-5) which can be used
satisfactorily to represent the logical operations OR and NOT.''
He disapproved of the
.Code "vertical line"
(\*[vertical-bar])
and
.Code overline
(\*[squiggle])
because they were in the lower case region,
and of the
.Code "exclamation point"
(!) and
.Code circumflex
(\*[hat]) because
the
.Code "exclamation point"
is used for factorials
and the
.Code circumflex
looks too much like the standard
symbol for logical
.I and
(\(AN).
Neither did he approve of two-character sequences (such as \fC\e/\fP)
using the
.Code backslash .
He proposed that the code table be rearranged as
in \*[Figure].\c
.Ref nelson-june-8-1966
Additional letters from Philip\~H. Dorn, manager
of the SHARE PL/I Project,\c
.Ref dorn-june-15-1966
and Herb Van Brink,
manager of the SHARE FORTRAN Project,\c
.Ref vanbrink-june-23-1966
indicated that the programmers they represented might boycott the
proposed revised standard if it was not altered.
.>>>>
.so iso-june-1966.code.pic
.Caption
ISO draft 1052, June, 1966.\c
.Ref iso-june-1966
Heavy borders indicate differences from the fourth draft
and from the October, 1964 CCITT proposal.
.<<<<
.>>>>
.so nelson.code.pic
.Caption
Proposed Revised ASCII,
as rearranged by the SHARE PL/I Project,
June 7, 1966.\c
.Ref nelson-june-8-1966 douglas-june-17-1966
Heavy borders indicate differences
from the May 12, 1966 proposed revision.
.<<<<
.PP
The X3.2.4 task group met June 28, 1966\c
.Ref x3.2.4-june-28-1966
and tried to figure out a compromise,
but could not find any reasonable way of moving
an
.Code overline
(\*[not-sign]) and
.Code "vertical line"
(\*[vertical-bar])
into the center four columns
without disrupting the international agreement that had finally
been reached.
At the June 30 meeting of X3,\c
.Ref x3-june-30-1966
John Auwaerter proposed a way to
solve half the problem:
the hybrid
.Code "wavy overline"
(\*[squiggle]) would
become exclusively a
.Code tilde
(\*[tilde]),
and the
.Code circumflex
(\*[hat]) would
get a new curved shape (\|\*{\(ca\*}\|) and represent
both the circumflex accent and the logical
.I not .
.PP
The change to the
.Code tilde
was voted in, but the
shape of the
.Code circumflex
remained as it was.
SHARE was satisfied with the change to the
.Code tilde
but still wanted a
.Code "vertical line"
somewhere in the center four columns.
``If X3 will agree to one last, simple change to the proposed
Revised ASCII, the final requirement of PL/I users will
be satisfied....
We ask that X3 agree to interchange ! (Exclamation Point)
and \*[vertical-bar] (Vertical Line) in ASCII.
We are sure that the European programming community will
accept and support a similar change to the ISO 7-bit code.''
They threatened that ``if X3 rejects this suggestion [it]
should be aware of the consequence,
which is that ASCII will be by-passed by the programming
community, and by many users and manufacturers,
and fail to become a de facto standard.''\c
.Ref share-aug-11-1966
.PP
It was inconceivable to make such a change when
``to comply with the SHARE suggestion would undoubtably
lose more support than would be gained because of the
loss of international compatibility and the displacement
of two characters from the center 64 positions which have
had both national and international support for inclusion.''\c
.Ref phillips-nov-21-1966
But in a final attempt to appease SHARE,
on December 13, 1966
X3.2 members changed the shape of their code's
.Code "vertical line"
(\*[vertical-bar])
to a broken line (\*[broken-bar]) so that it could
not be mistaken for a logical
.I or
symbol,
and added notes to the
.Code "exclamation point"
(!) and
.Code "circumflex"
(\*[hat]) characters
suggesting that ``it may be desirable to employ
distinctive styling to facilitate their use for specific purposes as,
for example, to stylize the graphics in code positions 2/1 and 5/14
to those frequently associated with logical OR (\*[vertical-bar])
and logical NOT
(\*[not-sign]) respectively.''\c
.Ref x3.2-dec-13-1966
.PP
These changes (which were undone in the 1977 revision of ASCII)\c
.Ref ascii-77
were sufficient to gain SHARE's support
without causing any serious incompatibility with the
international standards,
and X3.4-1967 (\*[Figure])
became the United States character code standard July 5, 1967.\c
.Ref ascii-67
ECMA
had published its revised code, ECMA-6, in June.\c
.Ref ecma-6
The ISO code was published as
Recommendation 646 in December, 1967,\c
.Ref bemer-1972
and the CCITT adopted
International Alphabet No.\~5
at its 1968 con\%fer\%ence.\c
.Ref ccitt-1982
.>>>>
.so ascii-1967.code.pic
.Caption
USA Standard Code for Information Interchange,
July 5, 1967.\c
.Ref ascii-67
.<<<<
.SH
Epilogue
.endSH
.PP
Even before X3.4-1967 was published,
there was already interest in two more minor revisions.
First, the ISO code had since its first draft
allowed the use of character 0/10
for
.Ctrl "new line"
as well as for
.Ctrl "line feed" ,
but ASCII had not.
On July 5, 1967,
John\~B. Booth proposed that ASCII also include this dual meaning.\c
.Ref booth-jul-5-1967
Second,
prior to the publication of X3.4-1967
the American Standards Assocation had become the
USA Standards Institute, meaning that the code was now
formally the USA Standard Code for Information Interchange, USASCII.
On November 20, 1967, D.\~A. Kerr
proposed that the code continue to be known by its traditional name, ASCII.\c
.Ref kerr-nov-20-1967
On October 10, 1968,
a revised USA Standard with these changes was accepted.\c
.Ref ascii-1968
.PP
The U.\~S. Department of Defense's MIL-STD-188
continued to document FIELDATA through its 1969 edition,
but encouraged the use of ASCII.\c
.Ref mil-std-188c
EBCDIC and ASCII were reconciled, to an extent,
by a 1970 American standard that defined a one-to-one
correspondence between the two codes.\c
.Ref x3.26
The CCITT was dissolved February 28, 1993,
but its successor,
ITU-T,
the Telecommunications Standardization
Sector of the International Telecommunication Union,
continues to maintain the standard for
International Telegraph Alphabet No.\~2.\c
.Ref itu-t-s1
It enjoyed a brief resurgence of popularity in the mid-1970s
among computer hobbyists who discovered that five-unit teleprinters
were available for much lower prices than
comparable seven-bit equipment.\c
.Ref mcnatt-april-1977 x3.95
.PP
Several revisions of ISO 646,\c
.Ref iso646-1973 iso646-1991
International Alphabet No.\~5,\c
.Ref ira-1992
ECMA-6,\c
.Ref ecma-6
and ASCII\c
.Ref ascii-77 ascii-86
have made small changes to details of the code
and removed the anachronistic six-bit code tables,
but retain almost complete compatibility
with the seven-bit standards published in 1967-8.
The eight-bit ISO 8859-1\c
.Ref iso-8859
and ECMA-94 codes,\c
.Ref ecma-94
and the sixteen-bit Unicode,\c
.Ref unicode unicode-3
are compatible supersets of the seven-bit standard.
.SH
Acknowledgements
.endSH
.PP
This paper could not have been written without access to
the Honeywell, Inc. X3.2 Standards Subcommittee Records,
Herbert\~S. Bright Papers,
and Calvin\~N. Mooers Papers
archived at the Charles Babbage Institute
at the University of Minnesota, Minneapolis;
the Computer Standards Collection
and Western Union Telegraph Collection
at the Archives Center of the
National Museum of American History,
Smithsonian Institution, Washington, D.C.;
and the collections of the University of Chicago's
Crerar, Regenstein, and Eckhart libraries.
Bob Mackay provided the photograph of Donald Murray.
Tony Duell, Dik\~T. Winter, and John Savard
corrected several of my misconceptions about the Baudot and Murray codes.
Dennis Ritchie and Dan Strychalski
encouraged my interest in the history of the ASCII code.
Alain Roy suggested several improvements to the paper.
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
.
.
.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.ds cbi67 Honeywell Inc. X3.2 Standards Subcommittee Records, 1961-1969 (CBI 67), Charles Babbage Institute, University of Minnesota, Minneapolis
.ds cbi42 Herbert\~S. Bright Papers (CBI 42), Charles Babbage Institute, University of Minnesota, Minneapolis
.ds cbi81 Calvin\~N. Mooers Papers (CBI 81), Charles Babbage Institute, University of Minnesota, Minneapolis
.ds nbs United States National Bureau of Standards Computer Literature Collection (CBI 32), Charles Babbage Institute, University of Minnesota, Minneapolis
.
.
.ds nmah310 Computer Standards Collection, Archives Center, National Museum of American History, Smithsonian Institution
.ds nmah205 Western Union Telegraph Collection, Archives Center, National Museum of American History, Smithsonian Institution
.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
.
.
.ds Ref:booth-jul-5-1967 J.\~B. Booth, letter to L.\~L. Griffin, July 5, 1967, \*[cbi67], box 1, folder 17.
.ds Ref:randell-1979 Brian Randell, ``An Annotated Bibliography on the Origins of Digital Computers,'' \fIAnnals of the History of Computing\fP, vol. 1, no. 2, October, 1979, pp. 101-207.
.ds Ref:foster-patent Charles Foster, ``Tabulating-Machine,'' U.\~S. Patent 1,274,528, August 6, 1918.
.ds Ref:williams-patent Robert Neil Williams, ``Tabulating-Machine and Cards Therefor,'' U.\~S. Patent 1,274,484, August 6, 1918.
.ds Ref:douglas-june-17-1966 Mary L. Douglas, letter to John L. Little, June 17, 1966, \*[cbi81], box 20, folder 1.
.ds Ref:bemer-1978 R. W. Bemer, ``Inside ASCII,'' \fIInterface Age\fP, vol. 3, no. 5, May, 1978, pp. 96-102; vol. 3, no. 6, June, 1978, pp. 64-74; vol. 3, no. 7, July, 1978, pp. 80-87.
.ds Ref:x3.2-dec-13-1966 X3.2 document X3.2/475, December 13, 1966, \*[cbi67], box 1, folder 22.
.ds Ref:ross-april-1961 H. McG. Ross, ``Further Survey of Punched Card Codes,'' \fICommunications of the ACM\fP, vol. 4, no. 4, April, 1961, pp. 182-183.
.ds Ref:peirce-jul-1932 J. R. Peirce, ``Combinational Hole Punch,'' U.\~S. Patent 1,867,025, July 12, 1932.
.ds Ref:bryce-oct-1932 James W. Bryce, ``Alphabetical Code Punching Device,'' U.\~S. Patent 1,880,408, October 4, 1932.
.ds Ref:peirce-feb-1933 J. R. Peirce, ``Rotary Printing Machine,'' U.\~S. Patent 1,896,555, February 7, 1933.
.ds Ref:dechene-mar-1933 Peter Dech\(`ene, ``Printing Mechanism,'' U.\~S. Patent 1,902,060, March 21, 1933.
.ds Ref:bryce-sep-1933 J. W. Bryce, ``Printing Mechanism,'' U.\~S. Patent 1,926,892, September 12, 1933.
.ds Ref:carroll-nov-1934 F. M. Carroll, ``Printing Mechanism,'' U.\~S. Patent 1,981,990, November 27, 1934.
.ds Ref:tauschek-aug-1935 G. Tauschek, ``Printing Mechanism,'' U.\~S. Patent 2,010,652, August 6, 1935.
.ds Ref:mills-oct-1935 Albert W. Mills, ``Printing Mechanism,'' U.\~S. Patent 2,016,682, October 8, 1935.
.ds Ref:ferranti-apr-1961 \fIPunched Tape Codes\fP, list CS 394, Computer Department, Ferranti Limited, April, 1961.
.ds Ref:june-8-1961-codes ``X3-2 Code Alphabet Set Being Studied for International Compatibility,'' \*[nmah310], box 2.
.ds Ref:x3.2-april-1962 ``Recommended Code for Information Interchange for Consideration by ISO TC97 Working Group B (Based on Discussion at April ASA X3.2 Meeting)'', \*[nmah310], box 3.
.ds Ref:360 \fIA Programmer's Introduction to IBM System/360 Assembler Language\fP, minor revision, International Business Machines Corporation, August, 1970, pp. 140-141.
.ds Ref:mcnatt-april-1977 Michael\~S. McNatt, ``A Guide to Baudot Machines,'' \fIByte\fP, vol. 2, no. 4, April, 1977, pp. 12-17, 154-158; vol. 2, no. 5, May, 1977, pp. 98-104.
.ds Ref:x3.26 \fIAmerican National Standard Hollerith Punched Card Code\fP, ANSI X3.26-1980, revision of ANSI X3.26-1970, American National Standards Institute, Inc., May 2, 1980.
.ds Ref:x3.95 \fIAmerican National Standard for Information Systems\(emMicroprocessors\(emHexadecimal Input/Output, Using 5-Bit and 7-Bit Teleprinters\fP, ANSI X3.95-1982, American National Standards Institute, Inc., August 24, 1982.
.
.
.
.ds Ref:itu-t-s1 \fITelegraphy\(emAlphabetical Telegraph Terminal Equipment\(emInternational Telegraph Alphabet No.\~2\fP, ITU-T Recommendation S.1, Telecommunication Standardization Sector of ITU, March, 1993.
.ds Ref:alw-aug-4-1961 ALW, ``Basic Structure for 7-Bit Code As Proposed by X3-2 Subcommittee for Combined Communications \*(AM Data Processing,'' August 14, 1961, \*[nmah310], box 2.
.ds Ref:ccit-1926 \fIDocuments de la Premi\(`ere R\('eunion du Comit\('e Consultatif International des Communications T\('el\('egraphiques\fP, Berlin, November, 1926, vol. 2, pp. 43-102.
.ds Ref:ccit-1929-prelim \fIDocuments de la Deuxi\(`eme R\('eunion du Comit\('e Consultatif International des Communications T\('el\('egraphiques\fP, Berlin, June, 1929, vol. 1, pp. 143-178.
.ds Ref:ccit-1929-reunion \fIDocuments de la Deuxi\(`eme R\('eunion du Comit\('e Consultatif International des Communications T\('el\('egraphiques\fP, Berlin, June, 1929, vol. 2, pp. 18-26, 40-45, 67-68, 120-124.
.ds Ref:ccit-1931-prelim \fIDocuments de la Troisi\(`eme R\('eunion du Comit\('e Consultatif International des Communications T\('el\('egraphiques\fP, Berne, May, 1931, vol. 1, pp. 258-272.
.ds Ref:ccit-1931-reunion \fIDocuments de la Troisi\(`eme R\('eunion du Comit\('e Consultatif International des Communications T\('el\('egraphiques\fP, Berne, May, 1931, vol. 2, p. 136.
.ds Ref:tyberghien-1962 E.\~J. Tyberghein, ``TWX Goes Dial,'' \fIBell Laboratories Record\fP, vol. 40, no. 7, July-August, 1962, pp. 232-237.
.ds Ref:iso-8859 \fIAmerican National Standard for Information Processing\(em8-Bit Single-Byte Coded Graphic Character Sets\(emPart 1: Latin Alphabet No.\~1\fP, ANSI/ISO 8859-1-1987, American National Standards Institute, Inc., September 22, 1992.
.ds Ref:unicode Joan Aliprand, Joe Becker, Lee Collins, Mark Davis, Asmus Freytag, Rick McGowan, and Ken Whistler, as The Unicode Consortium, \fIThe Unicode Standard: Worldwide Character Encoding\fP, version 1.0, volume 1, Addison-Wesley, 1991.
.ds Ref:unicode-3 Joan Aliprand, Julie Allen, Joe Becker, Mark Davis, Michael Everson, Asmus Freytag, John Jenkins, Mike Ksar, Rick McGowan, Lisa Moore, Michel Suignard, and Ken Whistler, as The Unicode Consortium, \fIThe Unicode Standard\fP, version 3.0, Addison-Wesley, 2000.
.ds Ref:mil-std-188c \fIMilitary Standard Military Communication System Technical Standards\fP, MIL-STD-188C, United States of America Department of Defense, November 24, 1969, pp. 279-300.
.ds Ref:ecma-94 \fI8-Bit Single-Byte Coded Graphic Character Sets: Latin Alphabets No.\~1 to No.\~4\fP, ECMA-94, second edition, European Computer Manufacturers Association, June, 1986.
.ds Ref:ascii-86 \fIAmerican National Standard for Information Systems\(emCoded Character Sets\(em7-Bit American National Standard Code for Information Interchange (7-Bit ASCII)\fP, ANSI X3.4-1986, revision of ANSI X3.4-1977, American National Standards Institute, Inc., March 26, 1986.
.ds Ref:ira-1992 \fIInternational Reference Alphabet (IRA) (formerly International Alphabet No.\~5 or IA5)\(emInformation Technology\(em7-Bit Coded Character Set for Information Interchange\fP, recommendation T.50, International Telegraph and Telephone Consultative Committee, September, 1992.
.ds Ref:ascii-1968 \fIUSA Standard Code for Information Interchange\fP, USAS X3.4-1968, revision of X3.4-1967, October 10, 1968, United States of America Standards Institute, \*[cbi42], box 5, folder 13.
.ds Ref:bemer-1972 R.\~W. Bemer, ``A View of the History of the ISO Character Code,'' \fIHoneywell Computer Journal\fP, vol. 6, no. 4, 1972, pp. 274-286.
.ds Ref:mackenzie-1980 Charles\~E. Mackenzie, \fICoded Character Sets, History and Development\fP, Addison-Wesley, 1980, especially pp. 435-441.
.ds Ref:ccitt-1982 ``International Alphabet No.\~5,'' Recommendation V.3, Facsicle VIII.1, CCITT, reprinted in Harold\~C. Folts, ed., \fIMcGraw Hill's Compilation of Data Communications Standards\fP, edition II, McGraw-Hill, 1982, pp. 13-24.
.ds Ref:ascii-77 \fIAmerican National Standard Code for Information Interchange\fP, ANSI X3.4-1977, American National Standards Institute, Inc., June 9, 1977, reprinted in Harold\~C. Folts, ed., \fIMcGraw Hill's Compilation of Data Communications Standards\fP, edition II, McGraw-Hill, 1982, pp. 911-930.
.ds Ref:kerr-nov-20-1967 D.\~A. Kerr, memorandum to members of USASI X3.2 and X3.2.4, November 20, 1967, \*[cbi67], box 2, folder 21.
.ds Ref:ascii-63 \fIAmerican Standard Code for Information Interchange\fP, ASA X3.4-1963, American Standards Assocation, June 17, 1963, \*[nbs], box 228, folder 4.
.ds Ref:ascii-63-cacm ``American Standard Code for Information Interchange,'' \fICommunications of the ACM\fP, vol. 6, no. 8, August, 1963, pp. 422-426.
.ds Ref:ecma-1 \fIECMA Standard for a 6 Bit Input/Output Character Code\fP, ECMA-1, European Computer Manufacturers Assocation, March, 1963, \*[nmah310], box 4.
.ds Ref:x3.2.4-june-28-1966 ``ASA X3.2.4,'' June 28, 1966, \*[cbi81], box 20, folder 1.
.ds Ref:x3.2.4-june-29-1966 ASA Task Group X3.2.4, memorandum to ASA Subcommittee X3.2, June 29, 1966, \*[cbi67], box 1, folder 21.
.ds Ref:x3.2.4-may-18-1966 ``Proposed Revised American Standard Code for Information Interchange,'' advance manuscript, May 18, 1966, \*[cbi67], box 2, folder 12.
.ds Ref:bousquer-may-20-1966 T.\~R. Bousquet, ``Summary of Proposed Changes to the American Standard Code for Information Interchange (X3.4-1965),'' May 20, 1966, \*[cbi67], box 1, folder 23.
.ds Ref:iso-june-1966 ``Draft ISO Recommendation No.\~1052: 6 and 7 Bit Coded Character Sets for Information Interchange,'' June, 1966, \*[cbi67], box 1, folder 22.
.ds Ref:nelson-june-8-1966 H.\~W. Nelson, letter to Thomas\~B. Steel, June 8, 1966, \*[cbi67], box 1, folder 23.
.ds Ref:dorn-june-15-1966 Philip\~H. Dorn, letter to C.\~A. Phillips, June 15, 1966, \*[cbi67], box 1, folder 21.
.ds Ref:vanbrink-june-23-1966 Herb Van Brink, letter to L.\~L. Griffin, June 23, 1966, \*[cbi67], box 1, folder 21.
.ds Ref:x3-june-30-1966 ``X3 Meeting,'' January 30, 1966, \*[cbi81], box 20, folder 2.
.ds Ref:share-aug-11-1966 Ben Faden, memorandum to SHARE members, August 11, 1966, \*[cbi67], box 1, folder 21.
.ds Ref:phillips-nov-21-1966 C.\~A. Phillips, memorandum to Chairman, Information Processing Systems Standards Board, November 21, 1966, \*[cbi67], box 1, folder 22.
.ds Ref:ascii-67 \fIUSA Standard Code for Information Interchange\fP, USAS X3.4-1967, revision of X3.4-1965, United States of America Standards Institute, July 7, 1967.
.ds Ref:kerr-may-9-1966 D.\~A. Kerr, memorandum to ASA X3.2 and Associated Task Groups, May 9, 1966, \*[cbi67], box 1, folder 23.
.ds Ref:kerr-may-12-1966 D.\~A. Kerr, memorandum to members of ASA X3.2.4, May 12, 1966, \*[cbi81], box 20, folder 1.
.ds Ref:austria-april-1966 ``Proposal for a Change of the ISO 7 Bit Code,'' April, 1966, \*[nmah310], box 5.
.ds Ref:ecma-sep-10-1965 Mr. Durand, ``Contribution on 7 bit Code Modification,'' September 10, 1965, \*[nmah310], box 5.
.ds Ref:goodstat-may-24-1966 Paul\~B. Goodstat, memorandum to Members of Sectional Committee X3 and DPG Standards Committee, May 24, 1966, \*[nmah310], box 5.
.ds Ref:x3.2.4-jan-25-1966 X3.2.4 Task Group Minutes, January 25-26, 1966, \*[cbi81], box 20, folder 2.
.ds Ref:ecma-april-25-1966 A.\~J. Raphael and W. Bohn, ``I.S.O.\(emTC97/SC2, Character Sets and Coding, Paris, 25th-29th April, 1966,'' \*[nmah310], box 5.
.ds Ref:iso-april-26-1966 ``Conclusion of the Joint Meeting: ISO/TC 97/SC 2\(emCCITT/GM ALP, Paris, April 26th-28th, 1966'' amended April, 1966, \*[nmah310], box 5.
.ds Ref:x3.2.4-oct-19-1964 X3.2.4 Task Group Minutes, October 19-21, 1964, \*[nmah310], box 5.
.ds Ref:grey-april-27-1965 V.\~G. Grey, letter to the P and O members of ISO TC/97, April 27, 1965, \*[cbi67], box 1, folder 24.
.ds Ref:cacm-april-1965 ``Proposed Revised American Standard Code for Information Interchange,'' \fICommunications of the ACM\fP, vol. 8, no. 4, April, 1965, pp. 207-214.
.ds Ref:andrus-june-9-1965 W.\~E. Andrus, Jr., letter to Vico Henriques, June 9, 1965, \*[cbi42], box 5, folder 13.
.ds Ref:x3.2.4-jul-1-1965 ASA Task Group X3.2.4, ``Comments Received on ASCII Publication of prASCII, and X3 Ballot on prASCII,'' July 1, 1965, \*[cbi67], box 3, folder 8.
.ds Ref:kurtz-dec-21-1965 Thomas\~E. Kurtz, letter to Secretary, X3, December 21, 1965, \*[cbi81], box 20, folder 1.
.ds Ref:teletype-wheatstone-1937 \fIDescription and Adjustments of the Teletype Wheatstone Perforator\fP, bulletin 125, issue 2, Teletype Corporation, August, 1937.
.ds Ref:teletype-wheatstone-1945 ``Changes and Additions: Bulletin No.\~1025 (Issue 3): Parts\(emTeletype Wheatstone Perforator,'' EE-503, issue 1, Teletype Corporation, July, 1945.
.ds Ref:agenda-jan-62 ``Agenda: European Trip on Code Alphabet,'' \*[nmah310], box 2.
.ds Ref:bloom-jan-62 Leon Bloom, ``Report on Discussions between John Auwaerter and Leon Bloom of ASA X3.2 and Members of European Data Processing Community,'' January 25, 1962, \*[nmah310], box 2.
.ds Ref:ecma-mar-8-1962 J.\~B. Booth, ``ECMA TC-1 and ASA X 3.2 Joint Meeting, Rome, Italy, March 8 \*(AM 9, 1962,'' March 14, 1962, \*[cbi67], box 1, folder 3.
.ds Ref:whitman-april-2-1962 Allen\~L. Whitman, letter to W.\~T. Rea, April 2, 1962, \*[nmah310], box 3.
.ds Ref:bcdic-1962 ``Standard BCD Interchange Code,'' IBM 1401, 1410, 7044 and 7044 Data Processing Systems Bulletin, 1962, \*[nmah310], box 3.
.ds Ref:wgb-may-2-1962 ISO/TC 97/GT B minutes, May 2-4, 1962, \*[nmah310], box 3.
.ds Ref:bloom-may-28-1962 Leon Bloom, letter to J. Birle, May 28, 1962, \*[nmah310], box 3.
.ds Ref:x3.2-may-25-1962 ``Proposed American Standard Code for Information Interchange,'' May 25, 1962, \*[cbi42], box 5, folder 12.
.ds Ref:x4-mar-9-1962 ``Resolution X4-A4 Subcommittee (Input-Output) to the X4 Sectional Committee,'' \*[nmah310], box 3.
.ds Ref:mackenzie-aug-1962 C.\~E. Mackenzie, ``The Construction of 8-Bit Coded-Character Sets,'' \*[nmah310], box 3.
.ds Ref:x3.2-aug-1962 X3.2 Subcommittee Minutes, August 22-23, 1962, \*[nmah310], box 3.
.ds Ref:griffin-jan-21-1963 L.\~L. Griffin, memorandum to chairman of X3, January 8, 1963, \*[cbi67], box 1, folder 11.
.ds Ref:lewis-mckenzie-nov-1962 E.\~J. Lewis and W.\~H. McKenzie, ``Proposal to Place Additional Controls in the Unassigned Area of ASCII (Preliminary),'' \*[cbi67], box 1, folder 7.
.ds Ref:auwaerter-nov-13-1962 J.\~F. Auwaerter, letter to K.\~J. Amos, November 13, 1962, \*[cbi67], box 1, folder 7.
.ds Ref:ross-may-3-1963 Hugh McG. Ross, letter to J.\~F. Auwaerter, May 3, 1963, \*[nmah310], box 4.
.ds Ref:iso-jan-1963 ``ISO Draft proposal: 6 and 7 Bit Character Codes for Information Interchange,'' January, 1963, \*[cbi67], box 1, folder 10.
.ds Ref:sc2-oct-29-1963 L.\~L. Griffin, memorandum to members, alternates, and consultants of ASA X3.2 and task groups, November 29, 1963, \*[nmah310], box 4.
.ds Ref:iso-dec-63 ``Second ISO draft proposal: 6 and 7 Bit Character Codes for Information Interchange,'' December, 1963, \*[nmah310], box 4.
.ds Ref:x3.2.4-dec-17-1963 X3.2.4 Task Group Minutes, December 17-18, 1963, \*[nmah310], box 4.
.ds Ref:iso-comments-mar-1964 ``Letter Ballot concerning the Second Draft Proposal for an ISO Recommendation laid down in document ISO/TC 97/SC 2 (Secr.-22)75 F/E,'' March 31, 1964, \*[cbi67], box 3, folder 1.
.ds Ref:iso-german-comments-mar-1964 ``German Comments on Document ISO/TC 97/SC 2 (Secr.-22)75: Second ISO Draft Proposal, 6 and 7 Bit Character Codes for Information Interchange,'' March, 1964, \*[cbi67], box 3, folder 1.
.ds Ref:iso-draft-may-20-1964 ``Revised Technical Contents to be Included into a Third Draft Proposal on ISO 6 and 7 Bit Codes,'' May 20, 1964, \*[cbi67], box 1, folder 12.
.ds Ref:iso-may-1964 ``Brief Report of Meetings held by TC 97; 97/SC 2; 97/SC 4; 95/SC 8; 53D in New York, May, 1964,'' \*[nmah310], box 5.
.ds Ref:ross-oct-1964 H.\~McG. Ross, ``The I.S.O. character code,'' \fIThe Computer Journal\fP, vol. 7, no. 3, October, 1964, pp. 197-281.
.ds Ref:ccitt-oct-6-1964 L. Durand and G. Willibald, ``Report on Meeting of CCITT Working Group on Alphabets, held October 6-9, 1964 in Geneva, Switzerland,'' November 2, 1964, \*[cbi67], box 3, folder 3.
.ds Ref:x3.2.4-oct-19-1964 X3.2.4 Task Group Minutes, October 19-21, 1964, \*[nmah310], box 5.
.
.ds Ref:tc97-may-18-1961 ISO/TC 97 Brief Minutes, May 18, 1961, \*[nmah310], box 1.
.ds Ref:x3.2-nov-28-1961 G.\~M. Wilson, memorandum to members of X3.2, November 28, 1961, \*[nmah310], box 2.
.ds Ref:x3.2-nov-8-1961 X3.2 Subcommittee Minutes, November 8-10, 1961, \*[nmah310], box 2.
.ds Ref:bemer-sep-28-1961 R.\~W. Bemer, letter to members of X3.2, September 28, 1961, \*[nmah310], box 2.
.ds Ref:x3.2-sep-14-1961 X3.2 Subcommittee Minutes, September 14-15, 1961, \*[nmah310], box 2.
.ds Ref:reach-sep-18-1961 R.\~W. Reach, memorandum to R.\~F. Clippinger, September 18, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:whitman-jul-12-1961 Allen\~L. Whitman, letter to T.\~L. Dimond, July 12, 1961, \*[nmah310], box 2.
.ds Ref:ross-jan-1961 H.\~McG. Ross, ``Considerations in Choosing a Character Code for Computers and Punched Tapes,'' \fIThe Computer Journal\fP, vol. 3, no. 3, January, 1961, pp. 202-210.
.ds Ref:macon-june-9-1961 C.\~E. Macon, ``Summary of Data Processing Standards Activities,'' June 9, 1961, \*[nmah310], box 2.
.ds Ref:x3.2-april-26-1961 X3.2 Subcommittee Minutes, April 26-27, 1961, \*[nmah310], box 1.
.
.ds Ref:bright-sep-11-1958 H.\~S. Bright, SHARE XI, San Francisco, September 11, 1958, \*[nmah310], box 1.
.ds Ref:bright-1959 H.\~S. Bright, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 5, May, 1959, pp. 6-9.
.ds Ref:some-algol-char-code-thing R.\~W. Bemer, ``A Proposal for a Generalized Card Code for 256 Characters,'' \fICommunications of the ACM\fP, vol, 2, no. 9, September, 1959, pp. 19-23.
.ds Ref:utman-jul-1963 R.\~E. Utman ``Standards for Information Processing: A Progress Report,'' \fIComputers and Automation\fP, vol. 12, no. 7, July, 1963, pp. 8-15.
.ds Ref:griffin-may-5-1961 L.\~L. Griffin ``Status of ASA X3-2 subcommittee\(em3 May 1961,'' May 5, 1961, \*[nmah310], box 1.
.ds Ref:auwaerter-may-1963 J.\~F. Auwaerter, ``A New Standard Code for Teletypewriters,'' \fIBell Laboratories Record\fP, vol. 41, no. 10, November, 1963, pp. 395-400.
.ds Ref:benjamin-march-1954 A.\~S. Benjamin and W.\~J. Zenner, ``A Step Forward in Printing Telegraphy,'' \fICommunication and Electronics\fP, no. 11, March, 1954, pp. 10-15.
.ds Ref:harris-jan-1956 Robert\~W. Harris, ``Keyboard Standardization,'' \fIWestern Union Technical Review\fP, vol. 10, no. 1, January, 1956, pp. 37-43.
.ds Ref:smith-april-1964 Fred\~W. Smith, ``New American Standard Code for Information Interchange,'' \fIWestern Union Technical Review\fP, vol. 18, no. 2, April, 1964, pp. 50-58.
.ds Ref:ccitt-may-13-1963 J.\~F. Auwaerter, ``Brief Report: Meeting of CCITT Working Party on the New Telegraph Alphabet, May 13-15, 1963,'' \*[cbi67], box 1, folder 11.
.ds Ref:coggeshall-jan-1953 I.\~S. Coggeshall, ``The Transmission of Intelligence in Typescript,'' \fIWestern Union Technical Review\fP, vol. 7, no. 1, January, 1953, pp. 6-12; vol. 7, no. 2, April, 1953, pp. 56-62.
.ds Ref:creed-1929 F.\~G. Creed, ``The Creed High Speed Morse Printing Telegraph System,'' \fIElectrical Communication\fP, vol. 8, no. 1, 1929, pp. 52-60.
.ds Ref:unification-feb-1925 ``Unification de la T\('el\('egraphie Internationale,'' \fIAnnales des Postes, T\('el\('egraphes, et T\('el\('ephones\fP, vol. 14, no. 2, February, 1925, pp. 177-184, translated from \fITelegraphen- und Fernsprech-Technik\fP, November, 1924.
.ds Ref:unification-may-1925 ``Unification des appareils t\('el\('egraphiques dans le service international,'' \fIJournal T\('e\%l\('e\%graph\%ique\fP, vol. 49, no. 5, May 25, 1925, pp. 81-86; vol. 49, no. 6, June 25, 1925, pp. 101-106.
.ds Ref:itu-1872 \fIDocuments de la Conf\('erence T\('el\('egraphique Internationale de Rome\fP, Bureau International des Administrations T\('e\%l\('e\%graph\%iques, 1872, pp. 170-172.
.ds Ref:itu-1903 \fIDocuments de la Conf\('erence T\('el\('egraphique Internationale de Londres\fP, Bureau International des Administrations T\('e\%l\('e\%graph\%iques, 1904, p. 301.
.ds Ref:post-office-july-1948 ``Sixth Plenary Meeting of the C.C.I.T., Brussel, May 1948,'' \fIThe Post Office Electrical Engineers' Journal\fP, vol. 41, part 2, July, 1948, pp. 108-109.
.ds Ref:post-office-april-1957 ``Eighth, and Last, Plenary Assembly of the C.C.I.T., Geneva, 1956,'' \fIThe Post Office Electrical Engineers' Journal\fP, vol. 50, part 1, April, 1957, pp. 45-46.
.ds Ref:barbeau R.\~A. Barbeau, ``Error-Checking for 5-Channel Telegraphic Tape,'' \fICommunication and Electronics\fP, no. 36, May, 1958, pp. 190-193.
.ds Ref:bloecker-nov-1957 W.\~E. Bloecker and G.\~A. Caldwell, ``The Work of the International Telecommunication Union in the Field of Telephony,'' \fICommunication and Electronics\fP, no. 33, November, 1957, pp. 543-552.
.ds Ref:ccitt-s2-1988 ``Coding Scheme Using International Telegraph Alphabet No.\~2 (ITA2) to Allow the Transmission of Capital and Small Letters,'' Recommendation S.2, Fascicle VII.1, CCITT, 1988.
.ds Ref:post-office-oct-1956 ``Telegraphy,'' \fIThe Post Office Electrical Engineers' Journal\fP, vol. 49, part 3, October, 1956, pp. 166-172.
.ds Ref:computer-perspective The punch card illustrated in ``Biggest Bookkeping Job Begins,'' \fISunday News\fP, vol. 16, no. 40, January 10, 1937, p. 60, as reproduced in Charles and Ray Eames, \fIA Computer Perspective: Background to the Computer Age\fP, new edition, Harvard University Press, 1990, p. 109, can be decoded without difficulty using 1960s IBM BCDIC and EBCDIC code tables.
.ds Ref:renton-oct-11-1961 R.\~N. Renton, letter to J.\~F. Auwaerter, October 11, 1961, \*[nmah310], box 2.
.ds Ref:whitman-dec-19-1960 Allen\~L. Whitman, ``Proposed 6-Unit Code for Teletypewriter and Other Data Communications to Operate with 4-Row Electric Typewriter Keyboard,'' December 19, 1960, \*[nmah310], box 1.
.ds Ref:luebbert-1959-western W.\~F. Luebbert, ``Data Transmission Equipment Concepts for FIELDATA,'' \fIProceedings of the Western Joint Computer Conference\fP, San Francisco, March 3-5, 1959, pp. 189-196.
.ds Ref:mil-std-188a ``Proposed Addendum to MIL-STD-188A,'' June 21, 1960, \*[nmah310], box 1.
.ds Ref:luebbert-sep-1960 William\~F. Luebbert, ``Data Processing as a Tool for Generalizing Communications Systems,'' \fICommunications and Electronics\fP, no. 50, September, 1960, pp. 431-436.
.ds Ref:bemer-dec-1960 R.\~W. Bemer, ``Survey of Coded Character Representation,'' \fICommunications of the ACM\fP, vol. 3, no. 12, December, 1960, pp. 639-641.
.ds Ref:wrong-1955 Herb (H.\~S.) Bright, ``To the Members of SHARE,'' SHARE XI, San Francisco, September 11, 1958, \*[nmah310], box 1.
.ds Ref:eia-feb-1960 Minutes of the Meeting of the TR 24.4 Subcommittee on Language and Media, Electronics Industry Association, Feb 1-2, 1960, \*[nmah310], box 1.
.ds Ref:eia-may-25-1960 ``Tentative Standards Proposal: Basic Character Set Code,'' May 25, 1960, \*[nmah310], box 1.
.ds Ref:summary-of-activities-june-9-1961 C.\~E. Macon, ``Summary of Data Processing Standards Activities,'' June 9, 1961, \*[nmah310], box 2.
.ds Ref:x3.2-oct-6-1960 X3.2 Subcommittee Minutes, October 6, 1960, \*[nmah310], box 1.
.ds Ref:liggett-dec-7-1960 I.\~C. Liggett, ``X3-2 Meeting\(emDecember 2, 1960,'' December 7, 1960, \*[nmah310], box 1.
.ds Ref:reach-jan-24-1961 R.\~W. Reach, memorandum to W.\~W. Finke and J.\~E. Smith, January 24, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:porter-jan-25-1961 S. Porter, memorandum to Leon Bloom, January 25, 1960, \*[nmah310], box 1.
.ds Ref:x3.2-mar-8-1961 X3.2 Subcommittee Minutes, March 8-9, 1961, \*[nmah310], box 1.
.ds Ref:reach-mar-14-1961 R.\~W. Reach, memorandum to J.\~E. Smith and W.\~W. Finke, March 14, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:bemer-may-1961 R.\~W. Bemer, H.\~J. Smith, Jr., and F.\~A. Williams, Jr., ``Design of an Improved Transmission/Data Processing Code,'' \fICommunications of the ACM\fP, vol. 4, no. 5, May, 1961, pp. 212-217, 225.
.ds Ref:x3.2-apr-26-1961 X3.2 Subcommittee Minutes, April 26-27, 1961, \*[nmah310], box 1.
.ds Ref:x3.2-may-8-1961 X3.2 Subcommittee Minutes, May 8-11, 1961, \*[nmah310], box 1.
.ds Ref:x3.2-jun-8-1961 X3.2 Subcommittee Minutes, June 7-8, 1961, \*[nmah310], box 2.
.ds Ref:bemer-june-1-1960 R.\~W. Bemer and W. Buchholz, ``An Extended Character Set Standard,'' TR 00.721 (Rev.), Product Development Laboratory, Data Systems Division, International Business Machines Corporation, June 1, 1960, \*[nmah310], box 1.
.ds Ref:algol-58 A.\~J. Perlis and K. Samuelson for the ACM-GAMM Committee, ``Preliminary Report\(emInternational Algebraic Language,'' \fICom\%mun\%i\%ca\%tions of the ACM\fP, vol. 1, no. 12, December, 1958, pp. 8-22.
.ds Ref:kanner-june-1959 Herbert Kanner, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 6, June, 1959, pp. 6-7.
.
.
.
.
.
.ds Ref:eckert-1951 J. Presper Eckert, Jr., H. Frazer Welsh, James\~R. Weiner, and Herbert\~F. Mitchell, ``The UNIVAC System,'' \fIProceedings of the Eastern Joint Computer Conference\fP, Philadelphia, December 10-12, 1951, pp. 6-16.
.ds Ref:itu-1938 \fIR\(`eglement T\('el\('egraphique\fP, Bureau de l'Union Internationale des T\('el\('ecommunications, 1938, pp. 34-43.
.ds Ref:page-1941 Arthur\~W. Page, \fIThe Bell Telephone System\fP, third edition, Harper \*(AM Brothers, 1941, pp. 26-27.
.ds Ref:harrison-1923 H.\~H. Harrison, \fIPrinting Telegraph Systems and Mechanisms\fP, Longmans, Green, and Co., 1923, pp. 1-3.
.ds Ref:necrologie Andr\('e Frouin, ``Necrologie: \(dg\ Emile Baudot,'' \fIJournal T\('el\('egraphique\fP, vol. 27, no. 4, April 25, 1903, pp. 90-91.
.ds Ref:morkrum-1911 \fIDirections for Operating the Morkrum Telegraph Printers\fP, Morkrum Company, 1911, \*[nmah205], box 75, folder 3.
.ds Ref:morkrum-1912 \fIDirections for Operating the Morkrum Telegraph Printers\fP, bulletin no. 2, Morkrum Company, 1912, \*[nmah205], box 75, folder 3.
.ds Ref:morkrum-1913 \fIThe Morkrum Telegraph Printers: Special Instructions for Improving ``Copy,''\fP bulletin no. 4, Morkrum Company, March, 1913, \*[nmah205], box 75, folder 3.
.ds Ref:morkrum-1914 \fITheory of Tape System: The Morkrum Telegraph Printers\fP, bulletin no. 9, Morkrum Company, June, 1914, \*[nmah205], box 75, folder 3.
.ds Ref:morkrum-1916 \fITheory of Tape System: The Morkrum Telegraph Printers\fP, bulletin no. 16, Morkrum Company, October, 1916, \*[nmah205], box 75, folder 3.
.ds Ref:burghagen-1898 Otto Burghagen, \fIDie Schreibmaschine\fP, Verlag der Handels-Akademie, 1898, pp. 94-95.
.ds Ref:son-oeuvre E. Montoriol, ``Baudot et son Oeuvre,'' \fIAnnales des Postes, T\('el\('egraphes, et T\('el\('ephones\fP, vol. 5, no. 4, December, 1916, pp. 367-403.
.ds Ref:owen-1978 Sid Owen, ``QWERTY is Obsolete,'' \fIInterface Age\fP, vol. 3, no. 1, January, 1978, pp. 56-59.
.ds Ref:mares Geo. Carl Mares, \fIThe History of the Typewriter\fP, Guilbert Pitman, 1909, pp. 306-308.
.ds Ref:murray-to-new-york The addresses given in Murray's patents (Sydney, New South Wales in U.\~S. Patent 638,591, filed May 4, 1899; New York in U.\~S. Patent 653,934, filed November 28, 1899) support the 1899 date for his move to New York.
.ds Ref:engelbart Doug Engelbart, ``The Augmented Knowledge Workshop,'' in Adele Goldberg, ed., \fIA History of Personal Workstations\fP, ACM Press/Addison-Wesley, 1988, pp. 187-236.
.ds Ref:murray-patent-1899 Donald Murray, ``Actuating Mechanism for Key-Operated Machines,'' U.\~S. Patent 638,591, December 5, 1899.
.ds Ref:blavier-1867 E.\~E. Blavier, \fINouveau Traite de T\('el\('egraphie \('Electrique\fP, vol. 2, Librarie Scientifique, Industrielle, et Agricole, 1867, p. 239.
.ds Ref:herbert-1909 T.\~E. Herbert, \fITelegraphy\fP, Whittaker \*(AM Co., 1906, pp. 370-395.
.ds Ref:rothen-1884 M. Rothen, ``Le t\('el\('egraphe imprimeur Baudot,'' \fIJournal T\('el\('egraphique\fP, vol. 8, no. 12, December, 1884, pp. 241-253.
.ds Ref:webber-1878 Major Webber, ``Multiple and Other Telegraphs at the Paris Exhibition,'' \fIJournal of the Society of Telegraph Engineers\fP, vol, 7, November 27, 1878, pp. 434-467.
.
.ds Ref:murray-patents Donald Murray, ``Page Printing Telegraph,'' U.\~S. Patent 653,934, July 17, 1900; ``Automatic Actuating Mechanism for Key Operated Machines,'' U.\~S. Patent 685,427, October 29, 1901; ``Actuating Mechanism for Key Operated Machines,'' U.\~S. Patent 698,845, April 29, 1902; ``Keyboard Perforator,'' U.\~S. Patent 710,163, September 30, 1902.
.
.ds Ref:murray-sep-30-1902 Donald Murray, ``Keyboard Perforator,'' U.\~S. Patent 710,163, September 30, 1902.
.
.ds Ref:murray-journal Donald Murray, \fIThe Murray Printing Telegraph Journal\fP, English Edition, vol. 1, no. 2, August 30, 1912, \*[nmah205], box 1, folder 9.
.ds Ref:easterling-1953 C.\~E. Easterling and J.\~H. Collins, ``The Tele\%printer No.\~11,'' \fIThe Post Office Electrical Engineers' Journal\fP, vol. 46, part 2, July, 1953, pp. 53-58.
.ds Ref:engineering-and-science M.\~D. Fagen, ed., \fIA History of Engineering and Science in the Bell System: The Early Years (1875-1925)\fP, Bell Telephone Laboratories, 1975, pp. 759-760.
.ds Ref:western-union-1915 \fIThe Multiplex Printing Telegraph System\fP, specification 263\~B, part 1, The Western Union Telegraph Company, January 15, 1915, \*[nmah205], box 54, folder 1.
.ds Ref:western-union-1918 \fISpecifications for the Cardwell Printing Telegraph System: Operation and Maintenance\fP, specifications 732-A, The Western Union Telegraph Co., Plant Department, August 1, 1918, \*[nmah205], box 43, folder 7.
.ds Ref:creed-start-stop ``Description du Telegraphe Creed Syst\(`eme \(FoStart-Stop\(Fc,'' \fIAnnales des Postes, T\('el\('egraphes, et T\('el\('ephones\fP, vol. 15, no. 4, April, 1926, pp. 302-312.
.ds Ref:morkrum-start-stop ``L'Imprimeur Sur Pages du Syst\(`eme \(FoMorkrum\(Fc,'' \fIAnnales des Postes, T\('el\('egraphes, et T\('el\('ephones\fP, vol. 9, no. 2, June, 1920, pp. 265-279.
.\" XXX must be a better ref than this for morkrum-start-stop
.
.ds Ref:houghtaling W.\~A. Houghtaling, ``The Multiplex Printing Telegraph System,'' \fIThe Electric Journal\fP, vol. 23, no. 9, September, 1926, pp. 455-461.
.ds Ref:cti-1925-1-192 \fIDocuments de la Conf\('er\('ence T\('el\('egraphique Internationale de Paris\fP, Bureau International de l'Union T\('el\('egraphique, 1925, p. 192.
.ds Ref:murray-obit H.\~H. H., ``Obituary Notices: Donald Murray, M.\~A.,'' \fIThe Journal of the Institution of Electrical Engineers\fP, vol, 92, part I, no. 60, December, 1945, p. 471.
.ds Ref:murray-1925 Donald Murray, ``Speeding Up the Telegraphs: A Forecast of the New Telegraphy,'' \fIThe Journal of the Institution of Electrical Engineers\fP, vol. 63, no. 339, March, 1925, pp. 245-280.
.ds Ref:munro J. Munro, \fIHeroes of the Telegraph\fP, Project Gutenberg reprint edition, July, 1997, chapter 10.
.ds Ref:telegraph-1871 \fIDocuments de la Conf\('erence T\('el\('egraphique Internationale de Rome\fP, Bureau International des Administrations T\('e\%l\('e\%graph\%iques, 1872, p. 172.
.ds Ref:baudot-1895 E. Baudot, ``La t\('el\('egraphie multiple,'' \fIJournal T\('el\('egraphique\fP, vol. 19, no. 11, November, 1895, pp. 241-247; vol. 19, no. 12, December, 1895, pp. 265-270; vol. 20, no. 1, January, 1896, pp. 5-10; vol. 20, no. 2, February, 1896, pp. 28-33; vol. 20, no. 3, March, 1896, pp. 57-62.
.ds Ref:baudot-1877 E. Baudot, ``Des Appareils T\('el\('egraphiques \(`a Signaux Ind\('ependants,'' \fIAnnales T\('e\%l\('e\%graph\%iques\fP, vol. 4, no. 1, January-February, 1877, pp. 20-32.
.ds Ref:baudot-1879 ``T\('el\('egraphe Multiple Imprimeur de M. Baudot,'' \fIAnnales T\('el\('egraphiques\fP, vol. 6, no. 4, July-August, 1879, pp. 354-389.
.ds Ref:history-of-typewriters-murray-thing Geo. Carl Mares, \fIThe History of the Typewriter\fP, Guilbert Pitman, 1909, pp. 306-308.
.ds Ref:barlock Wilfred\~A. Beeching, \fICentury of the Typewriter\fP, new edition, British Typewriter Museum Publishing, 1990, pp. 108-113, 195-198.
.ds Ref:murray-1905 Donald Murray, ``Setting Type by Telegraph,'' \fIJournal of the Institution of Electrical Engineers\fP, vol. 34, 1904-1905, pp. 555-608.
.ds Ref:crotch-1908 Arthur Crotch, \fITelegraphic Systems and Other Notes\fP, Charles Griffin \*(AM Company, Ltd., 1908, pp. 151-170.
.ds Ref:murray-sells-out M.\~E. Montriol, ``Les Diff\('erents Syst\(`emes de T\('el\('egraphie Rapide,'' \fIAnnales des T\('el\('egraphes, Postes, et T\('el\('ephones\fP, vol. 8, no. 3, September, 1919, pp. 324-353.\"XXX
.ds Ref:vansize-1901 William\~B. Vansize, ``A New Page-Printing Telegraph,'' \fITransactions of the American Institute of Electrical Engineers\fP, vol. 18, 1902, pp. 7-43.
.ds Ref:murray-1911 Donald Murray, ``Practical Aspects of Printing Telegraphy,'' \fIJournal of the Institution of Electrical Engineers\fP, vol. 47, 1911, pp. 450-529.
.ds Ref:western-electric-1919 \fIPrinting Telegraphy: A Technical Description of the Western Electric Printing Telegraph Systems\fP, bulletin A-1, Western Electric Company Engineering Department, October, 1919.
.ds Ref:pendry-1919 H.\~W. Pendry, \fIThe Baud\(^ot Printing Telegraph System\fP, second edition, Sir Isaac Pitman \*(AM Sons, Ltd., 1919, pp. 43-44.
.ds Ref:harrison-1916 H.\~H. Harrison, ``The Principles of Modern Printing Telegraphy,'' \fIThe Journal of the Institution of Electrical Engineers\fP, vol. 54, no. 256, February 15, 1916.
.\" XXX page numbers of harrison-1916!
.ds Ref:thompson-1925 A.\~E. Thompson, ``A New Keyboard Perforator for the Baudot Printing Telegraph System,'' \fIElectrical Communication\fP, vol. 3, no. 4, April, 1925, pp. 295-300.
.ds Ref:fortran-1957 J.\~W. Backus, R.\~J. Beeber, S. Best, R. Goldberg, L.\~M. Haibt, H.\~L. Herrick, R.\~A. Nelson, D. Sayre, P.\~B. Sheridan, H. Stern, I. Ziller, R.\~A. Hughes, and R. Nutt, ``The FORTRAN Automatic Coding System,'' \fIProceedings of the Western Joint Computer Conference\fP, Los Angeles, February 26-28, 1957, pp. 188-198.
.ds Ref:algol-60 Peter Naur, ed., J.\~W. Backus, F.\~L. Bauer, J. Green, C. Katz, J. McCarthy, A.\~J. Perlis, H. Rutishauer, K. Samuelson, B. Vaquois, J.\~H. Wegstein, A. van Wijngaarden, and M. Woodger, ``Report on the Algorithmic Language ALGOL 60,'' \fICommunications of the ACM\fP, vol. 3, no. 5, May, 1960, pp. 299-314.
.ds Ref:sammet Jean\~E. Sammet, \fIProgramming Languages: History and Fundamentals\fP, Prentice-Hall, Inc., 1969, pp. 139-143.
.ds Ref:grosch-1955 H.\~R.\~J. Grosch, ``Standardization of Computer Interconnections,'' \fIProceedings of the Eastern Joint Computer Conference\fP, Boston, November 7-9, 1955, pp. 87-89.
.ds Ref:ecma-6 \fI7-Bit coded Character Set\fP, ECMA-6, sixth edition, ECMA, December, 1991, reprinted August, 1997.
.ds Ref:iso646-1973 \fI7-bit coded character set for information processing interchange\fP, International Standard ISO 646, first edition, International Organization for Standardization, July 1, 1973.
.ds Ref:iso646-1991 \fIInformation Technology\(emISO 7-bit coded character set for information interchange\fP, International Standard ISO/IEC 646, third edition, ISO, December 15, 1991.
.
.
.
.ds Ref:1963-07-utman R.\~E. Utman, ``Standards for Information Processing: A Progress Report,'' \fIComputers and Automation\fP, vol. 12, no. 7, July, 1963, pp. 8-15.
.ds Ref:1959-06-kanner Herbert Kanner, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 6, June, 1959, pp. 6-7.
.ds Ref:1959-05-bright H[erbert] S. Bright, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 5, May, 1959, pp. 6-9.
.ds Ref:1959-09-bemer R[obert] W. Bemer, ``A Proposal for a Generalized Card Code for 256 Characters,'' \fICommunications of the ACM\fP, vol. 2, no. 9, September, 1959, pp. 19-23.
.ds Ref:1962-03-booth J[ohn] B. Booth, report from the ECMA TC-1 and ASA X3.2 Joint Meeting, Rome, Italy, March 8-9, 1962, \*[cbi67], box 1, folder 3.
.ds Ref:1934-07-thomas F.\~R. Thomas, ``Improved Teleprinter Keyboard Technique,'' \fIElectrical Communication\fP, vol. 12, July, 1934, pp. 3-8.
.ds Ref:1956-reference-data \fIReference Data for Radio Engineers\fP, International Telephone and Telegraph Company, 1956, pp. 843-849.
.ds Ref:1959-luebbert W[illiam] F. Luebbert, ``Data Transmission Equipment Concepts for \s-1FIELDATA\s0,'' \fIProceedings of the Western Joint Computer Conference\fP, San Francisco, March 3-5, 1959, pp. 189-196.
.ds Ref:1960-02-bemer R[obert] W. Bemer, ``A Proposal for Character Code Compatibility,'' \fICommunications of the ACM\fP, vol. 3, no. 2, February, 1960, pp. 71-72.
.ds Ref:1960-10-luebbert William\~F. Luebbert, ``Data Processing as a Tool for Generalizing Communications Systems,'' \fICommunications and Electronics\fP, no. 50, September, 1960, pp. 431-436.
.ds Ref:1960-10-smith Fred W. Smith, ``European Teleprinter Developments,'' \fIWestern Union Technical Review\fP, vol. 14, no. 4, October, 1960, pp. 162-175.
.ds Ref:1960-12-bemer R[obert] W. Bemer, ``Survey of Coded Character Representation,'' \fICommunications of the ACM\fP, vol. 3, no. 12, December, 1960, pp. 639-641.
.ds Ref:1961-01-24-reach R[oy] W. Reach, memorandum to W.\~W. Finke and J.\~E. Smith, January 24, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-01-ross H[ugh] McG[regor] Ross, ``Considerations in Choosing a Character Code for Computers and Punched Tapes,'' \fIThe Computer Journal\fP, vol. 3, no. 3, January, 1961, pp. 202-210.
.ds Ref:1961-03-14-reach R[oy] W. Reach, memorandum to J.\~E. Smith and W.\~W. Finke, March 14, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-05-design R[obert] W. Bemer, H[oward] J. Smith, Jr., and F.\~A. Williams, Jr., ``Design of an Improved Transmission/Data Processing Code,'' \fICommunications of the ACM\fP, vol. 4, no. 5, May, 1961, pp. 212-217, 225.
.ds Ref:1961-09-18-reach R[oy] W. Reach, memorandum to R[ichard] F. Clippinger, September 18, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-09-21-clippinger R[ichard] F. Clippinger, memorandum to W.\~W. Finke, September 21, 1961, \*[cbi67], box 1, folder 1.
.ds Ref:1961-11-macon C[harles] E. Macon, quoted by H.\~S. B. (Herbert S. Bright), editor's note, \fICommunications of the ACM\fP, vol. 4, no. 11, November, 1961, p. 497.
.ds Ref:1962-02-06-macon C[harles] E. Macon, letter to X3 Sectional Committee, February 2, 1962, \*[cbi67], box 1, folder 4.
.ds Ref:1962-05-25-bibliography X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section VII (Bibliography), \*[cbi42], box 5, folder 12.
.ds Ref:1962-05-25-comparison X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section III (Comparison of the Proposed Standard Code with Other Codes), \*[cbi42], box 5, folder 12.
.ds Ref:1962-05-25-report X3-2 Subcommittee, ``Expository Remarks on the Proposed American Standard Code for Information Interchange,'' May 25, 1962, X3.2/5, section I (X3.2 Subcommittee Report on the Proposed American Standard Code for Information Interchange), \*[cbi42], box 5, folder 12.
.ds Ref:1970-03-02-mackenzie C[harles] E. Mackenzie, letter to Lloyd M. Burstein, March 2, 1970, \*[cbi81], box 20, folder 50.
.ds Ref:1960-12-smith H.\~J. Smith and F.\~A. Williams, ``Survey of Punch Card Codes,'' \fICommunications of the ACM\fP, vol. 3, no. 12, December, 1960, pp. 638, 642.
.
.
.
.ds Ref:holzmann Gerard J. Holzmann and Bj\(:orn Pehrson, \fIThe Early History of Data Networks\fP, IEEE Computer Society Press, 1995, pp. 42-43.
.ds Ref:survey-amendment H.\~McG. Ross, ``Further Survey of Punched Card Codes,'' \fICommunications of the ACM\fP, vol. 4, no. 4, April, 1961, pp. 182-183.
.ds Ref:vincent George O. Vincent, ``Self-Checking Codes for Data Transmission,'' \fIWestern Union Technical Review\fP, vol. 11, no. 1, January, 1957, pp. 15-21.
.ds Ref:augustin J. Augustin, ``Teleprinter for Reliable Transmission of Numbers,'' \fIElectrical Communication\fP, vol. 35, no. 4, 1959, pp. 245-246.
.ds Ref:steeneck Robert Steeneck, ``Error Checking Possibilities Concealed Within the 5-Unit Code,'' \fIWestern Union Technical Review\fP, vol. 14, no. 2, April, 1960, pp. 69-71.
.ds Ref:holmes James F. Holmes, ``Undetected Errors in 5-Unit Code Transmission and Their Elimination,'' \fIComputers and Automation\fP, vol. 9, no. 11, November, 1960, pp. 10-13.
.ds Ref:smith Fred W. Smith, ``A Proposed New Teleprinter Code for Error Detection,'' \fIWestern Union Technical Review\fP, vol. 15, no. 2, April, 1961, pp. 60-67.
.ds Ref:bright-algol-set H.\~S. Bright, letter to the editor, \fICommunications of the ACM\fP, vol. 2, no. 5, May, 1959, pp. 6-9.
.ds Ref:bemer-algol-set R.\~W. Bemer, ``A Proposal for a Generalized Card Code for 256 Characters,'' \fICommunications of the ACM\fP, vol. 2, no. 9, September, 1959, pp. 19-23.
.ds Ref:fieldata William F. Luebbert, ``Data Processing as a Tool for Generalizing Communications Systems,'' \fICommunications and Electronics\fP, no. 50, September, 1960, pp. 431-436.
.ds Ref:ross-considerations H. McG. Ross, ``Considerations in Choosing a Character Code for Computers and Punched Tapes,'' \fIThe Computer Journal\fP, vol. 3, no. 3, January, 1961, pp. 202-210.
.\"
.SH
References
.endSH
.
.
.
.ie !\n[doublespace] \{.
.	nr PS 8
.	ps 8
.	nr VS 9
.	vs 9
.\}
.el \{.
.	nr VS \n(PS*12/10
.	vs \n(VS
.\}
.
.
.nr PI 5n
.LP
.nr i 1
.if n <ol>
.while \ni<\n[Reference] \{.
.	if t .IP \ni.
.	if n <li>
.	ie dRef:\*[Ref\ni] \*[Ref:\*[Ref\ni]]
.	el \{.
.		if 1 [missing citation: \*[Ref\ni]]
.		tm missing citation: \*[Ref\ni]
.	\}
.	nr i +1
.	if n .br
.\}
.if n </ol>
.
.
.LP
.de PT
..
.tm \n[divertedfigs] diverted figs
.if \n[divertedfigs] .bp
.nr i 0
.while \ni<\n[divertedfigs] \{.
.	tm need \n[div-length-\ni]
.	ne \n[div-length-\ni]u
.	nf
.	diverted-figs-\ni
.	nr i +1
.\}

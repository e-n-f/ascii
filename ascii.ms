.ds broken-bar \h'\\w!=!u/2u'\v'0.2m'\D'l 0 -.4m'\v'-0.2m'\D'l 0 -.4m'\v'0.8m'\h'\\w!=!u/2u'
.ds not-sign \v'-0.7m'\h'\\w!M!u/10u'\D'l \\w!M!u*8u/10u 0'\D'l 0 0.2m'\h'\\w!M!u/10u'\v'0.5m'
.de Line
.	br
.	if 1 \l'\\n(.lu-\\n(.iu\(em'
.	br
..
.de Line
.	sp 2
..
.de Fig
.	ne 8i
..
.nr indent 3n
.nr bigindent 5n
.nr PI \n[indent]
.nr Figure 1
.nr PD 0
.LP
.nr LL 6.5i
.TL
The Development of ASCII
.AU
Eric Fischer
.if t .2C
.SH
Introduction
.SH
Character Codes in 1960
.PP
Character code standardization was sorely needed by 1960.
It was almost impossible to take a tape or card deck from one
brand of computer and use it on another because every manufacturer
used a different character code.
In some cases, the same manufacturer even used multiple codes,
one per model.
.PP
The closest thing there was to a portable standard, IBM's
Binary Coded Decimal Interchange Code (BCDIC),
had its characters in a bizarre order
as a result of its punch card heritage,
with punctuation marks interspersed between letters.
Worse, it had barely enough punctuation marks to write Fortran programs
(on some devices the parentheses would even print as % and \(sq instead)
and didn't have nearly enough of the special symbols needed for
other languages, especially Algol.
.\" .KF
.\" .Fig
.\" .so 19xx-bcdic.pic
.\" .B "Figure \n[Figure]."
.\" .nr Figure +1
.\" BCD Interchange Code
.\" .Line
.\" .KE
.PP
Many users of telegraph equipment (either on telegraph networks
or attached to computers) were equally eager to have
a new standard character set.
Their standard character set was sorted even more strangely
than BCDIC, since it was designed so that the most frequently
used characters had the fewest bits set,
and so that the digits shared the same codes as the
letters paired with them on the keyboard (1 with Q, 2 with W,
3 with E, and so on).
.PP
The standardization was not complete, either:
messages prepared for tape teletypewriters could not
be printed properly on page-oriented printers, or vice versa,
and systems in the United States had a slightly different set of punctuation
marks than systems that conformed to the international CCITT standard.
There was also increasing pressure for a code which would
provide at least minimal error checking to keep line noise from
changing one number undetectably to another.
.SH
Independent Proposals
.PP
As a result, people had begun publically proposing character
sets\(emsometimes modifications of older sets, sometimes
completely new ones\(emthat they hoped to promote as standards.
H.\ S. Bright's modified version of BCDIC, shown in
Table \n[Figure],
incorporated enough additional punctuation marks
to make it reasonable to write Algol programs.
.KF
.Fig
.so 1959-05-bright.pic
.B "Table \n[Figure]."
.nr Figure +1
H. S. Bright's Algol character set
.Line
.KE
.PP
(The figure is formatted differently and uses different names
for the control characters than the table in Bright's letter.
For ease of comparison, all the figures in this paper
use terminology and formatting intended to match what is used
in the published ASCII standards.
The standard abbreviations used throughout are listed in
Table \n[Figure].)
.KF
.Fig
.TS
center;
c l .
BS	Backspace
CR	Carriage Return
DEL	Delete
ESC	Escape
LC	Lower Case
NL	New Line
NUL	Null
PT	Paper Throw
SI	Shift In
SO	Shift Out
SP	Space
SZ	Suppressed (Nonprinting) Zero
TAB	Tabulate
UC	Upper Case
.TE
.B "Table \n[Figure]."
.nr Figure +1
Abbreviations used in the tables
.Line
.KE
.PP
Some of the characters in Bright's set do not
appear in current versions of ASCII but deserve
mention because they were the subject
of many arguments during the development of the code
before they eventually were discarded.
The \(OR,
\(AN,
and \*[not-sign]
symbols represent logical ``or,'' ``and,'' and ``not,''
respectively.
The arrows are for exponentiation: in Algol 58,
2\(ua5\(da means 2\*{5\*}.
The \(==
sign was never a contender for a place in ASCII,
but means ``equivalent to.''
.PP
Another proposed character set,
illustrated in Table \n[Figure], came from H. McG. Ross.
It was intended specifically for use with the Ferranti
Orion and Atlas computers but was designed to have
more general applications as well.
.KF
.Fig
.so 1961-01-ross.pic
.B "Table \n[Figure]."
.nr Figure +1
H. McG. Ross's Ferranti character set
.Line
.KE
.PP
Oh, blah blah blah.
.SH
ASCII Development Begins
.PP
The 1960 activities of X3.2 had focused on
gathering data about and evaluating existing character sets.
The results of this research were published in a pair of
articles in the December, 1960 issue of the
.I "Communications of the ACM" .
In 1961, beginning at the January 11th and 12th meeting in
New York, the members of X3.2 began to compile their own character set.
The members present compiled a list of the characters that
everyone attending agreed should
be a part of any standard character set.
The characters that made the list were:
.sp .5
.IP \(bu
upper case alphabet A-Z
.IP \(bu
digits 0-9
.IP \(bu
period/decimal point
.IP \(bu
hyphen/minus sign
.IP \(bu
open and close parentheses
.IP \(bu
slash
.IP \(bu
asterisk
.IP \(bu
number sign
.IP \(bu
comma
.IP \(bu
percent sign
.IP \(bu
space
.sp .5
.PP
This set (plus seventeen other characters to be decided later)
was to be called the ``major usage subset,''
and was also to include an
``escape'' character which
would be used to switch to a different subset,
each of which would have a specialized function
such as mathematics or printer controls.
Each subset would also support the escape character,
which could be used to switch back to the major usage subset
or to a different specialized subset.
The idea of the escape character had been proposed the previous
year in an article by Robert W. Bemer, the alternate
member from I.B.M., and had previously been used in the
Ferranti code by
H.\ McG. Ross mentioned above.
.PP
There were no other characters that everyone present
could unanimously agree ought to be part of the major
usage subset,
so the committee members were asked to bring
to the next meeting (in February) a complete list
of what each of them thought should constitute the major usage subset
and a proposed order they should appear in.
One such list, by Roy Reach, the representative from Honeywell,
appears below in figure \n[Figure].
.KF
.Fig
.so 1961-01-24-reach.pic
.B "Figure \n[Figure]."
.nr Figure +1
Reach's proposed subset
.Line
.KE
.PP
At the March 8-9 meeting, the debate over the contents of
the major usage subset continued, but
eventually a compromise code (with several characters still
left unspecified) was found that was acceptable to
almost everyone.
The result of the compromise is reproduced in figure \n[Figure].
The compromise code had several features that would remain
key elements of the ASCII design:
.sp .5
.IP \(bu
the format effectors (space, carriage return, etc.) collate earlier than
the printing characters and are easy to recognize by their bit pattern
.IP \(bu
the null character collates first of all, and the delete character last
.IP \(bu
punctuation marks predece numbers and letters (later relaxed slightly)
.IP \(bu
two expendable symbols follow the digits and can be turned into
``10'' and ``11'' characters if needed for duodecimal currency
.IP \(bu
the digits and related punctuation marks can be collapsed into a
16-character subset
.sp .5
.KF
.Fig
.so 1961-03-14-proposal.pic
.B "Figure \n[Figure]."
.nr Figure +1
March, 1961 compromise code
.Line
.KE
.PP
In spite of the apparent general satisfaction with this code,
a somewhat different pair of related
character sets (the data processing variant of which is
shown in figure \n[Figure]),
with an extensive rationale supporting them,
appeared in the May issue of the
.I "Communcations of the ACM" ,
in an article
signed by Bemer, Howard\ J. Smith, Jr., and F.\ A. Williams, Jr.,
all of I.B.M.
According to the Editor's Note accompanying the article,
``the X3.2 Subcommittee is now examining this work in detail
and, in my opinion, will probably recommend as an American Standard
a code which is quite similar in principle to the one described here
although it may differ in some details.''
.KF
.Fig
.so 1961-03-bemer.dp.pic
.B "Figure \n[Figure]."
.nr Figure +1
Data processing code proposal, May, 1961
.Line
.KE
.PP
The committee, as it turned out, disagreed, and a note
appeared in the November issue indicating that the code was just
one of many considered by X3.2; that the committee's goal was
``to recommend a \fIsingle\fP coded character set to serve as
the standard for \fIinformation interchange\fP;'' and that
the current proposal was not a direct outgrowth of Bemer, Smith,
and Williams's work.
.SH
A Seven-Bit Code
.PP
In fact, the ASCII proposal that appeared September 15th, 1961,
probably looked more like the Ferranti character set than it did
any of the previous proposed standards.
The six bit code was not enormously different from what had
been proposed earlier, except that now it consisted only of
printing characters, with no control codes.
But the six bit code was, for the first time, considered to be
a subset (the ``pure information subset'') of a seven bit code
(figure \n[Figure]),
which, in the full version, had room for two alphabets,
plenty of punctuation marks (including, inexplicably, two
exclamation points) and 34 control characters.
.KF
.Fig
.so 1961-09-15-proposal.pic
.B "Figure \n[Figure]."
.nr Figure +1
Proposed standard code, September, 1961
.Line
.KE
.PP
Like some of the earlier character set proposals, the September 1961
set included several characters intended to make it more practical
for use by programmers.
The \(ua character was included for exponentiation, but because
Algol 60 had changed the notation for exponents, it no longer
needed to be paired with \(da.
A left arrow character, \(<-, was included, though, to indicate
assignment to a variable, as were a complete set of relational operators:
.TS
center;
c c c c c c .
<	\(<=	\&=	\(>=	>	\(!=
.TE
.PP
The seven bit size was supposed to be large enough that it
would eliminate the need for any mode switching, but
in spite of this the ESC, UC, and LC control codes were allowed to remain.
Like the May proposal from I.B.M., the 7-bit code was designed
specifically so that the Shift key could produce reasonable
character pairs by inverting a single bit, though some of the
pairings were rather nonstandard.
.PP
The members of X3.2 appear to have considered this character set to
have been a completely suitable candidate to become the standard rather
than just an intermediate step.
A memo written by Honeywell representative R. W. Reach says that
``assignments were given each member to provide more detailed,
finished write-ups of the various documents required to support
a recommendation of a standard Character Code....
The committee is attempting to prepare a report to X3 for
a recommended standard by early November.''
.PP
The only opposition to the proposed code, according to Reach,
came from I.B.M., whose representative Howard Smith ``had
personal objections to some details and would not vote for
anothing that did not include each point he desired.''
I.B.M.'s alternate member, Bob Bemer, was enthusiastic, though,
and thought that the company would also go along with
the proposed code.
.PP
The code was written up as a proposed standard on November 10, 1961, with
appendices following on December 27 and expository remarks on February 2, 1962.
The members of X3.2 voted on it (with ten approvals, including I.B.M.'s,
and one abstention)
and, on February 6, sent it on to the X3 committee for their review.
But before X3 had a chance to vote on the proposal (the deadline
for its ballots to be returned was July 1), the code was already
being revised.
.SH
Reorganization of the Controls
.PP
A proposal from H. Mc.G. Ross of Ferranti caused a major restructuring
of the control section of the code.  He suggested that the control area
should be divided into four parts:
.sp .5
.IP \(bu
the top half of stick 0 containing ``the most-important
and most-used controls''
.IP \(bu
the top half of stick 1 containing the data delimiters
.IP \(bu
the bottom half of stick 0 containing device-specific controls
.IP \(bu
the bottom half of stick 1 containing controls which turn on and
off auxiliary devices
.sp .5
.LP
with the possibility that perhaps the top and bottom halves
should be transposed.
His proposed arrangement of the control area is shown in
figure \n[Figure].
.KF
.Fig
.so 1961-01-25-ross.pic
.B "Figure \n[Figure]."
.nr Figure +1
Control area proposal
.Line
.KE
.PP
Ross also wrote that ``[c]are has been taken to fit in with a
typewriter-style keyboard and to meet inexpensively the needs of
Teletypewriters and Flexowriters.  The keyboard layout is shown
in the second figure.
On Teletypewriters and Flexowriters,
all the control codes can be made frmo the letter-keys in conjunction
with a `control' (or `auxiliary') key, which inhibits the emission
of bit-7 and also inverts bit-4....''
Since then, few ASCII keyboards have been designed without a Control key.
.PP
Ross's proposals were among the topics considered at the
ECMA TC-1 and ASA X3.2 Joint Meeting held in Rome, March 8-9, 1962.
In January and February, X3.2 members L. Bloom (of NCR),
J. F. Auwaerter and J. Booth (of Teletype) and C. Macon (of Burroughs)
had already met informally with European data processing and
communication companies.
.PP
The motivation for Ross's rearrangement of the control area was
that while the members of X3.2 regarded the 6-bit subset of ASCII
to be for data processing use only, with no need for control characters,
the 6-bit set was considered important for communication in Europe.
To be useful for that purpose, the most essential control characters
had to be arranged to come at the beginning of the 7-bit table so that
when they were condensed into 6 bits they would still be sorted
earlier than any printing characters.
.PP
The X3.2 representatives argued in favor of Ross's allowance that
the control key might not invert bit 4, which would put the
most important controls at the bottom of the first stick rather
than at the top.
They wanted the data delimiters in the bottom half so that in
the 6-bit set they would displace the least important symbols
(the ones following the alphabet) and so that the control
characters that would certainly have their own keys (LF, CR,
and the case shift characters) would be paired with the same
keys that would be used with the Shift key to produce the
symbols following the alphabet, reducing the number of keys
that would have to serve three or four functions.
.SH
Reorganized Punctuation
.PP
The meeting also resulted in some rearrangement of punctuation
to meet specific requirements presented there.
The British specified that the four bit subset would have
to include the digits (including duodecimal digits 10 and 11)
and the period, slash, plus, and minus symbols.
ECMA specified that all of the following punctuation would have
to appear in the 6-bit set:
.TS
center;
c c c c c c c c c.
(	)	,	*	&	%	\&=	'	;
.TE
as well as a currency symbol.
In order to accommodate all these needs, the character set
reproduced in figure \n[Figure] was proposed.
.KF
.Fig
.so 1962-03-12.pic
.B "Figure \n[Figure]."
.nr Figure +1
Proposal from Rome, March 12, 1962
.Line
.KE
.PP
The new character set eliminated some of the former
programming features while adding some new ones.
The set of relational operators was reduced to just <, >, and =,
deleting \(<=, \(>=, and \(!=.
In their place were added the square brackets.
.PP
In addition, a new character was added, \e, with the intent
that it could be combined with the slash character / to produce
the logical operators \fC/\e\fP (\(AN `and') and \fC\e/\fP (\(OR `or').
In a 1978 article, Robert Bemer said that this was his idea.
The backslash character was not a completely new invention,
though: it appears on the keyboard of a Teletype tape perforator
from 1937 and was available from the company as an alternate
keytop in the 1940s.
.PP
By this point the character set was clearly getting close to
what eventually became the standard, but not all of the
punctuation, or even all of the controls, had completely
stabilized.
A memorandum detailing the other control codes that various
groups would have liked to have included, dated two weeks
later, contained the ``recommended character set for
4-row teletypewriters'' shown in figure \n[Figure].
.KF
.Fig
.so 1962-03-26-whitman.pic
.B "Figure \n[Figure]."
.nr Figure +1
Teletypewriter set, March 26, 1962
.Line
.KE
.SH
The Proposed Standard
.PP
By May 25, though, another standardization proposal was ready.
This one contained what eventually did become the first
American Standard Code for Information Interchange,
shown in figure \n[Figure].
Reasons for some of the rearrangements are evident:
.sp .5
.IP \(bu
In the March 12 set, the \(ua and \(<- symbols are positioned
so that the collapse to six bits preserves them, while replacing
the other post-alphabet graphics with control characters.
Evidently by May the brackets had come to be considered more
important than the arrows, and their positions were swapped.
.IP \(bu
At the Rome meeting, a Mr. Gottlieb had asked that the < and >
symbols be positioned so that they were not replaced with
controls in the 6 bit set.
The May proposal accomplished this by pairing the characters
with the comma and period, which had been unaffected by the Shift
key on standard typewriters.
This also made it possible to position the ampersand and apostrophe
near their standard locations on manual typewriters,
while optionally shifting them lower in the table in the 6 bit
subset to preserve them if they were considered more important than
the relational operators.
.IP \(bu
The proposal from the Rome meeting used the dollar sign as one
of the characters that would be replaced by one of the British
duodecimal digits, leaving their character set without a space
allocated for a currency symbol.
The May proposal saves the currency symbol at the expense of the semicolon.
.sp .5
.KF
.Fig
.so 1962-05-ascii.pic
.B "Figure \n[Figure]."
.nr Figure +1
Proposed standard, May, 1962
.Line
.KE
.PP
The members of X3.2 voted in favor of the proposed standard
and sent it to X3 for review.
X3 voted in favor of the proposal on September 10, 1962,
and forwarded it to the American Standards Association.
While it waited for their approval, discussions of how
to improve the code continued.
.PP
At its October 25th meeting, the X3.1 subcommittee, which
was standardizing a numeric character set for optical character
recognition, proposed that X3.2 include its four special punctuation
marks in the last four positions of the numeric column of the
proposed ASCII.
This never happened as it would have displaced the useful
relational operators and the essential question mark.
Later it was proposed to place these following the
alphabet instead, where the characters were already
considered more expendable.
.PP
Other people had their eye on the two nearly empty rightmost
columns of the code.
In the proposal from September, 1961 the columns were clearly
intended for a lower case alphabet, but the inclusion of
three control characters there with a space reserved for a fourth
made it tempting to allocate additional control characters there,
even though 36 controls was enormously more than had been
available in earlier encodings.
A proposal from E. J. Lewis and W. H. McKenzie, arguing for
the use of the unassigned space for more controls, said that ``[t]hose
that actually use the lower case alphabet represent a small
specialized group,'' even though their proposal was typed
using both upper and lower case.
.PP
Some others considered it obvious that the right two columns
should be used for a lower case alphabet,
including K. J. Amos of Creed and Company in England.
His correspondance with J. E. Auwaerter reveals that
as of November, 1962 ``[t]he question is really not settled yet
and in the final event may go either way.
The significant fact, however, is that the code at present leaves
room to attain a secondary alphabet by either means.''
Auwaerter also indicated that the lower case alphabet was the
most popular idea for what to do with the unassigned area,
followed by additional programming symbols, with additional controls
the least popular.
.PP
While the code waited for ASA approval,
there were increasing external pressures to
approve the proposed character set as a standard whether or not
it was possible to make improvements to it.
The United States Department of Defense was among the groups
that was unwilling to commit to the code before it was officially
made a standard, but was also eager to begin using it as soon as
possible.
A Department spokesperson said that waiting a year to convert to
ASCII would double the cost of conversion and would
add a year to the completion time of the projects using it.
.PP
Pressure in a different direction came from the Teletype Corporation,
which had been designing the Model 33 terminal specifically for
use with ASCII.
The availablity of the Model 33 would make ASCII
a de facto standard for some applications, even if the code
was never adopted as a formal standard.
The Model 33 began to be advertised in computer magazines
in May, 1963.
.PP
Nevertheless, the Standards Review Board (BSRB) of the
Business Equipment Manufacturers Association (BEMA),
the sponsor of X3, was dissatisfied with the code as it stood,
and in January, 1963 urged X3 that submission of the proposed ASCII
to the ASA was premature and that it should be delayed until standards
were available for applying the code to punch cards, paper tape,
magnetic tape, and machine communication.
In spite of their objections, the ASA approved the proposed code
on June 17, 1963, and it officially became the American Standard
Code for Information Interchange.
.SH
Internationalization
.PP
Meanwhile, additional efforts were underway to produce a standard
that would also be useful for international communications.
In January, 1963, the ISO produced a draft standard character set,
the seven-bit version of which was essentially identical to ASCII,
but with the dollar sign replaced with a space for a country-specific
currency symbol, the backslash optionally replaced with a second
currency symbol, and the left and right brackets and the backslash
marked as suitable for replacement with additional letters as needed
in any particular country.
In addition, it contained an official six-bit subset,
shown here in figure \n[Figure].
.KF
.Fig
.so 1962-01-iso-6.pic
.B "Figure \n[Figure]."
.nr Figure +1
The ISO 6-bit proposal
.Line
.KE
.PP
Further internationalization work took place at the meeting of
the CCITT Working Party on the New Alphabet in Geneva, May 13-15, 1963.
For the most part, their work was based on adapting the existing ISO
proposal to the CCITT's needs, except for a German proposal which called
for a different structure, with a self-contained six bit code in the
top half of a 7-bit code and the other half divided into one quarter
controls, one half with a second alphabetical case, and one quarter
left unassigned.
.PP
This idea was not particularly popular,
and instead the ISO code was modified to add a lower case alphabet
in the unassigned area, the ACK control temporarily removed to
make room for additional letters, and the following punctuation marks:
.TS
center;
c c c c c c c c c c.
[	\e	]	\(ua	\(<-	@	!	"	#	CS
.TE
reserved for national characters and accent marks.
.PP
The report from the May, 1963 meeting indicated that the CCITT
had determined at its 1958 conference in Warsaw that the following
accents were the ones necessary for international communication:
.TS
center;
c c c c c.
\(aa	\(ga	\(ha	\(ad	~
.TE
By March, 1964, there was a revised ISO 7-bit code which
made room for these accents by
replacing the double quote with the diaresis,
making the tilde an alternate graphic for the number sign,
replacing the apostrophe with an acute accent,
adding an underline character in position 6/0,
just previous to the lowercase ``a,''
and replacing the \(ua and \(<- symbols with the circumflex
and tilde accents, respectively.
.PP
The Polish response to the ISO draft presented a new proposal
for how to add accented characters to the 6-bit set,
which had only been provided with three national use characters,
not with independent accent marks.
The three national use characters were insufficient to give
enough accented letters for the Polish language,
so the proposal modified the
ISO 6-bit code as shown in figure \n[Figure],
adding a backspace character and turning the relational operators <, =, and >
into punctuation marks.
.KF
.Fig
.so 1964-03-poland.pic
.B "Figure \n[Figure]."
6-bit accented set
.Line
.KE
.PP
According to the proposal, accented characters could be
constructed with a sequence of a letter, the backspace character,
and an accent mark.
The accent characters could continue to be used as the
relational operators (with A\|\(aa\|B representing A\|<\|B, and so on),
according to the proposal,
with ``only a slight inconvenience in reading mathematical relations.''
.PP
The Polish proposal was not included in the followup ISO 6-bit draft,
issued May 20, 1994,
but evidently (judging from John Auwaerter's report on the
October, 1964 ISO meeting) its use of Backspace to overstrike accents was
a novel idea and was the source of the use of Backspace as a way
to accent characters in the new draft's 7 bit character set.
.PP
The new draft also made the change requested
by the British and Germans (``having in mind assistance to
certain countries who may have difficulties with
certain extended letters''), that the underline should be moved to
position 2/0, just before the capital A, and the @ sign moved
elsewhere.
It also incorporated a renovation of the control area
that was made necessary by the addition of a second alphabet
in what had been the unassigned area, displacing the ACK and ESC
controls that had been located there.
.PP
Enough room was made for ACK and ESC by reducing the number of
information separators.
The March 31, 1964 British comment on the ISO second draft
had indicated that four information separators were enough
and that they should be given specific names: unit separator,
record separator, group separator, and file separator.
The RU character was also judged to be of limited usefulness
and removed.
.PP
ACK was relocated out of stick 7 into one of the vacated
locations.
The remainder were filled with new controls:
SS (Start of Special Sequence),
ES (End of Special Sequence),
CNCL (Cancel),
and EOB (End of Block).
Several other controls were renamed at the same time:
SOM became SOH (Start of Heading),
EOA became STX (Start of Text),
EOM became ETX (End of Text),
and WRU became INQ (Inquiry).
The formerly unspecified Format Effector 0 became BS (Backspace).
When ESC, too, was moved, ES was deleted and ESC put in its place.
.PP
As of May, 1964, the 7-bit ISO code looked like figure \n[Figure].
By this time it had been decided that the double quote (") and
apostrophe (') were to serve as accent marks, diaresis (\(ad) and
acute (\(aa), respectively, when overstruck using backspace,
and that the former up arrow was now the circumflex accent (^).
The tilde accent had not been given its own character and was
considered an alternate graphic for the circumflex.
The need for cedilla and hacek accents was acknowledged, but
these were to be handled by assigning to them characters
reserved for national use.
.KF
.Fig
.so 1964-05-iso.pic
.B "Figure \n[Figure]."
.nr Figure +1
May, 1964 ISO draft 7-bit code
.Line
.KE
.PP
On July 14th, the X3.2.4 committee incorporated the
changes from the ISO draft into ASCII, retaining the $ and \e
characters in the spaces ISO had left for currency symbols
and filling the national use characters following the
lower case alphabet with left brace ({), vertical line (\(bv),
right brace (}), and the overbar or not sign (\*[not-sign]).
.SH
Accommodating International Needs
.PP
The CCITT meeting in Geneva October 6th through 9th, 1964
required further rearrangements to the table.
The Russian delegates asked that accommodations be
made for the Cyrillic alphabet, which would require 31
characters in each of two cases.
The only way to do this was to allow all but the last
space in each of the alphabetic segments to be filled with letters,
and since the underline was of more general use than the circumflex,
it was reassigned to the position at the bottom of column 5.
.PP
At the same meeting, the Portugese delegation asked that the
tilde and circumflex symbols be assigned to different characters,
since both were used in the Portugese language.
To make this possible, the second currency symbol was deleted
and the tilde added in its place.
.PP
There was also discussion of the first currency symbol, in which
it was decided that it was too dangerous in international traffic
to allow currency signs to be freely substituted: either the $ and \(Po
signs should be permanently assigned or the currency symbols deleted.
Data processing representatives insisted that for their purposes,
a currency symbol of some sort had to be included.
The eventual decision was that a neutral currency symbol (\(Cs) would
replace the former space left for a substitutable currency symbol.
.PP
Some old decisions were also called into question.
The German delegation suggested that rather than using Backspace
to overstrike accents on letters, the accent characters should be
nonspacing and should simply be typed before or after the letter
they are to appear above.
The Chairman argued that it was more useful to be able to overstrike
characters in general than to restrict it only to accents,
especially so that the underline character can be overstruck to
underline text.
.PP
Two years earlier, at the 1962 meeting in Rome, H. McG. Ross
had mentioned that British equipment was no longer requiring
that duodecimal digits 10 and 11 be represented by their own
characters.
The British delegation to the Geneva meeting suggested that
the note allowing these characters to be substituted for
the colon and semicolon be deleted from the draft standard.
.PP
The rearrangement of control codes the year before had deleted
the WRU (who are you?) control code and replaced it with ENQ
(Enquiry).
The CCITT working party insisted that for telegraphic purposes,
it was essential that terminals be able to idenitfy themselves
in response to a remote request, so WRU was reinstated.
Following these discussions, the new CCITT character set looked
like the one in figure \n[Figure].
.KF
.Fig
.so 1964-10-ccitt.pic
.B "Figure \n[Figure]."
.nr Figure +1
CCITT character set, October, 1964
.Line
.KE
.PP
In early 1965, the members of X3.2 had every reason to believe
that the ISO would adopt the changes that had been proposed
by CCITT and prepared a Proposed Revised American Standard
Code for Information Interchange that also incorporated
most of the new assignments made at the CCITT meeting.
The proposed revision, as published in the
.I "Communications of the ACM" ,
included the character set shown in figure \n[Figure].
It is not clear why the overbar (\*[not-sign]) and
vertical line (\(bv) switched positions between the
July, 1964 and April, 1965 ASCII proposals.
.KF
.Fig
.so 1965-05-ascii.pic
.B "Figure \n[Figure]."
.nr Figure +1
Proposed Revised ASCII, April, 1965
.Line
.KE
.PP
But in fact when the fourth ISO draft was distributed
at the end of April, it incorporated none of the CCITT changes
that the ASCII proposal cited as the ``anticipated
fourth draft proposal.''
.PP
In addition to the confused international situation,
some aspects of the standard were also being questioned
in the United States.
W. E. Andrus, Jr., of I.B.M., voted in favor of adopting the revision,
but also asked that the logical ``or'' (\(bv) and
logical ``not'' (\*[not-sign]) characters be placed
outside of the national use area, where they could not be used
in programming languages that would be used in other countries.
He also proposed that the @ sign would be more usefully
placed in the center four columns so that it could be
used in uppercase-only systems and that the character
set include the cents sign \(ct.
The X3.2.4 task group decided that the proposal to
swap the vertical line and exclamation point was
unwarranted and that nothing could be done about
the not sign until the differences between ISO and CCITT were resolved.
.PP
Another letter came from Thomas Kurtz, the director of
the Dartmouth College Computation Center,
who expressed his regret that the \(ua symbol was missing
and suggested that the vertical bar should be replaced by it.
John Little, the chairman of X3.2.4, replied that the
proposed revised ASCII should have mentioned that the ^
character was meant to be interpreted as the up arrow when
not overstruck with another character.
Nevertheless, later revisions continued not to mention this.
.PP
X3.4-1965, the Revised American Standard Code for Information Interchange
became an American Standard in December, 1965
(where did I find this date?)
but at the January 25-26, 1966 meeting of X3.2.4, J. B. Booth
moved to delay publication of the standard until the CCITT, ISO,
and ASCII standards could be reconciled.
A joint meeting of the ISO TC 97/SC 2 group and the
CCITT Alphabet group was to be held in April, 1966,
and it was hoped that the issues could be resolved there.
.PP
In response to the requests to relocate @ into the central
four columns,
a draft amemendment to the new unpublished standard was
prepared which resulted in the code table shown in figure \n[Figure].
The characters affected were @, ~, \(bv, and \*[not-sign].
.KF
.Fig
.so 1966-01-proposal.pic
.B "Figure \n[Figure]."
.nr Figure +1
Amended Revised ASCII, January, 1966
.Line
.KE
.PP
As had been hoped, the April, 1966 meeting between the CCITT and ISO
character set groups resulted in a unanimous set of changes
from the ISO draft proposal.
The changes agreed up on
relocated the @, `, and \*[not-sign] characters,
deleted ~,
made \(Po, not #, the standard symbol for position 2/3,
and
made $, not \(Cs, the standard symbol for position 2/4.
The overline character was to serve as ~ where necessary.
D. A. Kerr's report from the meeting urged X3.2 to adopt
these changes and to restore the \e and \(bv symbols to
their former locations in positions 5/12 and 7/12.
.PP
On May 12, Kerr prepared a new draft of ASCII, incorporating
these changes (but exercising the right to substitute # for \(Po
and ~ for \*[not-sign]), with a cover letter noting with relief
that ``few people have
(thank goodness) seen X3.4-1965.''
The draft included the now-familiar character set
reproduced in figure \n[Figure].
.KF
.Fig
.so 1966-05-proposal.pic
.B "Figure \n[Figure]."
.nr Figure +1
Draft ASCII Standard, May, 1966
.Line
.KE
.SH
Trouble with SHARE
.PP
The vote on the proposed revision was supposed to be a quick one
to bring ASCII into line with ISO's fifth draft,
with ballots from X3.2 members due June 2, 1966.
Instead, the process was interrupted by the arrival
of an angry letter from H. W. Nelson, the chairman of the
SHARE Character Set Committee, declaring that
``the `Proposed Revised (1966) American Standard Code for
Information Interchange' dated May 20, 1966 does
.I not
meet the needs of computer programmers!''
.PP
As W. E. Andrus had the previous year, Nelson asked
that the character set be rearranged for the benefit of PL/I
programmers, who wanted vertical line and overline characters
in the international use section of the middle four columns
of the character set.
He reported that it had been suggested at
the previous day's meeting of the SHARE PL/I Project
that the \(bv, #, \e, \*[not-sign], $, and ^
characters be shuffled to produce the character set
illustrated in figure \n[Figure].
.KF
.Fig
.so 1966-06-share.pic
.B "Figure \n[Figure]."
.nr Figure +1
PL/I Project Proposal
.Line
.KE
.PP
L. L. Griffin, the chairman of X3.2, replied that the
proposed changes were impossible because the $ and # symbols
occupied spaces allocated in the ISO code for national currency
symbols, so these spaces could not be opened up for other characters
simply by relocating $ and #; that changes incompatible
with international standards and the original version of ASCII
were unlikely to be accepted; that the circumflex ^ is a suitable
symbol to mean
``not,'' and no more likely to be confused with the \(AN sign for ``and''
than the vertical bar \(bv is to be confused with the letter ``l''
or the exclamation point; and that the ^ and ~ symbols are likely
to be displaced by national usage characters except in extreme
cases such as Cyrillic.
.PP
Another letter soon came from Philip H. Dorn, the manager of the
SHARE PL/I Project, agreeing with Nelson.
In addition, Dorn wrote that the the backslash ``does little
or nothing for programmers,'' regretted the absence of the \(ua
and \(<- symbols, and added his ``voice of protest to the
inclusion of exclamation point (2/1) and circumflex (5/14).''
.PP
``Through this selection process,'' he wrote,
``one arrives at the quaint notion that a logical NOT will look
like the mathematical AND, and that OR will be represented by
the world-wide mathematical symbol for factorial....
It is vital that [the \(bv and \*[not-sign] characters]
be returned to the international usage section of the center 64.''
.PP
He went on to deplore the use of the character sequences
\fC\e/\fP and \fC/\e\fP to represent \(OR and \(AN,
decline to waste time decrying the lack of \(ua, \(!=, \(>=,
\(<= and \(<-, and declare that ``he can not stand idle while
a character set totally hostile to the programming world is
presented to the world as an American Standard.''
.PP
Herb Van Brink, the manager of the SHARE Fortran Project,
also wrote to X3.2 to complain about using ^ to mean ``not.''
As a result of the controversy, IBM's representative
C. E. Mackenzie voted against the ASCII revision in the X3.2
vote June 15th.
.PP
Nelson had the chance to make his case in person at the X3.2
subcommittee meeting held June 29, 1966 in New York.
For the reasons given above, the members of X3.2 could not
rearrange the character set to meet his demands,
but did agree to a change that made ASCII slightly more
palatable:
character 7/14 would cease to be called Overline and would
have as its sole function the Tilde accent, opening the possibility
for specific devices to stylize
character 5/14 (the circumflex) to look like the \*[not-sign] character.
.PP
This was not enough, though.
On August 18th, IBM's representative
to X3, J. A. Haddad, voted against ASCII because, while
the table had represented character 7/14 as ~ since May,
the text still referred to it as Overline.
The SHARE Standard Project was prepared to accept the overline
compromise but continued to insist (as ``one last, simple change'')
that the exclamation point and vertical line be exchanged.
.PP
The controversy had still not been resolved by December.
As a last attempt to achieve consensus,
the members of X3.2 offered to change the share of the vertical line
character from \(bv to \*[broken-bar]
so that PL/I users could feel free to stylize the exclamation point
to look like a vertical bar.
As a result, X3.4-1967 could finally be approved July 7, 1967.
.SH
A Few More Changes
.PP
Naturally, after all this there was still the need for another revision.
On July 5, 1967, J. B. Booth wrote that there was ``a clear trend
in the field of keyboard oriented devices'' to have a single character
that combined the carriage return and line feed functions.
ISO had allowed the ``new line'' function to be substituted for
line feed since its January, 1963 draft,
so the new revision of ASCII also included this as an option.
.PP
The other change was necessary to make sure the ASCII name survived.
The American Standards Association had changed its name to
the United States of America Standards Institute prior to the
publication of X3.4-1967, and as a result some people had
begun referring to the code as ``USASCII.''
.PP
D. A. Kerr felt that since ASA was still being used as the
standard terminology for film speed, even though it no longer
matched the name of the organization that standardized it,
there would be little opposition to continuing to encourage
the use of the ASCII name as well.
He proposed two paragraphs to be added to the standard
asserting that the standard code could be referred to
either as ASCII or as USASCII.
.PP
The revised standard X3.4-1968, was approved October 10, 1968,
and incorporated both of these changes but no alterations to
the code table itself.

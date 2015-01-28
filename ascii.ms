.so style.ms
.
.
.
.
.if \n[doublespace] \{.
.	LP
.	if 1 \fBBaudot, Murray, Hollerith, and ASCII:\fR
.	br
.	if 1 \fBCharacter Codes from 1874 to 1968\fR
.	sp
.	if 1 Eric Fischer
.	sp
.	if 1 3477A 18th St.
.	br
.	if 1 San Francisco, CA 94110
.	br
.	if 1 (415) 865-0123
.	br
.	if 1 enf@pobox.com
.
.	sp 2
Biographical sketch:
.	sp .5
Eric Fischer lives in San Francisco
and works for Danger, Inc. in Palo Alto, California.
He received a bachelor's degree in Linguistics
from the University of Chicago in 1995.
His other historical interests include
text-editing software
and public transit and road systems.
.	bp 1
.\}
.if t .TL
.if n <h1>
Baudot, Murray, Hollerith, and ASCII:
.br
.if n <br>
Character Codes from 1874 to 1968
.if n </h1>
.if !\n[doublespace] \{.
.	if t .AU
.	if 1 Eric Fischer
.	br
.	if n <br>
.	if 1 \fC\s-1enf@pobox.com\s0\fP
.\}
.my-ab
\('Emile Baudot's printing telegraph was
the first widely adopted device
to encode letters, numbers, and symbols 
as uniform-length binary sequences.
Donald Murray introduced a second successful code
of this type.
Versions of Baudot's and Murray's codes
were standardized 
as International Telegraph Alphabets Nos.\~1 and\~2, respectively.
A third character code, originally used with tabulating machines,
began to be used also with computers.
Deficiencies in these codes led to
work by many people to design a replacement
suitable for both computer and communications uses,
resulting in the ISO 646 standard,
better known by the name of its United States variant,
ASCII.
.my-ae
.I "This work has been submitted to the IEEE for possible publication."
Paper copies:
.I "Copyright may be transferred without notice, after which this version"
.I "will be superseded."
Electronic copies:
.I "Copyright may be transferred without notice, after which this version"
.I "may no longer be accessible."
.sp
.if 0 .if t .if '\n[doublespace]'0' .2C
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
.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
.SH
Introduction
.endSH
.PP
An alphabet provides a way to represent the sounds of spoken language
as symbols that can be written on paper.
A character code, analogously, provides a way to represent
the symbols of written language as electrical patterns
that can be stored in a computer or transmitted
over a communications line.
.PP
Just as two different alphabets can sometimes
be used to write the same language,
there exist different codes
that can be used to encode the same set of characters.
Because of the large number of these codes,
some of which differ from others only in minor details,
it is important that there exist standards
so that it is possible to ensure that a piece of encoded text
is decoded using the same code that was used to encode it.
.PP
In the most successful cases of code standardization,
the fact that any encoding is taking place at all is
almost invisible.
With most present-day computers, neither the programmer
nor the user is generally aware at all that the capital
letter A is represented inside the machine as the bit pattern
0100001,
because this basic
assumption is embodied in all the computer's hardware
and software.
Only in those rare cases where it is necessary to
translate to or from a different code must
any explicit coding or decoding be done.
.PP
Only a small number of codes have ever reached
this high level of acceptance.
This paper
attempts to document
the history of four of them:
\('Emile Baudot's and Donald Murray's
five-unit printing telegraph codes, versions of which were
standardized as
International Telegraph Alphabets Nos.\~1 and\~2, respectively;
the twelve-hole punched card code commonly called Hollerith,
and its six- and eight-bit binary representations BCDIC and EBCDIC;
and
the ISO 7-Bit Coded Character Set for Information Interchange,
better known by the name of its United States national variant,
ASCII.
.SH
Early international code standardization
.endSH
.PP
In the early years of telegraphy
there was no need for formal code standardization.
As long as telegraph systems were not interconnected with
each other,
the operators of each telegraph system
only needed to be aware of the conventions used within their own system,
and it did not matter if other systems operated in completely
different ways.
Even just within Morse-type telegraph systems,
the code in common use in Europe (\*[Figure])
differed considerably from the one used in the United States of America
(\*[Figure]), and neither was identical to what
had been described in Morse's
patent (\*[Figure]).
.PP
In March, April, and May, 1865, however,
the first International Telegraphic Conference
was held in Paris, France,
and character codes became for the first time the subject
of an international standard.
A code standard was only one of many matters that had to be
settled at the conference before the telegraph lines of different
countries could be interconnected, and it was not a controversial topic
and occupied little of the delegates' time.
.PP
The French telegraph administration proposed that the international
standard character code should be the Morse code variant (\*[Figure])
already in common use in Europe.
Only a few changes to it were proposed.
At the session on April 3rd, the Swedish delegate, Mr. Brandstr\(:om,
proposed that
the accented letter \(oa be added to the table,
with the encoding \(bu--\(bu-.
Mr. de Hakar made the additional proposal that the short-hand
versions of the digits should be replaced by the even shorter
encodings (\*[Figure]) used in Spain.
At the April 4th session the committee accepted the addition
of the letter \(oa but rejected the change to the short-hand digits.
It also adopted a new encoding (--\ --\ --), already in common use,
for the fraction bar (/).
This completed the development of the first version of
International Morse Code.
.PP

.SH
\('Emile Baudot and his six-unit telegraph
.endSH
.PP
At the beginning of the 1870s,
telegraphy had recently been revolutionized
by the adoption of two technologies:
multiple telegraphy,
which allowed more than one operator to use
a single telegraph line at the same time,
and printing telegraphy,
which automatically produced a written
record of messages received,
something that normally had to be done by hand.
The two technologies could not be used together, though,
because
it was difficult enough to keep the sending and receiving
stations of a printing telegraph synchronized
without introducing the additional
voltage shifts or timing limitations
that would have been necessary to operate
multiple telegraph connections over the same line.
.PP
The creation of a multiplex printing telegraph
required an entirely different approach
to printing telegraphy from
what was then in use.
The existing House, Hughes, and Phelps printing telegraphs
relied exclusively on timing to communicate the characters to be printed.
In these systems, the sending and receiving stations
each contained a wheel divided into the same number of segments
as the number of characters the equipment could print,
and the wheels in the sending and receiving equipment would rotate
continually at the same speed.
To transmit a character, the sending equipment would wait
until the desired character had rotated into place
and then send a single burst of electricity across
the telegraph line.
The receiving equipment would receive the pulse
and would interpret it as the signal to print the character
that had rotated into place on its own wheel.
If the wheels had remained synchronized properly,
the character that would print
would be the same character the sending station had
intended to transmit.
.PP
It was French telegrapher
Jean-Maurice-\('Emile Baudot (\*[Figure])
who invented the new approach to telegraph design
that would allow multiplexing and printing to be used together.
Baudot had joined the
Administration des Postes et des T\('el\('egraphes
as a substitute telegraph operator on July 16, 1870,
after spending his early adulthood as a farmer.
He had only an elementary school education,
but after joining the telegraph administration he
started studying electrical engineering
in his spare time,
and by 1872 he was ready to start work on the printing
telegraph that made him famous.
He devoted most of the rest of his life to
continually improving printing telegraph technology,
stopping only in 1899 when he was disabled by a stroke.
.PP
Baudot realized that
a telegraph could communicate
which character should be printed
in much less time
than it would then take to rotate the specified character into place
and print it,
and that
if the transmission and selection stages were completely separated,
the telegraph line could be connected
in turn to each of several printers.
Each would spend its allocated time receiving
one encoded character,
and once the character had been received,
the printer would start the more time-consuming task of
printing it on paper,
during which time control of the telegraph line
would be turned over to the other printers.
.PP
The key to making this scheme work was to divide the time
evenly between the printers,
and the main consequence of this requirement was that
each character had to be represented by an encoding
that took the same amount of time to transmit.
A code like Morse Code,
in which the letter Q takes four times as long
to transmit as the letter E,
would not be suitable unless each of the printers
was given a long enough ``slice'' of time
to transmit the character with the longest possible
encoding,
in which case all the characters with shorter
encodings would waste time.
The only efficient scheme
was to encode every character
by one of the possible
permutations of the same number of on-or-off ``units.''
.PP
This was not a new idea.
Many early telegraph designs had used multiple wires,
rather than a single wire,
to transmit characters,
and had represented each character by
one of the permutations of voltages that could
be transmitted across the several wires simultaneously.
If a telegraph used three wires, and each of the three could have
three possible voltages (positive, negative, or zero),
it could represent 3\*{3\*}, or 27, different characters.
As Baudot realized, these same three voltages
could be transmitted in sequence over the same wire,
rather than over three wires in parallel,
to represent the same 27 characters.
.PP
For his first-generation multiplex printing telegraph,
patented on June 17, 1874,
\('Emile Baudot appears to have adopted a character code
that had previously been used on one of these three-wire, three-voltage
telegraphs, the one invented by Edward Davy in 1838 (\*[Figure]).
Even though Davy's equipment used three wires,
it used six buttons to select the voltages to be transmitted,
and six marks or spaces on paper to record the voltages that were received,
and Baudot chose to mirror this arrangement
by transmitting each character as a sequence
of six, not three, units,
each of which could be either of two, not three, voltages.
.PP
Davy's code is very limited in its scope.
It encodes only the alphabet, and includes:
.sp .5
.IP \(bu
no digits,
.IP \(bu
no punctuation,
.IP \(bu
no spaces between words, lines, or paragraphs,
.IP \(bu
no special controls, and
.IP \(bu
no other nonalphabetic characters.
.sp .5
.LP
It divides the alphabet into five sections:
.sp .5
.IP \(bu
The letters
.B A
through
.B F
are encoded with one non-zero and two zero voltages.
When the characters are in alphabetical order
and represented as six units,
their pattern moves from right to left.
.IP \(bu
The letters
.B G
through
.B L
are encoded with one zero and two non-zero voltages,
with the two non-zero voltages being the same.
When the characters are in alphabetical order
and represented as six units,
their pattern moves from right to left.
.IP \(bu
The letters
.B M
through
.B R
are encoded with one zero and two non-zero voltages,
with the two non-zero voltages being opposite.
When the characters are in alphabetical order
and represented as six units,
their pattern moves from right to left
in pairs of characters,
the first of each pair using the ``outside'' units
and the second of the pair using the ``inside'' units.
.IP \(bu
The letters
.B S
and
.B T
are encoded with
three non-zero voltages,
with all three being the same.
When the characters are in alphabetical order
and represented as six units,
their pattern moves from right to left.
.IP \(bu
The letters
.B U
through
.B Z
are encoded with
three non-zero voltages,
with one of the voltages being different
from the other two.
Which pattern corresponds to which
character seems to be arbitrary.
.SH
Baudot's five-unit telegraph
.endSH
.PP
Davy's code was not a very efficient one for Baudot to choose
to use with a six-unit telegraph,
because while three three-voltage units
can encode only 27 characters,
six two-voltage units can encode 2\*{6\*}, or 64,
different characters.
Baudot's equipment
could have supported 37 characters
beyond those that were defined by Davy's code.
Five two-voltage units are enough to encode 2\*{5\*}, or 32,
different characters,
which is more than enough
for the letters of the alphabet,
so for
his second-generation telegraph,
first demonstrated to the public in 1878,
Baudot reduced the number of units per character to five.
.PP
At the same time he actually increased the number
of characters his telegraph could communicate
by placing two special control characters in its repertoire.
The
.Ctrl "figure space"
would leave a blank space on the printed record
and at the same time switch the printer
from printing letters to printing
digits and punctuation marks.
The
.Ctrl "letter space"
would switch the printer back to printing letters.
A similar dual-case arrangement had previously
been used on some versions of the Hughes telegraph.




.PP
Not only did
Baudot's five-unit code (\*[Figure]) encode a larger number
of characters using a smaller number of units
than the six-unit code had;
it also assigned the characters their encodings
in a much more systematic way from the perspective of the operator.
Davy had allocated patterns
to groups of letters by the number of non-zero voltages
that would be required
to transmit them:
for the letters A through F,
only a single wire would have a non-zero voltage;
for the letters G through L,
two of the three wires would have the same non-zero voltage;
for the letters M through R,
two wires would have opposite non-zero voltages;
for the letters S and T,
all three wires would have the same non-zero voltage;
and for the letters U through Z,
one of the three wires would have a different non-zero voltage
from the other two.
This is a reasonable enough scheme, but
the pattern is much less visible
in the combinations of keys that have to be pressed to transmit
the characters.
.PP
For his five-unit code,
Baudot, in contrast,
tried to assign encodings
based on the keys that would be pressed to generate them.
His keyboard had five keys, directly corresponding
to the five units that comprised each character,
with two keys operated by the left hand
and three by the right (\*[Figure]).
One of the left-hand keys by itself would transmit the
.Ctrl "letter space" ;
the other would transmit the
.Ctrl "figure space" ;
and pressing both of the left-hand keys together
produced an asterisk (*) signifying
that the operator had just made an error.
All the other characters were transmitted
by a combination of right-hand and left-hand keys.
The two left-hand keys were used to select
either the vowels or one of three divisions
of the consonants,
and the three right hand keys were used to select
a single character from one of these four divisions.
The sequence of right-hand patterns corresponding
to the sequence of characters within the quadrant
was the same in each quadrant.
.PP
In spite of this careful design,
Baudot's use of a five-key keyboard was a step
backward from the earlier printing telegraphs,
all of which had piano-like keyboards
with one key corresponding to each character
that could be transmitted (\*[Figure]).
Baudot's code was not well suited to such a keyboard,
because if the letters were put in alphabetical order,
the corresponding digits in the figures case would
not be in order (\*[Figure]).
In 1878 there had been no well-established standard
for alphabetic keyboards,
so Baudot's choice of a five-key keyboard
had not been an unreasonable one,
but as typewriters became
increasingly common,
his keyboard design grew obsolete.
.SH
Donald Murray
.endSH
.PP
The person who
wanted a more typewriter-like telegraph
enough that he designed one himself
was New Zealand-born journalist Donald Murray.
Like Baudot, Murray had intended to be a farmer,
but a college-educated one:
he attended the Agricultural College
in Canterbury, New Zealand.
But, as he put it, ``farming proved unsuitable,''
and after a trip to Europe in 1886
Murray returned to New Zealand
and began a new career in journalism
at the New Zealand Herald,
while simultaneously earning a B.\~A. degree
from New Zealand University.
In 1891 he moved to Sydney, Australia
where he worked for the
Sydney Morning Herald
and earned his M.\~A. from Sydney University.
.PP
Murray appears to have become interested
in telegraphy through its application in syndicating newspaper articles,
and specifically in printing telegraphy because it would allow
``serial stories, special articles, and telegraphic, cable,
or other news'' to be typeset ``without the assistance of
any skilled labor whatever.''
Because this was his goal,
what he first designed was not a printer specifically for telegraph use,
but a device that attached beneath a typewriter or typesetting
machine and would pull its keys down just as if a person
had pressed them.







.SH
Herman Hollerith and punched card codes
.endSH
.PP
At the same time as these telegraph codes were being developed,
another, unrelated, family of character codes was evolving
on the tabulating machines first developed
by Herman Hollerith.
Early on, by 1887,
Hollerith had established a standard format
for his tabulating cards.
He divided them into several columns,
each of which was further divided into nine vertical rows.
Any one of these rows could be punched to represent
a digit from one to nine,
or a column could be left unpunched to represent
the digit zero
(\*[Figure]a).
.nr Hollerithfig \n[Figure]
He made no use of multiple punches
within the same column.
.PP
By 1894 Hollerith had realized that his use
of an empty column to represent the digit zero gave no
way to distinguish between
missing data and data whose value was zero,
so he added a tenth row to the top of each column.
A punch in any of the ten rows would represent
a digit from zero to nine,
and an unpunched column could be detected
and treated as an error
(Figure \n[Hollerithfig]b).
.PP
By 1903 Hollerith had changed his card format again
to add two more rows at the top of each column
(Figure \n[Hollerithfig]c).
It appears that originally the eleventh hole was
designated ``X'' and was used to indicate a card
that should be sorted separately from the others
and treated specially.
Later the eleventh hole was punched
to indicate a negative number.
The twelfth hole seems to have been designated ``R,''
but I do not know its intended purpose.
.PP
In 1915 or 1916,
Charles Foster
realized that
if multiple punches were used in the same
column of a tabulating machine card,
the combinations could be used to represent
letters of the alphabet rather than digits.
He used punches 11 and 0 through 9 by themselves
to represent the letters A through L,
the same punches in combination with punch 12
to represent the letters M through Y,
and punch 12 by itself to represent the letter Z
(Figure \n[Hollerithfig]d).
Foster's code only provided for a total of 24 characters,
including
.Ctrl space ,
though,
so he had to leave out the letters J, V, and X.
.PP
The omission of these letters was fixed
by Robert Neil Williams,
who came up with a better scheme
in which the alphabet was divided into three,
rather than two, ``zones,''
which were
selected by the 8 punch, the 9 punch, or the absence of any zone punch
(Figure \n[Hollerithfig]e).
Remaining punches 11 and 0 through 7 selected
one of the nine characters from each of these zones,
which together included the complete alphabet plus a hyphen (\-).
Ten years later, in 1925,
IBM's chief engineer\c
.Ref bashe-10
James\~W. Bryce
began the development of alphabetic
equipment at that company by copying the Williams code
but including a character for ``Mc''
instead of the hyphen (Figure \n[Hollerithfig]f).
.PP
A second code used by Bryce in 1930
made the conceptual leap of allowing the same column
to contain either alphabetic or numeric data.
The alphabetic codes mentioned above all reused
the single-punch codes normally used to encode
digits to encode some of the letters of the alphabet.
Bryce was able to retain the standard encodings
for the digits by providing
for six zones, selected by the 0, 11, or 12 punch,
the 11 and 12 or 0 and 11 punches together, or
the absence of any zone punch (Figure \n[Hollerithfig]g).
This was enough zones that he could also provide
four symbols:
the comma (,), slash (/),
cents sign (\(ct), and dollar sign ($).
He placed the letter O out of order,
though,
so data encoded using this code
could not be sorted easily.
.PP
Fred\~M. Carroll,
who had invented one of IBM's first printing tabulators
in 1916,\c
.Ref bashe-8
encoded the alphabet and digits
more compactly in four zones in 1932 (Figure \n[Hollerithfig]h),
although his code did not provide for any printing
characters other than the letters and digits.
It also unfortunately encoded the digit 0
using punches 12 and 9, rather than punch 0,
making it incompatible with the standard encoding for the digits.
Albert\~W. Mills fixed this problem
in his otherwise similar code (Figure \n[Hollerithfig]i),
which retained Hollerith's original encodings for
all the digits.
At the same time he shifted the third zone of the alphabet
down by one punch,
reducing the risk of
making the card fragile
by punching two holes in adjacent rows of the same column.
.PP
Nevertheless the temptation to use the combination
of the 0 and 1 punches
was too strong to resist,
and several people used it as a way
to make a single non-alphanumeric character
available.
For example, Eugene\~A. Ford,
whose association with IBM's predecessor
the Tabulating Machine Company dated to 1899,\c
.Ref bashe-5
used the 0+1 combination
to represent the period (.) in 1935 (Figure \n[Hollerithfig]j).
It took longer
for the 11 and 12 punches to be used by themselves
to represent characters,
but they had acquired their respective standard assignments
of ``credit'' (or minus, \-) and ampersand (&) by 1943
(Figure \n[Hollerithfig]k),
as can be seen in a patent by Eugen Buhler.
.PP
Soon the desire for additional characters
led to the use of three punches in a single column
to supplement each zone with another two characters.
It seems likely that the 8 punch was chosen
as the one to be combined with others
(specifically the 3 and 4 punches)
because its binary representation (1000)
can be added to a number less than 8
using just a logical
.I or
operation
rather than requiring the use of full-scale
arithmetic.
The 48-character set that Reynold\~B. Johnson used in 1946
(Figure \n[Hollerithfig]l)
in one of his pioneering dot-matrix printers\c
.Ref bashe-275
did not include the ``credit'' character
from its predecessor,
but added an apostrophe ('),
double-dagger (\(dd),
number sign (#),
cents sign (\(ct),
asterisk (*),
period (.),
and parentheses (\fC(\fP and \fC)\fP).
.PP
These character assignments did not last long, though.
By 1951, as can be seen in
a patent by Arnold\~B. Crowell (Figure \n[Hollerithfig]m),
the minus sign (\-) had been restored to the 11 punch
and the slash (/) to the 0+1 combination,
and the eight triple-punch encodings
had been definitively assigned to the
number sign (#), at sign (@),
period (.),
``lozenge'' (\*[lozenge]),
dollar sign ($),
asterisk (*),
comma (,),
and percent sign (%).
Most of these characters were clearly
chosen because of their common use,
but I do not know why the lozenge
was included.
.SH
Variations of the punched card code
.endSH
.PP
The code just described,
commonly known as ``Hollerith'' even though he had nothing to do
with most of its features,
became the de facto standard for punched card use,
but variations soon developed.
For IBM's Type 701 computer,
for instance,
the ampersand (&)
was replaced by a plus sign (+),
which was more useful for the
mathematical applications for which
the computer was intended.
In addition,
the 701's printer had the ability
to detect whether it had printed a character
different from what the computer had told it to print,
but it could only detect
problems corresponding to punches 1 through 9.
It did not have the ability to check
whether a character was selected
from the correct zone,
so it could not distinguish
between the plus (+) and minus (\-)
signs, the encodings for which used only zone punches.
To make it possible to
print plus and minus signs
with error checking,
the number sign (#) and at sign (@)
were replaced by a second plus and minus sign,
respectively.
IBM called the standard 48-character code
type arrangement A,
and the 701 variation
type arrangement G.
.PP
A further divergence was necessary
on the IBM 704 computer to add the special
characters needed for the Fortran programming language.
The percent sign (%) and lozenge (\*[lozenge])
were replaced, respectively,
by left and right parentheses (\fC(\fP and \fC)\fP),
and the extra plus sign (+)
was replaced by an equals sign (=).
The result was called type arrangement F.
A later version of the Fortran character set
replaced the second minus sign (\-)
by an apostrophe ('),
resulting in what was called type arrangement H.
There were also type arrangements B, C, D, E, J, and K,
each of them varying in some minor way from arrangement A
(\*[Figure]).
.PP
Even greater variability was found in the ways
card encodings for characters were represented
in the memory of binary computers (\*[Figure]).
It would have been possible to represent each potential
punch of a card column by a single bit of memory,
for a total of 12 bits per character,
but this would have been an excessive number
because 12 bits are enough to encode
2\*{12\*}, or 4096,
different characters,
and memory was too expensive to be wasted
using more bits per character than were necessary.
The standard method that instead came into use was
to represent each card-code character
using only six bits:
two for the zone punches,
and the remaining four for the binary-coded-decimal
representation of punches 1 through 9.
.PP
This sounds more straightforward than it actually is.
Some computers, such as most of IBM's, were designed in such a way that
they naturally used the binary representation of 0 (0000)
to encode the digit 0,
the binary representation of 1 (0001) for the digit 1,
and so on through the binary representation of 9 (1001)
for the digit 9.
Others, notably Univac, used ``excess three'' arithmetic,
in which the digit 0 was naturally encoded
by the binary representation of 3 (0011),
the digit 1 by the representation of 4 (0100),
and so on through the digit 9, encoded
by the binary representation of 12 (1100).
Whichever representation was used,
a special case would generally be made for the digit 0,
which, because 0 was used as a zone punch,
appeared on cards in a different zone
from the rest of the digits.
In some computers the special case moved the digit 0
to the encoding preceding the digit 1;
in others it moved the digit 0
to the encoding following the digit 9.
.PP
There were also different philosophies about what
bit patterns should be used to represent the zone punches.
IBM's ``commercial'' equipment
represented
the 0 zone by 16 (binary 01\|0000),
the 11 zone by 32 (binary 10\|0000),
and the 12 zone by 48 (binary 11\|0000),
and the lack of a zone punch by 0 (binary 00\|0000).
Its ``scientific'' equipment,
and Univac's equipment,
in contrast,
represented the lack of a zone punch by 48 (binary 11\|0000),
the 12 zone by 0 (binary 00\|0000),
the 11 zone by 16 (binary 01\|0000),
and the 0 zone by 32 (binary 10\|0000).
The former was a more straightforward conversion,
but the latter put the alphabet in the right order for sorting.
.PP
So even if two computers used the same encodings
for the same characters on cards,
which they frequently did not,
they were likely to use incompatible encodings
in memory and on magnetic or paper tape.
There was absolutely no standard,
either on cards or in memory,
for any characters a computer might
support beyond the basic 48.
By 1955 the situation had
become sufficiently intolerable
that Herbert Grosch
urged the attendees of the Eastern Joint Computer Conference to
``register common codes so that `a' will always be `a'
and `7' will always be `7,' or so that we can program the
translation.''\c
.Ref grosch-1955
But it was not until several years later
that any serious standardization
effort got underway.
.SH
The search for a better code
.endSH
.PP
Instead,
the number of incompatible codes continued to grow
as people invented
new codes designed to eliminate
some of the flaws
that were becoming increasingly
obvious in the de facto standard punched card code.
As a graduate student at Stanford University in 1959,
U.\~S. Army Signal Corps Captain
William\~F. Luebbert created one of the most notable
of these character codes (\*[Figure])
for the Signal Corps's Fieldata project.
It was subsequently adopted as an internal standard
by the U.\~S. Department of Defense.
And in 1960
at IBM, Robert\~W. Bemer, Werner Buchholz, E.\~G. Law, Howard\~J. Smith,
and F.\~A. Williams devised what they named the Extended Character Set
(\*[Figure]).
Its immediate application was for IBM's 7030 ``STRETCH'' computer,
but its creators ``intended that the design of future
equipment conform to this standard code whenever the added
versatility of an extended character set is desired.''
.PP
Both of these differed in two notable ways from
the code used on punched cards.
First, they made the letters
of the alphabet contiguous
rather than leaving the gaps (and additional characters)
that appeared
between the letters I and J and the letters R and S
in the punched card code.
Second, they factored keyboard layout,
at least to some extent, into the design.
In the Fieldata code,
shifted characters were placed
in adjacent columns to their unshifted counterparts,
so pressing the shift key would flip the 010000
bit in the character a key normally generated
and generate the shifted character instead.
In the STRETCH code,
shifted characters were placed
directly adjacent to their unshifted counterparts,
so pressing the shift key would flip the 00000001 bit
to produce the shifted character.
.PP
If many people had continued to try to
devise the ideal character code independently,
it would have led to even greater chaos than already existed,
but fortunately standards organizations eventually became interested
in the problem.
In 1959, the British Standards Institute published
a standard for the encoding of characters on punched cards
and began work on a standard for paper tape.
They first intended to develop a five-bit standard,
with separate letter and figure shifts, like the
International Telegraph Alphabets (\*[Figure])
but then changed their focus to a family of related
codes, including a six-bit one (\*[Figure])
directly suited to computer use.
Hugh McGregor Ross
was the most visible
participant in the British code standardization effort,
but credited the work to
``many colleagues,
particularly Mr. G.\~E. Felton, Dr. S. Gill,
Mr. I.\~V. Idelson, and Dr. C.\~H. Lindsey.''
.PP
In the United States, a subcommittee of
the Electronic Industries Association
began meeting to address the same issue in 1959
and in May, 1960 proposed a possible standard
for the encodings of the alphabet and digits (\*[Figure]),
with consideration also given to using
the alphanumeric portion of the Fieldata code
or of a six-bit subset of the STRETCH code
as possible alternative standards.
In January, 1960, the American Standards Association
(now the American National Standards Institute, ANSI)
also formed a committee, X3, for data processing standards.
Part of its charter was to develop ``a single standard
for logical representation of characters and character format
in the media used for interchange of instruction, data, and
control information between data processing equipments,
together with orderly provision for expansion and alternatives.''
On August 4,
that task was delegated to a subcommittee, X3.2
(the name of which was often spelled X3-2 until late 1961).\c
.Ref macon-june-9-1961 utman-july-1963
.SH
Early activities of the X3.2 subcommittee
.endSH
.PP
On September 15, 1960, Irving\~C. Liggett,
the IBM employee who had been made chairman of the X3.2 subcommittee,
sent letters to prospective members
inviting them to a meeting to be held October 4 in New York City.
Most of the invitees worked for companies that made computers
(Royal McBee, RCA, Minneapolis-Honeywell, Remington Rand UNIVAC,
IBM, NCR, Burroughs); others were from makers of office supplies
(UARCO, Standard Register, Moore Business Forms, Recordak,
Addressograph-Multigraph) or calculators (Monroe, Friden);
and one was from the U.\~S. Navy.
Four days later, Liggett
sent a second letter to William\~F. Luebbert,
who had since become an associate professor
at the United States Military Academy at West Point,
inviting him to attend as well.
.PP
The subcommittee met as scheduled on October 4, 1960.
According to the minutes of the meeting,
``the group reached a tentative outline of an approach to
the problem.''
They would first
``determine characters desired in a set or subset,''
then
``determine the sequence or order of the characters,''
and finally,
``considering the medium involved, determine the coded
representation of the characters.''
Chairman Liggett added that
``the major question seems to be,
`Should we modify an existing concept or develop a new concept
or concepts?
Further, if a new concept is found to be the best approach,
what suggestions can be made to facilitate conversion?'\|''
.PP
At the following meeting on November 15, 1960,
``it was suggested that an attempt be made to identify
standards for punched cards and magnetic tape...
to be closely followed by standards for paper tape
and printer output on the same basis;
such standards to be identified within a few months
and followed by a future set.''
In addition to the urgent need for code standardization
already felt by those in the industry,
``it was noted that the next ISO [International Organization
for Standardization] meeting would be held in
June or July 1961 [and] it was felt that X3-2 must demonstrate
concrete progress by that time and hopefully have identified
a limited family of recommended standards''
to present at the international meeting.
.SH
Bell System representatives join the effort
.endSH
.PP
At a third meeting December 2, 1960,
two new members joined the subcommittee:
John\~H. Craig of AT&T and
Allen\~L. Whitman of Bell Telephone Laboratories,
both representing branches of the giant
Bell System telecommunications monopoly.
By this time the office supply manufacturers
were already losing interest in code standardization
and had stopped sending representatives to the meetings,
leaving the effort almost entirely in the hands
of the computer manufacturers.
But the appearance of the new members from the Bell System
ensured that from this point on,
the subcommittee's work would be on a standard
intended as much for communications as it was for computers.
.PP
To a much greater extent than anyone else on the subcommittee,
Craig and Whitman felt
``the need for some fast action.''
Their sense of urgency was due to AT&T's plans to
replace its entire 60,000-station manually-switched TWX teleprinter
network with a new direct-dial network on August 31, 1962.
At that time it would offer customers the chance
to replace their existing teleprinters,
which used a variation of International Telegraph Alphabet No. 2,
with new equipment that would allow faster operation
and would feature a keyboard much more similar to that of a
standard typewriter, without the need to switch between ``letters''
and ``figures'' cases.
To make the switch possible,
the company would need a new six-unit character code
to use in place of International Telegraph Alphabet No. 2
on the new equipment.
Their plan was to use a version of the Fieldata code,
modified to add the control characters they needed
and to put some of the punctuation in more conventional
locations on the keyboard (\*[Figure]).
.PP
Other telegraph organizations had also shown
interest in the prospect of a six-unit code for telegraphy.
In 1952, I.\~S. Coggeshall, the Director of Planning for
Western Union's International Communications Department,
had observed that
``a 6-unit general purpose printer would afford 2\*{6\*}\|=\|64
combinations of characters and controls and has been proposed
to increase the usefulness of printers in certain language
applications.
Among other things, it would make possible tabulators and
back-spacers.''\c
.Ref coggeshall-jan-1953
And at the December, 1956 Plenary Assembly of the CCIT in Geneva,
one of ``the new questions set for study [was] one related
to a possible need for extending the facilities offered by
the present 5-unit telegraph alphabet, perhaps by the
introduction, under agreed conditions, of a 6-unit code.''
.PP
In 1958, the CCITT (the organization formed in 1957
by the merger of the former
CCIT and CCIF) held a conference in Warsaw to consider the
details of this six-unit code.
There was ``general agreement... that it was premature
at that time to standardise a new telegraph alphabet,''\c
.Ref renton-oct-11-1961
but the attendees did determine
a list of accent
marks that would have to appear in any code the committee
later standardized: the
.Code acute
(\*[acute]),
.Code grave
(\*[grave]),
.Code circumflex
(\*[hat]),
.Code umlaut
(\*[umlaut]), and
.Code tilde
(\*[tilde]).\c
.Ref ccitt-may-13-1963
At its December, 1960 meeting, the CCITT
established a Working Party responsible for
further development of the new telegraph code.
.PP
No one could yet say
what might result from
this international effort to design a new six-unit telegraph standard,
but
X3.2 chairman Irving Liggett was happy
that the Bell representatives hoped
``to have [their] character set and code representation
conform as closely as possible to any future ASA standard''
and that they were already trying to be as compatible
as possible with Fieldata.
``This could be the X3-2 code if we work fast enough,''
he wrote.
.PP
Not everyone on the subcommittee was as happy
with the Bell representatives' plans.
After the January 11-12, 1961 meeting,
Roy Reach,
Minneapolis-Honeywell's representative,
wrote that
``there was considerable pressure from one member in particular,
Mr. Auwaerter of Teletype (with his associates from the AT&T
system, Messrs. Craig of AT&T and Whitman of Bell Labs) to
incorporate all of the Teletype control signals (13 total)
as part of the `major usage' subset.
There appeared to be some uniform feeling generated
that this was representative of the communication problem.''
.PP
It was John Auwaerter's first X3.2 meeting,
and no doubt the tension was compounded by the appearance
of a third subcommittee member from the Bell System at
the same meeting where
it had been decided that ``one and only one voting member
will be accepted from any particular organization or corporation.''
Since AT&T, Teletype, and Bell Labs were separately incorporated,
each of them could send a representative.
IBM was also doubly represented because
the subcommittee's chairman worked for the company.
.SH
Decisions about structure
.endSH
.PP
In spite of this tension, some concrete progress was made.
Everyone in attendance agreed that the code should
contain the 26 letters of the alphabet,
ten digits,
space,
an ``escape'' code to give access to other sets of characters,
and the following punctuation:
period (.), minus sign (\-),
parentheses (\fC(\fP and \fC)\fP),
slash (/),
asterisk (*),
number sign (#),
comma (,),
and percent sign (%).
Each of the members was asked to bring to the following
meeting a complete list of the 64 characters he would
like to have in the code and what order he thought they
should sort in.
.PP
At the February 9-10 and March 8-9, 1961 meetings,
disagreements continued as
``the delegates from AT&T and Teletype
made very vocal demands about the code, based on the savings
to them of a relay contact or coil.''
In spite of their interest in
developing a single standard that would be suitable
for both computers and communications,
what they wanted from a code was not very closely
aligned with what people from the computer industry wanted.
.PP
The Bell System representatives didn't care much what order
the characters were in, except that they were very insistent
that the characters in two adjacent columns of the code be
arranged in such a way that each two characters that shared a row
would make sense as the shifted
and unshifted characters on the same key of a keyboard.
They also wanted plenty of control characters:
at a minimum,
.Ctrl "carriage return" ,
.Ctrl "line feed" ,
.Ctrl "null" ,
.Ctrl "delete" ,
.Ctrl "bell" ,
and
.Ctrl "who are you" .'' ``
.PP
The computer industry representatives,
in contrast,
cared almost nothing about control characters
or keyboard arrangements,
but wanted the digits and letters to be in order,
with the digits in the top ten rows of a column.
They also wanted related symbols to be grouped together
in adjacent rows of the same column.
Furthermore they
wanted certain punctuation marks
(period, comma, slash, hyphen) to be in a different
column from the digits
so that a simple transformation
could be used to
sort these symbols before, and the digits after,
the alphabet.\c
.Ref bemer-7-nov-1961
They also wanted the six characters either following
the digits or in the adjacent column
to be mathematically-oriented symbols
that would make sense in a 4-bit subset with the digits.
.PP
At the March 8-9, 1961 meeting,
the subcommittee
did not attempt to fully reconcile these conflicting
requirements, but instead produced
two possible candidates for a standard code,
one (Figure \n[Sixbitfig]a) approximating the ``logical'' organization
favored by people from the computer industry,
and the other (figure \n[Sixbitfig]b) more concerned with the keyboard layout
that would correspond to it.
One or the other would eventually have to prevail.
.SH
The move to seven bits
.endSH
.PP
It was beginning to look as though it might not be
possible to resolve the conflict between
computing and commnications needs
within the constraints
imposed by the size of a six-bit code.
All the discussion up to this point had focussed on
the idea of a six-bit standard,
but at the April 12-13, 1961 meeting
``the point was brought forward that it \fImight\fP be desirable
to standardize a seven bit set instead of a six bit set
as the standard for information interchange for communications
and data processing.''
At the April 26-27, 1961 meeting
the idea was elaborated:
``The structure would call for 64 characters which could
be printed and 64 controls and special characters....''
This seven-bit organization would allow plenty of room in the code for
all the control characters that communications people wanted,
while opening up space in a 64-character subset for all the
printing characters that data processing people wanted.
.PP
How these 64 control characters would be generated from
a keyboard is not explicitly stated in the minutes.
But keyboards for Fieldata had included a key called Control
that could be used in combination with any other keyboard keys
to gain access
to an additional 64 transmission control characters.
The same technique had begun to be used with the X3.2 code
by July, 1961,
and was probably part of the plan
from the moment it was expanded to seven bits.
.PP
At an informal meeting May 8 and 11, 1961
(preceding and following the Western Joint Computer
Conference in Los Angeles)
``the philosophy of a family of sets including the range
from 4 level through 8 level was again examined and found
to be sound.
The 7 level set was identified as the prime set for
information interchange and communications.''
.PP
The minutes continue:
``After some study two organizations of the 7 level set seemed
most promising.
The first would locate the 64 control codes and `non printing'
specials in the lower half of the set and the 64 `printing'
graphics in the high half of the set.
[This] has the disadvantage of requiring the `delete' code
in the `information set.'
The second imbeds the information set between two sections of
the `control' set....
This scheme keeps the information set `pure,' locates the
`master' space \fIand\fP the delete in pure control areas,
but has the disadvantage of requiring a somewhat more complex
examination to separate the controls from the information sets.''
In spite of its additional complexity, it was the second structure,
with printing characters in the middle and controls on either side,
that
was adopted.
.SH
An extended Fieldata
.endSH
.PP
At the second April, 1961 meeting,
several subcommittee members had reported on
the meeting they had had the previous day
with the Military Communication Systems Technical Committee.
The members of that committee had informed them
that since the military had already adopted Fieldata as its
standard, ``an industry standard which is different from
the [military] standard would have to present strong advantages
over the [military] standard before it would gain acceptance
by the military.''
So one of the key goals at the June 7-8, 1961 X3.2 meeting
was to design some degree of Fieldata compatibility
into the proposed X3.2 standard.
.PP
The subcommittee members
accomplished this by designing a seven-bit code (\*[Figure])
structured in such a way that if the seventh bit was dropped,
the resulting six-bit code
would have the same encodings for
the letters, digits,
colon (:), and comma (,)
as in Fieldata.
The new proposal
was actually closer to
the modified version of Fieldata proposed by the Bell System,
which encoded the
exclamation point (!),
dollar sign ($), 
and period (.)
as they appeared in the X3.2 proposal.
In neither case was the compatibility perfect,
but X3.2 Secretary Charles\~E. Macon
felt that it was close enough
that the subcommittee could justifiably call the new code
``Fieldata II'' or ``Fieldata 1961.''
He went on to say that ``it might be a point
to our favor if we indicated that should Fieldata
come out with a modified version which meets
the recommendations made, that the X3-2 committee
would be perfectly happy to adopt this standard and
recommend it as the X3-2 standard giving a large measure,
if not all the credit, to Fieldata.''
.PP
At the same time, the proposed code differed significantly
from Fieldata in other respects, most notably
by adding several new symbols.
Near the bottom of column 3, following the digits,
was an angular tilde (\*[angle-tilde]).
This character had previously appeared in the
STRETCH Extended Character Set for the purpose of distinguishing
between the minus sign and hyphen, which otherwise look
nearly identical.
In the STRETCH code it was the hyphen that was given this new shape;
but in the X3.2 proposal, the tilde was intended to represent the minus sign.
Further down the column were two additional mathematical symbols:
the multiplication sign (\(mu) and the vertical line (\*[vertical-bar])
used to represent absolute value.
The mathematical symbols continued into the next column, where the
not-equal-to (\(!=) sign was added following the equals sign (=).
And just before the alphabet were two arrows:
the up arrow (\*[up-arrow]) used for the exponentiation operation
in the Algol 60 programming language,
and the left arrow symbol (\(<-) that some people
prefered to use in place of the official Algol assignment operator (:=).
.SH
Fieldata abandoned
.endSH
.PP
The next X3.2 meeting was held June 30, 1961,
at the Main Navy Building in Washington, D.\~C.
Three guests from the U.\~S. Department of Defense
were shown the Fieldata-compatible code developed
at the previous X3.2 meeting, as well as a second version
of the code in which the alphabet was shifted into a different
position such that when the code was collapsed to six bits,
it would line up with
the code then being proposed as a standard by the British Standards Institute
(\*[Figure]),
which had the possibility of becoming an international standard.
Evidently the X3.2 members were not successful at persuading
the military representatives that Fieldata should be amended
to bring it closer to the X3.2 proposal,
because all development of the X3.2 code from this point on
used the BSI encodings for the letters.
.PP
Why the British Standards Institute preferred to
have the alphabet begin in row 1
rather than at the top of the column
has remained somewhat mysterious.
Hugh McGregor Ross's
January 1961 article about the proposal
says that ``it has been found preferable
that letter A should have position 1, B, 2, etc., as in most
British 5-track computer codes''\c
.Ref ross-jan-1961
but does give any more detail.
The reference to 5-track codes probably provides
the answer:
any 6-bit code
that can be collapsed into
a 5-bit code with a letters and a figures case
must be designed in such a way that character 0/0
can be reservered for the
.I null
character in both cases.
Shifting the alphabet down by one character accomplishes this.
.PP
At the next meeting, August 2-4, 1961,
with a BSI-compatible code now firmly established
as the X3.2 subcommittee's goal,
the question of code size again came up.
``The general conclusion,'' though,
``was that if a recommendation were to be submitted in the near
future, it would have to be a 7 level code.
The design of an 8 level will involve considerable extended
time period and a great deal of effort.''
Also at this meeting was the first serious attempt to come up
with a list of control characters
to fill the huge space the 7-bit structure had made available for them.
\*[Figure] shows the preliminary encodings of the controls
.nr Whitmanfig \n[Figure]
(in the right, rather than left, columns of the code, for the first
and only time).
.PP
Allen\~L. Whitman of Bell Labs,
though, was beginning to have doubts about the wisdom of
tying Bell System teleprinter development to the X3.2 standardization effort.
In a July letter,
he enclosed a drawing of the keyboard that would
correspond to the then-proposed X3.2 code
and concluded that
``from the standpoint of ordinary Bell System teletypewriter
operation, this keyboard
is in my opinion a monstrosity.''\c
.Ref whitman-jul-12-1961
Later he suggested
that the Bell System should perhaps stay
with their modified version of Fieldata for TWX teleprinter operation
and use the X3.2 code only when transmitting computer data.\c
.Ref whitman-aug-14-1961
Nevertheless he continued to
campaign to move the X3.2 code in the direction of
what his company wanted, and
Figure \n[Whitmanfig] includes a rearrangement he proposed
for some of the printing
characters to make the keyboard layout more acceptable.
.PP
At the same time there was still considerable pressure
for a ``logical'' arrangement of the characters
for computing purposes.
\*[Figure] shows an attempted compromise,
dated August 24, 1961,
between 
the data processing and keyboard requirements.
This version of the code
also dropped the vertical line (\*[vertical-bar])
and exclamation point (!)
and replaced them with less-than-
and greater-than-or-equal-to signs
(\(<= and \(>=).
.PP
At the September 14-15, 1961 meeting,
Irving Liggett,
who had been the X3.2 chairman from the beginning,
resigned,
leaving IBM with only half the representation it had previously
had on the subcommittee,
and Charles Macon took over as chairman pro tem.
The attendees dropped
the angular tilde (\*[angle-tilde]) and
multiplication sign (\(mu)
and replaced them
by the at sign (@)
and the briefly-missing exclamation point (!).
In addition,
they
fleshed out
the set of control characters,
adding
.Ctrl on
and
.Ctrl off
controls for each of
.Ctrl transmitter ,
.Ctrl "recorder 1",
and
.Ctrl "recorder 2"
to those in the August 4 proposal
(but temporarily eliminating
.Ctrl "end of address" ,
.Ctrl "end of message" ,
and
.Ctrl "end of transmission" ).
They encoded the
.Ctrl "answer back"
control as character 6/0
because that character's bit pattern (1100000) would be easy
to generate mechanically.
They encoded the
.Ctrl "who are you"
control as character 0/4,
and
the
.Ctrl bell
to character 0/10,
so that they would be Control-D and Control-J, respectively,
on the keyboard, corresponding
to the keyboard positions of these same functions
in Teletype's
International Telegraph Alphabet No. 2 equipment.
.SH
Brackets and backslash
.endSH
.PP
Two weeks later,
on September 28, 1961,
Bob Bemer,
who had attended the meeting as IBM's alternate,
wrote to the members of the X3.2 subcommittee:
``You may recall my saying at the meeting that I couldn't think
of any other characters for the vulnerable positions in the alphabetic
area'' (the characters following the alphabet).
He suggested that the less-than-or-equal-to (\(<=),
greater-than-or-equal-to (\(>=),
and not-equal-to (\(!=) signs be eliminated and replaced
by left ([) and right (]) square brackets and
a reverse slash (\e),
more commonly called a ``backslash.''
These, he wrote, ``are what I would have suggested if my memory
had been working right.''
.PP
These three characters had previously appeared in the STRETCH
Extended Character Set.
In the definition of that code,
the backslash had been described as a ``reverse division''
operator.
It would be used in expressions like
\fIa\fP\|\e\|\fIb\fP,
which would be equivalent to the more conventionally expressed
\fIb\|/\|a\fP.
The reverse division
operation can be useful for the purpose of evaluating
continued fractions
without the need for a large evaluation stack.
.PP
More recently,
the three had been among the characters added to IBM's
Binary Coded Decimal Interchange Code
(as the punched card code had become known)
at a meeting between IBM, SHARE, and GUIDE
representatives on June 30, 1961,
about which more will be said below.
At that meeting, R.\~Judson,
of the B.\~F. Goodrich company,
had pointed out an additional to which the backslash (\e) character
could be put:
it could be combined with the slash (/)
to form two-character sequences approximating the appearance
of the logical
.I and
(\fC/\e\fP, \(AN)
and logical
.I or
(\fC\e/\fP, \(OR)
operators.
.PP
To support the inclusion of the three characters in the X3.2 code,
Bemer cited the frequent use of the
.I and
and
.I or
operators
and of square brackets
in Algol programs,
the infrequent use of less-than-or-equal-to (\(<=),
greater-than-or-equal-to (\(>=),
and
not-equal-to (\(!=)
operators in programs,
the utility of brackets in nonmathematical text,
and the ``reverse division'' use for the backslash.
Evidently his arguments were persuasive, because
the three characters appeared in the October 23, 1961
draft of the X3.2 proposal.
.PP
Although Bemer is generally credited with introducing
the backslash (\e) to computing,
neither he nor anyone else involved with the X3.2 subcommittee
knew that
the character had been used at least twice before.
A photograph in a
1937 brochure for a Wheatstone (automatic Morse) paper tape perforator
made by Teletype shows a backslash
key on its keyboard,
and the keytop remained available at least until 1945 as a spare part.
I do not know what the character was used for at that time,
or what Morse code pattern corresponded to it.
In addition,
the backslash had appeared
in a patent applied for in 1955 by
Horace\~S. Beattie of IBM.
Again the use he intended for the character is not clear,
but he encoded it as a replacement for the minus sign (\-).
.SH
The campaign for compatibility
.endSH
.PP
When a copy of the October, 1961 draft of the proposed
American standard reached Hugh McGregor Ross in England,
he was encouraged to see ``that the work in America is so nearly
compatible with that we have been doing in this country which has
now reached the stage of being formally approved as a British Standard.''
In a few respects, though, the American proposal was fundamentally
incompatible with the new British standard, and he wrote to
Bob Bemer and John Auwaerter to propose
alterations to the American code to eliminate these problems.
.PP
The fundamental problem was that the British standard placed
its control characters in the first eight rows of column 0,
while the American proposal spread them through two entire columns,
and arranged them in such a way that their number could not be
reduced to eight by eliminating the higher-order bits.
Ross proposed that the eight most important controls
.Ctrl space , (
.Ctrl "carriage return" ,
.Ctrl "line feed" ,
.Ctrl "vertical tab" ,
.Ctrl "horizontal tab" ,
.Ctrl "who are you" ,
.Ctrl "lower case" ,
and
.Ctrl "upper case" )
be moved into the first eight rows of column 0,
so that a reduction to six bits would be straightforward
even when control characters were retained.
He also proposed that the dollar sign ($) and ampersand (&)
should be at the bottom of row 2 or 3, rather than paired with
a digit, so that they would not be lost in the six-bit collapse.
.PP
At the November 8-10, 1961 meeting,
the X3.2 subcommittee members considered this proposal,
but
considered it more crucial that
the different classes of
control characters be apportioned to separate sections of
the keyboard rather than to separate sections of the code table.
Toward this end, an ad hoc committee organized by John\~B. Booth,
the alternate member from AT&T, proposed
a new arrangement of control characters
(\*[Figure])
that would place the printing and message-division controls
on the left side of the bottom two rows of the keyboard,
the data delimiters on the right side,
and the auxiliary equipment controls on the top row.
(This proposal also replaced the
at sign (@) with the lozenge (\*[lozenge]) character, for unspecified reasons.
This seems to be the only appearance of the lozenge in any X3.2
code proposal.)
.PP
Later on November 8, though, Bloom proposed a second arrangement of controls
(\*[Figure])
that came closer to meeting the British requirements
while still keeping the keyboard divided into sections.
It did not group all the essential controls together,
but placed gaps in their sequence in such a way that when
the higher-order bits were stripped,
the eight controls that remained
could be the eight essential ones.
(It also removed the lozenge (\*[lozenge])
and restored the at sign (@).)
On November 10, Booth asked for another minor rearrangement
of these characters (\*[Figure]),
and it was approved.
The subcommittee members
``concluded that we (USA) have gone a long way toward
meeting the requirements of the U.\~K., and that they should now
come part way toward our position.''
.PP
Also at this meeting (on November 8) the
.Ctrl acknowledge
control was reencoded as character 7/12,
another encoding whose corresponding
the bit pattern (1111100)
is easy to generate mechanically.
This placed the three special controls
.Ctrl acknowledge ,
.Ctrl escape ,
and
.Ctrl delete
in a block at the bottom of column 7.
Character 7/13,
the gap in this block,
was reserved for a future variant of
.Ctrl escape
that would affect all following characters
rather than just the single character following
.Ctrl escape .
.PP
It was at this meeting, on November 10,
that the X3.2 code was first named the Proposed American
Standard Code for Information Interchange.
.SH
The X3.2 European tour
.endSH
.PP
While attending a conference in England,
Henry Tholstrup
(the X3.2 member from Friden)
provided Hugh McGregor Ross with a copy of the new X3.2 proposal.
Ross was disappointed to see that it still spread important controls
through all of column 0,
and sent a new proposal to the Americans
on December 6, 1961,
again suggesting that the important controls be confined to
an eight-character block,
but adding that it would be acceptable to have this block at
the bottom of column 0 rather than at the top.
.PP
Rather than continue to try to design a code that would
be acceptable to Europeans without any first-hand knowledge of
what was considered essential there,
X3.2 members
John Auwaerter (of Teletype) and Leon Bloom (of NCR)
made plans to spend three weeks in Europe in January, 1962
``to get further information on the progress of standardization
in Europe and to get a better understanding of the factors
influencing this work''
by visiting
``a majority of the people in Europe who [were] active
in the standardization of character sets and codes.''\c
.Ref bloom-jan-30-1962
.PP
This was something that might more appropriately
have been done several months earlier,
when the International Organization for Standardization's
Technical Committee 97 on Digital Computers and Data Processing
Machines
and its Working Group B on Character Sets and Coding
met for the first time on May 18, 1961.
But at that point,
despite the early intention of the X3.2 subcommittee to
have a proposal ready to present at the meeting,
their code had been in no shape to propose as an international standard,
and neither,
apparently, had anyone else's.
At the meeting the delegates from
the United Kingdom, United States,
France, and Germany
all announced that they were in the process
of developing national character code standards,
but most of the four-hour meeting seems to have been concerned
with determining the scope of the working group's activities
and which countries were interested in participating.
The details would have to be put off until the following
Technical Committee\~97
meeting, which was eventually scheduled
for October, 1962.
.PP
In spite of this early lack of communication,
and Hugh McGregor Ross's continuing
dispute with the members of the X3.2 subcommittee
over the encodings of the important control characters,
Auwaerter and Bloom
found that everyone they visited
wanted to be able to come up with
a universally acceptable compromise
prior to the upcoming ISO meeting.
In France they learned from Henri Feissel,
the chirman of Working Group B,
that only the American Standards Association (ASA),
the British Standards Institute (BSI),
and the European Computer Manufacturers' Association (ECMA)
were expected to have proposals ready in time for the meeting,
and that all three already agreed
on the encodings for the alphabet and digits
and that three ``national use'' characters
should follow the alphabet.
.PP
At the meeting in France it was proposed that
to resolve the remaining areas of dispute,
the X3.2 members would attend the meeting of
ECMA Technical Committee\~1
already scheduled for March, 1962,
and that an early meeting of ISO Working Group\~B
would be scheduled for May.
If a final compromise could be reached at the May meeting,
it could then be translated and distributed
in time for the ISO Technical Committee\~97
meeting in October.
.SH
IBM breaks away
.endSH
.PP
At the same time as the international situation
was improving,
major computer manufacturer
IBM was beginning to distance itself
from the activities of the X3.2 subcommittee.
On June 30, 1961,
as mentioned above,
IBM had held a meeting for the purpose
of expanding the set of characters
defined by its punched card code
for the first time in more than a decade.
Although the minutes referred to the code
as the ``historic IBM code,''
and Bob Bemer,
who called the meeting,
was enthusiastically devoted
to the X3.2 cause,
the expansion of the code
drew attention
to the differences between it
and the standard that X3.2 was proposing.
.PP
The impetus for the meeting
came from the introduction earlier in 1961
of an improved model of the IBM 1403 printer
that supported interchangeable type chains.\c
.Ref bashe-493
In one configuration,
the printer could print as many as 60 different
characters,
and the purpose of the meeting was to determine
what additional characters the company's customers
would like to be able to use
that had not been in the older 48 character sets.
.PP
Many of the assignments were forced by
design decisions that had already been made
in earlier IBM equipment and software.
The dual assignments of the
equals sign (=),
apostrophe ('),
plus sign (+)
and parentheses (\fC(\fP and \fC)\fP)
to the same encodings as the
number sign (#),
at sign (@),
ampersand (&),
percent sign (%),
and lozenge (\*[lozenge])
could not be separated without
requiring major changes to existing
programs,
so these had to stay in place.
In addition,
because some equipment
treated several characters
as special controls\(em\c
the group mark (3/15),
tape mark (0/15),
segment mark (1/15),
mode mark (2/15),
record mark (1/10),
substitute blank (1/0),
and word separator (1/13)\(em\c
these encodings could be
assigned graphical representations
(four of which would not print on the 1403)
they would have to be ones that would
be unlikely to be used in practice.
.PP
This left nine encodings
to which genuinely useful printing characters could be assigned.
There had been several earlier proposals
for expanded versions of the card code,
and all of them had agreed that it should
include the colon (:), semicolon (;),
and less-than (<)
and greater-than (>)
signs.
Two other very common proposed additions
were the left ([)
and right (])
square brackets.
``The other three symbols,''
the minutes record,
``were not as readily arrived at.''
But as mentioned above,
R.\~Judson
pointed out the addition
of a single character, the backslash (\e),
would effectively add both the logical \fIor\fP (\(OR)
and logical \fIand\fP (\(AN)
symbols to the set,
and the attendees were also able to agree
upon an up-arrow (\*[up-arrow])
for exponentiation
and a tilde (\*[tilde])
that could be used to represent the
logical \fInot\fP operator.
The exact encodings to be assigned
to these characters were left
to IBM's discretion,
and it published the result
as the Standard BCD Interchange Code
(\*[Figure]).
.PP
With a much more usable six-bit character set
now available on its equipment,
IBM had less motivation to support
the X3.2 subcommittee efforts.
In September, 1961,
IBM's Irving Liggett resigned
his chairmanship of the X3.2 subcommittee.
By November,
remaining IBM representative Howard\~J. Smith
could report that
``many members [of X3.2] are dubious about our corporate policy
and feel that IBM is not acting in good faith.
In particular,'' he wrote, ``they are extremely
skeptical about IBM's assurances that we will implement
or support the code.''
.PP
Their doubts were not unfounded.
At a December 26, 1961
meeting of IBM's Character Sets Committee,
L.\~Robinson
declared that
any use of the proposed X3.2 code
as an in-memory representation of characters,
``with the realization that the IBM coding sequence
had been violated,
would be completely unacceptable to Data Processing,''
in spite of the care that had been put into it
to ensure that
the characters that were generally used
in sorting keys would continue to sort in the same order.
By April, 1962,
IBM had publically ``reversed its position from support
to opposition and [advanced] its own code (`Hollerith')
as a proposed ASA standard.''\c
.Ref zenner-april-17-1962
.SH
The ECMA/X3.2 compromise
.endSH
.PP
International cooperation turned out to
be much easier to obtain than inter-company cooperation.
ECMA's Technical Committee\~1 and
ASA's X3.2 subcommittee held a joint meeting
March 8 and 9, 1962 in Rome.
Despite the earlier strong feelings
about the keyboard assignments for
control characters,
``the X3.2 members agreed that ECMA had done a more
thorough job in the control area and that a rearrangement
of the controls in the 7-bit set [was] highly desirable.''
The X3.2 delegates agreed to the division,
as Hugh McGregor Ross had proposed,
of the controls into four groups:
switching system controls,
page format controls,
terminal equipment controls,
and information separators.
A seven-bit set would include all four types of controls,
each occupying either the top or bottom half of column 0 or 1.
A six-bit set would include only one type of controls,
the choice of which would depend on the set's intended application.
.PP
As far as the printing characters were concerned,
the encodings for the alphabet and digits
had already been agreed upon.
The period (.),
slash (/),
minus sign (\-),
and plus sign (+)
were placed at the bottom of column 2
so that, with
the digits 0 through 9
and two other characters that could be replaced
by characters for 10 and 11,
they could form part of a numerically-oriented four-bit subset
specified by the British delegation.
The characters for the four-bit subset were split between
columns 2 and 3
because of the American desire to separate
punctuation marks and digits into separate columns
so the punctuation could sort before the alphabet
and the digits after it.
.PP
ECMA's requirement was that the six-bit set
be usable for COBOL programming,
so the parentheses (\fC(\fP and \fC)\fP),
comma (,),
asterisk (*),
ampersand (&),
equals sign (=),
apostrophe ('),
and semicolon (;)
were all positioned
away from the top half of column 2
so they would remain available
after the collapse to six bits.
The percent sign (%)
was also needed for COBOL,
but there was no room for it in
the six-bit set after
all the national-use reservations,
which included
replacing the question mark (?)
with the pound sign (\(Po),
the dollar sign ($) and colon (:)
with 10 and 11,
and the up-arrow (\*[up-arrow]),
backslash (\e),
and left-arrow (\(<-)
with additional letters.
The seven-bit code that emerged from the joint meeting is
shown in \*[Figure]
and its six bit subset in \*[Figure].






.Caption
Charles\~A. Phillips,
Chairman of the X3 Committee,
hands the proposed American Standard Code for Information Interchange
to
Vincent\~G. Gray,
Secretary
of the American Standards Association
Miscellaneous Standards Board,
January 24, 1963.
From left:
Robert\~E. Blue,
Henry Tholstrup,
Richard\~E. Utman,
Vincent\~G. Gray,
Leonard\~L. Griffin,
Charles\~A. Phillips,
John\~B. Booth,
Eric\~H. Clamons,
John\~F. Auwaerter.
Photo reprinted from
.I "BEMA News Bulletin" ,
February\~1, 1963,
with the permission of
the Information Technology Industry Council,
1250 Eye Street NW, Washington, DC 20005,
web site
.I "http://www.itic.org" .











.ex



.SH
Interest from the telegraph field
.endSH
.PP
Interest in a new character code was not limited to people
working with computers.
At the December, 1956 Plenary Assembly of the CCIT in Geneva,
one of ``the new questions set for study [was] one related
to a possible need for extending the facilities offered by
the present 5-unit telegraph alphabet, perhaps by the
introduction, under agreed conditions, of a 6-unit code.''
In 1958, the CCITT (the organization former by the merger of the former
CCIT and CCIF) held a conference in Warsaw to consider the issue.
There was ``general agreement... that it was premature
at that time to standardise a new telegraph alphabet,''\c
.Ref renton-oct-11-1961
but one result of the meeting was
the determination of a list of accent
marks that would have to appear in any code the committee
later standardized: the
.Code acute
(\*[acute]),
.Code grave
(\*[grave]),
.Code circumflex
(\*[hat]),
.Code umlaut
(\*[umlaut]), and
.Code tilde
(\*[tilde]).\c
.Ref ccitt-may-13-1963
At its December, 1960 meeting, the CCITT
established a Working Party responsible for
further development of the new telegraph code.
.PP
In the United States, accent marks were not a concern
but there was nevertheless interest in a six-unit code
for telegraph use.
In 1952, I.\~S. Coggeshall, the Director of Planning for
Western Union's International Communications Department,
observed that
``a 6-unit general purpose printer would afford 2\*{6\*}\|=\|64
combinations of characters and controls and has been proposed
to increase the usefulness of printers in certain language
applications.
Among other things, it would make possible tabulators and
back-spacers.''\c
.Ref coggeshall-jan-1953
But Western Union's interest in a six-unit code
was mostly hypothetical.
In a 1964 article,
Fred\~W. Smith admitted that ``it appears
doubtful that Western Union will ever adopt [a] new code
for use in its public message service.''
.PP
Employees of
its competitor AT&T had a much more concrete
idea of the uses to which they could put a six-unit code.
The company had plans to upgrade its manually-switched
TWX network to direct-dial operation on August 31, 1962
and saw the switchover as an ideal opportunity to introduce
new equipment that would make teleprinter operation much
more like using a standard typewriter by eliminating the
need to shift between letters and figures cases.









.SH
Printing telegraphy before Baudot
.endSH
.PP
Many people associate the word ``telegraphy'' exclusively with
hand-sent and -transcribed
Morse Code,
but printing telegraphy is nearly as old a technology.
Royal\~E. House received the U.\~S. patent for his printing
telegraph on April 18, 1846,\c
.Ref house-4464
only six years after Morse's was issued.\c
.Ref morse-1647
The printing telegraph
was subsequently improved by David\~E. Hughes in 1856\c
.Ref hughes-14917
and by George\~M. Phelps in 1859.\c
.Ref phelps-26003
All three of their telegraphs suffered from
slow operation: the Phelps, the fastest,
had an average speed of only about three characters per second.
Skilled Morse operators could achieve faster speeds,\c
.Ref murray-1905
and Morse equipment was much less sensitive to
line noise.\c
.Ref wiring-a-continent
Printing telegraphs also had difficulty
keeping their sending and receiving
equipment properly synchronized,
and they could not be multiplexed to allow multiple
simultaneous transmissions over the same line.
.PP
The main cause of all these problems was the
printing telegraphs'
use of a low-efficiency, variable-length
encoding for characters.
In Morse Code a unique pattern of signals corresponds
to each character that can be transmitted,
but these early printing telegraphs relied exclusively
on timing.
In the receiving equipment there was a continuously rotating wheel
with the characters that could be printed arranged at
equal intervals around the outside.
To transmit a given character, the transmitting equipment
would wait until the precise moment when that character
should have rotated into place on the receiving equipment,
and send a single short burst of electricity.




.ex


To write in an alphabetic script,
how many different symbols do you need to be able to make?
The answer might seem obvious\(em\c
there are,
at least for English speakers, twenty-six letters in the alphabet\(em\c
but, in fact, writing the language in its standard form requires
two alphabetic cases, ten digits, and several punctuation marks,
and many additional special symbols are occasionally needed.
It is difficult to come up with a list of these special symbols
that is large enough to cover every possible need,
but not so large that most of the items on it will never be used at all.
.PP
When you write with a pen, there is no need for such a list,
because you can write any symbol you can think of.
But many mechanical aids to writing\(em\c
typewriters, telegraphs, typesetting machines, and word processors,
for example\(em\c
trade this flexibility for other advantages.
Inventors of such devices have to make them capable
of handling a wide enough range of characters to be useful,
but not so many that their complexity becomes overwhelming.
.PP
Johann Gutenberg's first set of movable type
is said to have
contained at least 290 different characters.
He needed this large number to reproduce as closely as possible
the appearance of contemporary manuscripts.
Once printing was more established, and there was less need
to make books that looked exactly like manuscripts,
typesetters were able to reduce the number of characters they used.
A later printer's type case
had room for a comparatively small 152 characters.\c
.Ref chappell-52-53
Early automated typesetting equipment reduced this number
further, to 108.\c
.Ref linotype-at-smithsonian
.PP
Typewriter makers were able to make do with an even smaller
set of characters.
Christopher Latham Sholes believed that thirty-eight
characters were sufficient for his typewriter:
``twenty-six letters, eight figures [the digits 0 and 1 were
typed as letters O and I], comma,
period, hyphen, and interrogation point.''\c
.Ref current-36
His first mass-produced model added six more:
the ampersand (&), semicolon (;), colon (:), apostrophe ('),
underline (\|_\|), and an additional symbol abandoned on later equipment.\c
.Ref sholes-207559
The introduction of the Shift key nearly doubled the number
of available characters to seventy-eight, adding
a second alphabetic case,
quotation mark ("),
number sign (#),
dollar sign ($),
percent sign (%),
parentheses (\fC(\fP and \fC)\fP)
and slash (/).\c
.Ref barnes-1899
Additional characters were slowly added over time,
until the standard typewriter character set had finally
expanded to eighty-six characters.\c
.Ref X4.7-1973
.PP
Even fewer characters sufficed for the needs of telegraphers.
The version of Morse Code documented in
Samuel\~F.\~B. Morse's original 1840 telegraph patent\c
.Ref morse-1647
has encodings for only thirty-three characters:
twenty-three letters and ten digits.
The letters G and J are encoded identically, as are I and Y,
and the letter Z cannot be encoded at all.
Later, the international standard version of Morse Code
expanded the list to 33 letters (the 26 used in English,
plus accented letters \(:A, \('A/\(oA, \('E, \(~N, \(:O, \(:U,
and a single character for CH)
and added several punctuation marks: period (.),
semicolon (;), comma (,), colon (:), question mark (?),
exclamation point (!), apostrophe ('), hyphen (\-),
parentheses (\fC(\fP and \fC)\fP), and quotation mark (").
With ten digits and several
additional characters for control functions
(``error,'' ``understood,'' ``end of transmission,'' etc.)
the number of characters totalled sixty-six.\c
.Ref itu-1872
.PP
In typesetting and typewriting, and in Morse-type telegraphy
(where characters are encoded by hand and decoded by eye or ear,
and where different characters have different lengths),
no number of characters is inherently superior to any other
number, as long as it's large enough to contain all the
necessary characters and small enough not to cause undue
complexity.
But in printing telegraphy (where characters are encoded
and decoded mechanically, and where it is much easier to
design equipment for uniform-length rather than variable-length
codes) and in computing, there are
special advantages associated with character sets whose
size is a power of two.
.PP
In a telegraph system using two voltages (positive and negative,
or nonzero and zero) and \fIn\fP wires,
during a single time interval there are 2\*{\fIn\fP\*} possible
combinations of voltages.
Or, over a single wire, two voltage possiblities for
\fIn\fP successive time intervals
have the same 2\*{\fIn\fP\*} possible combinations.
Similarly, in a binary computer,
an \fIn\fP-bit byte can represent 2\*{\fIn\fP\*} possible values.
In each of these cases, a character set larger than
2\*{\fIn\fP\*}
is too large to be represented using \fIn\fP wires, time units, or bits,
and a set smaller than
2\*{\fIn\fP\*}
wastes some of the possible combinations.
.PP
Because of the efficiency of this representation,
most character codes not directly descended from Morse Code
have a uniform 5, 6, 7, or 8 units or bits per character, encoding exactly
2\*{5\*} (32),
2\*{6\*} (64),
2\*{7\*} (128),
or
2\*{8\*} (256)
different characters.
It is with this class of codes that this paper is concerned.
.PP
The first portion of the paper will cover the origins of the two
International Telegraph Alphabets,
five-unit codes standardized in the 1930s.
The second portion will cover the design and standardization
of their successor, the seven-bit international standard code now used by the
majority of the world's computers and networks.
This second topic has previously been addressed
from different perspectives
in a paper by Robert\~W. Bemer\c
.Ref bemer-1972
and a book by Charles\~E. Mackenzie.\c
.Ref mackenzie-1980
.\" XXX fix this paragraph
.SH
\('Emile Baudot and the printing telegraph
.endSH
.PP
At the beginning of the 1870s,
telegraph organizations using Morse Code discovered that there was
more demand for their message transmission services
than they could meet.\c
.Ref crummy-hist-of-telegraph-book
The quantity of text they could transmit over each of their
telegraph lines was limited by:
.sp
.IP \(bu
The electrical characteristics of the line,
which would typically distort the signal if the voltage
being transmitted changed more often than
about every forty-fifth of a second;\c
.Ref some-45bps-ref
.IP \(bu
The design of Morse Code (\*[Figure]), which used
an average of 7.6
of these units of time
to represent
each character;\c
.Ref murray-1905
.>>>>
.so morse.pic
.Caption
Morse Code, as originally patented\c
.Ref morse-patent
and as eventually standardized in the United States and internationally.\c
.Ref itu-1872
.<<<<
.IP \(bu
The dexterity of the transmitting operator,
who might be able to operate the telegraph key fast enough
to transmit about 30 words per minute,
but who often might achieve only half that speed;\c
.Ref murray-1905
and
.IP \(bu
The handwriting speed of the receiving operator,
who might be able to transcribe as many as 30 words per minute
but often ``could understand code a lot faster than [he or she]
could write it down.''\c
.Ref bliven
.sp
.PP
Initially, the speed of the transmitting operator
was the limiting factor.
Thirty words per minute,
at a nominal five letters and one space per word, equals
three characters per second,
which, given the Morse average of
7.6 units per character, works out to about 23 units per second,
or about half the speed the line itself
would allow.
This waste of capacity was eliminated by the
introduction of duplex telegraphy, which allowed
two operators to work a single line simultaneously.\c
.Ref duplex
Two operators each capable of transmitting at 23 units per second together
transmitted at a rate of 46 units per second and therefore made use of
the full capacity of the line.
.PP
The only way to further increase throughput was
to reduce the number of time units required to transmit each
character.
It had been known for more than two hundred years that
purely alphabetic messages could be encoded with
near-optimum efficiency using five units per character
as shown in \*[Figure].\c
.Ref early-hist-of-data-nets
Replacing Morse Code with such a five-unit code would
have raised the capacity of a 45-unit-per-second line to
nine characters per second.
But such a code would not,
as Morse Code did, have clearly distinguished where
one character ended and the next began, so it would have
been nearly impossible for the receiving operators
to decode.
Even if the operators could have made sense of the transmissions, each of
the two would have had to transcribe 45 words
per minute to keep up.
Therefore the switch to a five-unit code could only be made
if the messages were decoded and printed automatically by machine
instead of by hand.
.>>>>
.so bacon.pic
.Caption
Francis Bacon's five-unit code, 1623.\c
.Ref eng-and-science early-hist-of-data-nets
.<<<<
.PP
A successful printing telegraph had in fact been invented
fifteen years earlier by
David E. Hughes, a professor of music and natural philosophy
at the College of Bardstown, Kentucky.\c
.Ref encyclopaedia-britannica
His telegraph, however, required an average of fourteen, not five,
time units to represent each character.
Hughes did not assign a unique code
to each letter and symbol.
Instead, his printer contained a continually rotating wheel
with characters engraved on it in the order shown in \*[Figure].
The sending equipment transmitted a character by
waiting until the wheel had
rotated to the correct position
and then sending a single-unit signal to indicate that
it was time to print the character that had just rotated into place.\c
.Ref hughes-description
.>>>>
.so chart-hughes
.Caption
Order of characters on Hughes printing telegraph typewheel
.<<<<
.PP
It was
French telegrapher Jean-Maurice-\('Emile Baudot (\*[Figure])
who solved the problem of creating a telegraph system that
combined multiplexing, printing, and an efficient five-unit encoding.
Baudot was born September 11, 1845.
His parents were farmers,
and he spent his own early adulthood farming,
but on July 16, 1870 he joined the
Administration des Postes et des T\('el\('egraphes.
He had received only an elementary school education,
but began spending his spare time studying electrical engineering,
and in 1872 started work on a telegraph system of his own design.
His first printing telegraph,
which he patented on June 17, 1874,
used a six-unit code.
Exactly what six-unit code it used I cannot say, because
I have not been able to obtain a copy of the patent,
but Baudot's published articles
describe only one six-unit code:
the one shown in
\*[Figure],
which was devised by Edward Davy in 1838 for a three-wire, three-voltage
telegraph system,
and this may have been the code used in Baudot's first telegraph.
.>>>>
.PSPIC pses/baudot150.ps
.sp
.Caption
\('Emile Baudot
.<<<<
.>>>>
.so chart-baudot-6
.Caption
Six-unit code (alphabet only) from an 1877 article by
\('Emile Baudot.\c
.Ref baudot-1877
.<<<<
.PP
In July of 1874, Baudot conceived of a significant improvement
to his original design,\c
.Ref baudot-1877
but ran out of money with which to construct a second prototype.\c
.Ref harrison-1923
In June, 1875,
the Administration des Postes et des T\('el\('egraphes
granted him 2,000 francs with which to continue his work,
and in December construction began on a new prototype.
In his revised design,
Baudot abandoned the six-unit code for a
five-unit one (\*[Figure]).
A six-unit code can encode 64 (2\*{6\*}) different characters,
far more than the twenty-six letters and space needed for purely
alphabetic messages.
This smaller set of characters can be encoded more efficiently
with a five-unit code,
which allows 32 (2\*{5\*}) combinations.
Since punctuation and digits were still sometimes needed,
Baudot included in his code
two special
.Ctrl "figure space"
and
.Ctrl "letter space"
characters,
which caused the printer to shift between cases.
The same dual-case arrangement had previously been used in the Hughes telegraph.
.>>>>
.so chart-baudot
.Caption
Five-unit code used on later Baudot telegraph equipment
.<<<<
.PP
While the Baudot telegraph transmitted text in less time than
the Hughes telegraph did, its operation was in a way a step backward.
The Hughes telegraph had a piano-like keyboard (\*[Figure]),
and operators transmitted each character by pressing
the key corresponding to it.
Baudot's telegraph, in contrast, used a five-key keyboard (\*[Figure]),
and operators had to memorize the combination of keys
that corresponded to each character.
.\" This requirement affected the design of the code,
.\" which Baudot arranged to facilitate memorization.
It was probably because of the number of operators who had
memorized it that
Baudot never again made any changes to the code his equipment used.
He continued to improve other aspects of his telegraph system
until 1899, when he suffered a stroke from which he never recovered.
He died March 28, 1903.
.>>>>
.so kbd-hughes
.Caption
Hughes printing telegraph keyboard
.<<<<
.>>>>
.PSPIC pses/chorded.ps
.sp
.Caption
Baudot printing telegraph keyboard
.<<<<
.SH
Donald Murray and the page printer
.PP
The Hughes and Baudot telegraphs printed their messages
on narrow strips of paper, not on ordinary pages,
and used keyboard designs that were not shared with
any other type of equipment.
This was not unreasonable at the time they were invented, but
by the end of the nineteenth century, typewriters had
become common office equipment,
and journalist Donald Murray (\*[Figure]) envisioned
a telegraph system whose transmitter would use
the well-known typewriter keyboard
and whose receiver would control a standard
typewriter or even a typesetting machine.
.>>>>
.PSPIC pses/murray-photo.PS
.sp
.Caption
Donald Murray
.<<<<
.PP
Murray was born in New Zealand on September 20, 1865.
He attended the Agricultural College
in Canterbury, New Zealand for two years beginning in 1884,
but found that ``farming proved unsuitable''
and, after a trip to Europe in 1886,
became a member of the staff of the
.I "New Zealand Herald"
and attended New Zealand University.
In 1891 he moved to Sydney, Australia,
where he worked for the
.I "Sydney Morning Herald"
and in 1892 received a master's degree in logic from Sydney University.
.PP
Murray's first telegraph-related invention was a printer.
It fed a strip of paper with holes punched in it past
a series of pins, which decoded the patterns of holes into
instructions to press (or, actually, to pull down from underneath)
various keys of a typewriter.
The section of tape corresponding to each character
could contain from zero to five holes,
encoding, like the five units of Baudot's telegraph,
32 possible combinations.
Murray's code (\*[Figure])
differed from Baudot's in several ways, though.
He chose to separate shifting and spacing into separate operations,
so his printer could shift between cases in the middle of a word.
He also provided three cases instead of two: figures,
capital letters, and lower case letters (``release'').
Finally, he chose to represent the most frequently used letters
by the patterns with the fewest number of holes punched,
either as to reduce wear on the punches
or to improve the structural soundness
of the paper tape.
.>>>>
.PSPIC pses/murray-code.ps
.Caption
Murray printer code, 1899
.<<<<
.PP
In 1899 he received a United States patent for this invention
and moved to New York to develop a complete telegraph system
around it for the Postal Telegraph Company.
On January 25, 1901, William B. Vansize
(identified as Murray's attorney in several of his patents)
described Murray's invention at a meeting of the American
Institute of Electrical Engineers,
and afterwards Murray demonstrated his printer in operation.
The equipment he demonstrated used a code (\*[Figure]a)
only slightly
different from the one he had specified in his 1899 patent.
He had reversed the codes for the
.Ctrl space
and
.Ctrl release
characters, probably so that unpunched sections at the start
and end of the tape would not cause the printer to space repeatedly,
but would instead only cause it to shift
harmlessly to lower case.
.>>>>
.so chart-murray
.Caption
Murray Printing Telegraph codes, 1901-1929.\c
.Ref vansize-1901 murray-1905 crotch-1908 ccit-1929-prelim
Character assignments shown as
.Ctrl unk
are unknown.
.<<<<
.PP
Neither Murray's 1899 patent nor Vansize's 1901 paper
unfortunately specifies what characters were available
in the figures case.
The only clue comes from an illustration of
(redrawn as \*[Figure]) which shows the keyboard
positions of some punctuation and digits.
These characters would have had the same codes as
the letters with which they shared keys.
It is unclear why Murray should have
chosen this arrangement for the figures case,
as it is not the same as that of any identifiable
typewriter.
In particular it has no connection to the key arrangement
of the Columbia Bar-Lock typewriter,\c
.Ref barlock
which Murray named
at the 1901 demonstration
as the typewriter used in his printer, and the distinctive silhouette
of which can be recognized in his 1899 patent.
Whatever its origin,
this arrangement of punctuation and digits did not last long.
Another patent, filed July 20, 1901, shows a new keyboard
arrangement (\*[Figure]),
which again does not seem to derive from any known typewriter\c
.Ref murray-sep-30-1902
.>>>>
.so kbd-murray-1901
.Caption
Fragment of Murray keyboard, 1901.\c
.Ref vansize-1901
.<<<<
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
By 1908, Murray had made further changes to his code and keyboard,
as can be seen in \*[Figure] and Figure \n[Murray-fig]c.\c
.Ref crotch-1908
He removed the
.Code comma
(\|,\|) from the letters case
(as the former capitals case had been renamed) to make room
for a new
.Ctrl "page"
control character indicating the end of
a page of text.
To make room for the comma in the figures case,
he rearranged of other figures and combined the
.Code left
(\fC(\fP) and
.Code right
(\fC)\fP)
.Code parentheses
into a single
character (\|\o'()'\|).
In 1911,
Murray explained a further reason for the extent of this reorganization:
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
It appears that the Hammond typewriter's ``Universal'' model
may also have had an impact on the design of
Morkrum equipment.
The Morkrum keyboard (\*[Figure])
resembles the Hammond
keyboard (\*[Figure])
more closely than that of any other identifiable typewriter,
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
which was able to retain the Morkrum
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
five-unit codes.
Nevertheless, no progress had been made toward standardization
as late as 1924, when the German telegraphic administration
began publishing articles advocating the adoption
of an international standard code.
Later that year
in England,
A.\~E. Thompson and Donald Murray
also declared their support for standardization.
Earlier in his career, Murray had had the habit of referring to
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
standardized Morse Code\c
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
The French delegation objected that adopting
a code so different from Baudot's as a standard would be impossible because
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
This arrangement was thought to give more reliable operation,
because if a shift character was corrupted in transmission and
caused the receiving printer to shift into the wrong case, it would only
remain there for a single word.
With separate shift and space characters, it might be much
longer before the next, correct, shift character was received.
The delegation from the USSR, however, preferred to separate the shifts
from the spaces because the Cyrillic alphabet
has too many letters to fit only in the letters case.
It requires
that five codes from the figures case be used for additional letters,
so it is essential to be able to shift between cases in the middle
of a word.
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
would be sacrificed and their codes reassigned to
the
.Ctrl "carriage return"
and
.Ctrl "line feed"
controls, respectively.
The
.Code period
(\|.\|), which had been the upper case of the superscript T,
would take the place of the
.Code semicolon
(\|;\|).
The following punctuation marks were considered essential to retain
and would keep the same codes as in existing Baudot equipment:
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
In place of other characters in the code would be added a
.Ctrl stop
signal and
two punctuation marks
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
After a mid-day break
and further debate,
the delegate from the Netherlands proposed that a subcommittee
be formed to
investigate what code was most appropriate for start-stop equipment.
The committee adjourned and the subcommittee met for two
and a half hours.
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
vigorously opposed by the USSR, though, so
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
eventually standardized: the
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
In 1952, I.\~S. Coggeshall, the Director of Planning for
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
as similar as possible to that of a standard electric typewriter (\*[Figure]).
The new network would not make old equipment or codes obsolete,
but it would allow faster connections than the old one
for those who wanted greater speed,
and most of the installed equipment would not be able to keep up.
Replacement equipment designed to work at high speed
(by AT\*(AMT's Teletype subsidiary, the company once known as Morkrum)
would also be designed for the new code.\c
.Ref auwaerter-may-1963
.>>>>
.so kbd-electric
.Caption
Standard electric typewriter keyboard.\c
.Ref x4.7-1973
.<<<<
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
he or she is connected to the correct recipient.
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
To create the code in Figure \n[Bellfig],
the Teletype designers had begun with
the character code
(\*[Figure])
from
FIELDATA,
a proposed U.S. military standard
designed by Captain William F. Luebbert
of the U.S. Army Signal Research and Development Laboratory,
and had then rearranged or replaced some of the punctuation
so that their keyboard would be closer to that of a standard
electric typewriter.\c
.Ref auwaerter-to-boykin-dec-30-1960
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
Unfortunately there was no established standard
for character codes other than International Telegraph Alphabet No.\~2,
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
One of the first to formulate a possible standard was the
.\" The first to make a move was the
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
on January 13, 1960,
when it created the X3 committee
for Computer and Information Processing Standards.
The first item in the committee's
charter, proposed by Robert W. Bemer of IBM,
was to develop
``a single standard for logical representation of characters...
together with orderly provision for expansion and alternatives.''\c
.Ref lee-x3-1988
On August 4, 1960,
it delegated this task to
the X3.2 subcommitee for Coded Character Sets and Data Format,
one of six subcommittees
created to address computer-related standards issues.\c
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
A Mr. Craig of AT\*(AMT
.\" XXX find out his name
and Allen\~L. Whitman of Bell Laboratories
attended the meeting and
presented the modified FIELDATA code
described above.
Their presentation impressed
X3.2 chairman Irving Liggett, who enthused that
``this could be the X3-2 code if we work fast enough.''\c
.Ref liggett-dec-7-1960
.PP
Many people in data processing, though,
didn't want to standardize a FIELDATA-derived code.
``The computer industry representatives' most fundamental objection
to the character arrangement in the DOD Fieldata code,''
wrote
L.\~L. Griffin,
who represented the U.S. Department of Defense
on the X3.2 subcommittee, ``is that the special characters
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
to make it convenient to construct keyboards.
.PP
X3.2 was, however, still officially at the stage of
choosing what characters to standardize and would not
decide until later in what order they should appear.
By their January 11-12, 1961 meeting,
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
that also included lower case, Greek and Cyrillic alphabets,
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
and Frank\~A. Williams)
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
.\" Of these five codes,
.\" only the second one from the minutes (Figure \n[Marchfig]b)
.\" shows a serious attempt to place characters that would
.\" appear on the same key of a keyboard in the same row
.\" of columns 0 and 1.
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
But this proved impossible because the
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
.nr ECSfig \n[Figure]
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
are probably in the code for the convenience of Algol programmers.
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
.PP
According to Reach,
the committee was ``attempting to prepare
a report to X3 for a recommended standard Character Set by
early November.''
He further reported that all members were in agreement
except Howard Smith of IBM,
and that Robert\~W. Bemer, IBM's Director of Programming Standards
and its alternate delegate to X3.2,
had nevertheless indicated that the company
``would be very pleased with this proposed Character Set
and would go along with it.''\c
.Ref reach-sep-18-1961
In fact,
Bemer's continuing enthusiasm for the emerging X3.2 standard
would cost him his job six months later,\c
.Ref lee-bemer-interview-1982
when opposition to the code became company policy.\c
.Ref zenner-to-vaughan-april-17-1962
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
operator, as it had in the Extended Character Set (Figure \n[ECSfig]) that
Bemer had codesigned for IBM in 1960.\c
.Ref bemer-june-1-1960
Neither Bemer nor anyone else on the X3.2 subcommittee knew it,\c
.Ref bemer-june-26-2000
but in addition to this prior use in computing,
there was also a precedent for the
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
There they learned from Henri Feissel,
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
and Henri Feissel (Bull, France), the president of WG B.
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
.\" But despite the X3.2 subcommittee's rejection
.\" of the ECS code,
.\" with several changes it eventually evolved into
.\" EBCDIC (\*[Figure]), the character code of
.\" IBM's 360 series computers.\c
.\" .Ref 360
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
The new standard in the real world
.endSH
.PP
An official standard is only useful if it is adopted in practice.
The CCIT had lacked the power to require that International Telegraph
Alphabets Nos. 1 and 2 be used on any country's internal networks,
but it had been able to enforce the use of the codes
on the international connections between its member organizations.
But the new code was not obligatory anywhere,
and the American Standard even began with an explicit
disclaimer indicating that it did ``not in any respect
preclude anyone, whether he has approved the standard or not,
from manufacturing, marketing, purchasing, or using products,
processes, or procedures not conforming to the standard.''
.PP
Nevertheless, the code did begin to be used.
It would have been used, if perhaps not on so large a scale,
even if it had never succeeded in being approved as a standard,
because Teletype had begun demonstrating,\c
.Ref honeywell-33-demo
and even advertising,\c
.Ref teletype-datamation-may63
its ASCII-compatible Model 33 teleprinter
months before the standard it conformed to was published.
Many computer systems already used the earlier Teletype Model 28,\c
.Ref ctss-v1 sdc-timesharing pdp4
even though its International Telegraph Alphabet No. 2-style
code was badly suited to computing needs.
The obvious superiority of the ASCII-coded Model 33,
with its larger set of punctuation
and its elimination of the need for shift characters,
must have made the new model easy to sell to
customers who would otherwise have been willing to settle for the Model 28.
.PP
One of these customers
was Digital Equipment Corporation (DEC),
which included a Model 28 Teletype with its PDP-4 computer.
By 1964, the company
had made Model 33s standard equipment on its
new PDP-5\c
.Ref pdp-5-brochure
and PDP-6\c
.Ref pdp-6-brochure
computers and had extended its PDP-4 software
to support ASCII as well as Digital's original ``FIO-DEC'' character code.\c
.Ref canute
.PP
Another Model 28 user was
the Massachusetts Institute of Technology's Project MAC,
whose Compatible Time Sharing System (CTSS) also supported
the various character codes of the
IBM Selectric 1014, Friden Flexowriter,
DEC PDP-1 console terminal, IBM 1620, and IBM Selectric 1050,
by translating them all into
an internal six-bit code derived from IBM's BCD character code.\c
.Ref ctss-v1
By June, 1964,
fifty-two ASCII Teletypes had supplemented the
other terminals attached to the system,\c
.Ref fano-mac-system
which continued to use the BCD-derived code internally
and to translate to and from ASCII and other character codes
when performing input and output.
Later, some CTSS programs were rewritten to use ASCII directly
rather than translating to and from BCD.\c
.Ref ctss-tip
.PP
Some others, though, were not so eager to begin using the new code.
IBM had shown some support for ASCII by devoting an entire
issue of its
.I "Data Processor"
magazine to the code,
but when it introduced its new 360 series of computers in April, 1964,
they were designed to use not ASCII, but
the Extended Binary-Coded Decimal Interchange Code (EBCDIC, \*[Figure]),
derived from the Extended Character Set that Charles Mackenzie had proposed
and that the X3.2 subcommittee had rejected two years earlier.\c
.Ref 360
Western Union also devoted a cover story in its
.I "Technical Review"
to ASCII, but indicated that
``it appears doubtful that Western Union will ever adopt
the new code for use in its public message service.''\c
.Ref smith-april-1964
.>>>>
.so ebcdic-1970.code.pic
.Caption
Extended Binary-Coded Decimal Interchange Code (EBCDIC),
revision of August, 1970.\c
.Ref 360
.<<<<
.PP
Those that did adopt ASCII sometimes used it in ways
the committee that designed it had never intended.
It made mechanical sense for the code to separate the
.Ctrl "carriage return"
and
.Ctrl "line feed"
functions into separate characters,
but requiring two keystrokes to end each line
is not only troublesome to type,
but also requires extra work for a computer to decode,
so CTSS and the DEC PDP-6 operating system
arranged to have
.Ctrl "carriage return"
alone terminate their input lines.
This was exactly the opposite of what the ISO draft
and the ECMA standard specified:
that if a single line terminator character was desired,
it should be the
.Ctrl "line feed"
character.
The standard also intended for the
.Ctrl "delete"
character to be ignored,
because it was meant to be overpunched on top of a mistyped character,
but DEC's software interpreted
the character as an instruction to disregard
the previous character typed.
.PP
DEC also gave new meanings to many of the control characters
that could be generated by pressing the Control key together with a letter.
Control-C generated the ASCII
.Ctrl "end of message"
character, but to a DEC system it was an instruction
to end the currently-running job.
Control-O in ASCII is
.Ctrl "shift in" ,
but the PDP-6 would interpret it as an instruction to
throw away pending output text.
And Control-Z is the ASCII-1963 character
.Ctrl "information separator 2" ,
but the DEC meaning is ``end of text'' or ``end of data.''\c
.Ref watt-austr-1966
.\" .PP
.\" Other software, particularly text editors,
.\" strayed even further from the intended meanings
.\" of the control characters.
.SH
The CCITT modifies the code
.endSH
.PP
Even as the real-world usage of the code evolved,
so did its definition, when
the CCITT's Working Party on the New Telegraph Alphabet,
organized in December, 1960,
finally met for the first time from May 13-15, 1963.\c
.Ref ccitt-may-13-1963
There was no reason for the CCITT to design
a wholly new code when the ISO
character code proposal was already so well developed,
so it was used as a starting point.
The ISO proposal, though, did not include the lower case alphabet
and the five accent marks that the CCITT considered essential.
The unassigned area was the natural place to add the lower case
alphabet, but
adding the accents as well would have
put the total number of necessary printing characters
and controls at 135, seven too many for a seven-bit character code.
Fortunately,
ISO representatives admitted ``that there were certain parts
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
In the United States on May 9, 1966, Doug\~A. Kerr edited
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
These changes
were sufficient to gain SHARE's support
without causing any serious incompatibility with the
international standards,
and X3.4-1967 (\*[Figure])
became the United States character code standard July 5, 1967.\c
.Ref ascii-67
(A 1977 revision of the standard eliminated the gap placed in the
vertical line and removed the notes from
the exclamation point and circumflex.\c
.Ref ascii-77
Nevertheless, many current keyboards and displays still break
the line in two.)
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
One only concerned the name by which the 
standard was popularly known.
Prior to the publication of X3.4-1967,
the American Standards Association had become
the USA Standards Institute (USASI), which meant
that the formal name of the code had become
the USA Standard Code for Information Interchange, USASCII.
At the February, 1967 meeting of the X3.2 subcommittee,
its members approved a resolution endorsing the
continued use of the code's traditional name, ASCII.
On November 20, Doug\~A. Kerr proposed an amendment
to the standard indicating that ASCII was the preferred name
of the code but that the USASCII name was also valid.\c
.Ref kerr-nov-20-1967
When the revision was eventually published,
on October 10, 1968, both names
were listed, with no indication that either was preferred
over the other.\c
.Ref ascii-1968
Later still, the USA Standards Institute changed its
name again, to the American National Standard Institute, ANSI.
Rather than add a third name, the 1977 revision of the standard
only called the code ASCII.\c
.Ref ascii-77
.PP
A second change to the code concerned
the interpretation of its control characters.
On July 5, 1967, John\~B. Booth called attention to the
``trend in the field of keyboard-oriented devices... in which
a single key... is associated with the combined Carriage Return
and Line Feed operations.''
As mentioned above, the ISO draft proposal already
allowed character 0/10 to represent
either
.Ctrl "line feed"
or
.Ctrl "new line" ,
so Booth proposed that the character also be given this
dual meaning in the United States standard,\c
.Ref booth-jul-5-1967
and this too was included in the revised standard
published in 1968.
.PP
Unfortunately, as also mentioned above,
by this time some computer manufacturers had
already chosen
.Ctrl "carriage return"
as the single character they used to represent the end of a line.
A 1972 proposed revision of the code,
never accepted,
attempted to strengthen the standard's position
by making
.Ctrl "new line"
the primary interpretation of character 0/10
and
.Ctrl "line feed"
the alternate.\c
.Ref prascii-1972
The revision that was actually adopted in 1977 instead left
.Ctrl "line feed"
as the primary interpretation of the character
and
.Ctrl "new line"
as the alternate.\c
.Ref ascii-77
Another revision, in 1986,
made the reference to
.Ctrl "new line"
less prominent,
admitted the possibility that a key labelled
``new line''
might transmit the
.Ctrl "carriage return"
character (0/13) instead of character 0/10,
and noted that a future revision might eliminate the
.Ctrl "new line"
option entirely.\c
.Ref ascii-86
The issue is still not settled:
among today's popular computers,
those using Microsoft operating systems
terminate lines with
both
.Ctrl "carriage return"
and
.Ctrl "line feed" ,
Unix-derived systems use only
.Ctrl "line feed" ,
and the Apple Macintosh uses only
.Ctrl "carriage return" .
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
International Telegraph Alphabet No.\~2,\c
.Ref itu-t-s1
which enjoyed a brief resurgence of popularity in the mid-1970s
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
The eight-bit ISO 8859\c
.Ref iso-8859
and ECMA-94 codes,\c
.Ref ecma-94
and the sixteen-bit Unicode,\c
.Ref unicode-3
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
Comments from the anonymous referees
further improved the paper.
Finally, I would like to thank Bob Bemer
for donating to the Smithsonian many of the documents on
which this paper is based and for critiquing a draft of the paper.
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
.ds Ref:randell-1979 ``The First Alphabetical Printing Unit,'' \fIPowers-Samas Gazette\fP, March-April, 1956, pp. 8-9, summarized in Brian Randell, ``An Annotated Bibliography on the Origins of Digital Computers,'' \fIAnnals of the History of Computing\fP, vol. 1, no. 2, October, 1979, pp. 101-207.
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

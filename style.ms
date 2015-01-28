.nr doublespace 0
.nr courier 0
.
.if n .fp 27 C B
.if n .nr HY 0
.
.
.\" sets thickness back to default, moves to compensate for groffism
.ds fixthick \D't -1p'\h'1p'
.
.
.ds broken-bar \*[fixthick]\h'\\w!=!u/2u'\v'0.2m'\D'l 0 -.35m'\v'-0.2m'\D'l 0 -.35m'\v'0.7m'\h'\\w!=!u/2u'
.ds vertical-bar \*[fixthick]\h'\\w!=!u/2u'\v'0.2m'\D'l 0 -0.9m'\v'0.7m'\h'\\w!=!u/2u'
.if n .ds vertical-bar |
.
.
.ds up-arrow \*[fixthick]\h'\\w!n!u/10u'\v'-0.4m'\D'l \\w!n!u/2u -0.3m'\D'l 0 0.9m'\v'-0.9m'\D'l \\w!n!u/2u 0.3m'\v'0.4m'\h'\\w!n!u/10u'
.if n .ds up-arrow <img width=12 height=12 src="up-arrow.gif" alt="[up arrow]">
.
.ds down-arrow \*[fixthick]\h'\\w!n!u/10u'\v'-0.1m'\D'l \\w!n!u/2u 0.3m'\D'l 0 -0.9m'\v'0.9m'\D'l \\w!n!u/2u -0.3m'\v'0.1m'\h'\\w!n!u/10u'
.if n .ds down-arrow <img width=12 height=12 src="down-arrow.gif" alt="[down arrow]">
.
.ds not-sign \*[fixthick]\v'-0.6m'\h'\\w!M!u/10u'\D'l \\w!M!u*8u/10u 0'\D'l 0 0.2m'\h'\\w!M!u/10u'\v'0.4m'
.ds overline \*[fixthick]\v'-0.6m'\h'\\w!M!u/10u'\D'l \\w!M!u*8u/10u 0'\h'\\w!M!u/10u'\v'0.6m'
.ds squiggle \*[fixthick]\h'\\w!M!u/10u'\v'-0.6m'\D'~ \\w!M!u/4u -0.1m \\w!M!u/2u 0.2m \\w!M!u/4u -0.1m'\v'0.6m'\h'\\w!M!u/10u'
.
.
.ds tilde \*[fixthick]\h'\\w!n!u/10u'\v'-0.4m'\D'~ \\w!n!u/4u -0.3m \\w!n!u/2u 0.4m \\w!n!u/4u -0.3m'\v'0.6m'\h'\\w!n!u/10u'
.if n .ds tilde ~
.
.ds hat \*[fixthick]\h'\\w!n!u/10u'\v'-0.3m'\D'l \\w!n!u/2u -0.4m'\D'l \\w!n!u/2u 0.4m'\v'0.3m'\h'\\w!n!u/10u'
.if n .ds hat ^
.
.ds acute \*[fixthick]\h'\\w!n!u/10u'\v'-0.4m'\D'l \\w!n!u -0.3m'\v'0.7m'\h'\\w!n!u/10u'
.if n .ds acute '
.
.ds grave \*[fixthick]\h'\\w!n!u/10u'\v'-0.7m'\D'l \\w!n!u 0.3m'\v'0.4m'\h'\\w!n!u/10u'
.if n .ds grave `
.
.ds umlaut \*[fixthick]\h'\\w!n!u/4u'\v'-0.6m'\D'C 0.1m'\h'\\w!n!u/2u'\D'C 0.1m'\v'0.6m'\h'\\w!n!u/4u'
.if n .ds umlaut ¨
.
.ds cedilla \*[fixthick]\v'-0.2m'\h'\\w!n!u/10u'\D'l 0 0.2m'\D'~ 0.1m 0.1m -0.1m 0.1m -0.1m -0.1m'\v'-0.1m'\h'0.1m'\h'\\w!n!u/10u'
.
.
.ds circleplus \*[fixthick]\h'\\w!n!u/10u'\v'-0.3m'\D'c 0.6m'\h'-0.6m'\D'l 0.6m 0'\h'-0.3m'\v'-0.3m'\D'l 0 0.6m'\h'0.3m'\h'\\w!n!u/10u'
.
.
.ds round-hat \*[fixthick]\h'\\w!n!u/10u'\v'-0.3m'\D'~ 0 -0.1m \\w!n!u/2u -0.3m 0.1m 0 \\w!n!u/2u 0.3m 0 0.1m'\v'0.3m'\h'\\w!n!u/10u'
.
.
.
.ds angle-tilde \*[fixthick]\h'\\w!\-!u/10u'\v'-0.1m'\D'l 0.1m -0.2m'\D'l \\w!\-!u 0'\D'l 0.1m -0.2m'\v'0.5m'\h'\\w!\-!u/10u'
.if n .ds angle-tilde <img width=12 height=12 src="angle-tilde.gif" alt="[angular-tilde]">
.
.ds hammond-thing \*[fixthick]\h'\\w!M!u/10u'\v'-0.2m'\D'~ 0.4m -0.1m   0.1m -0.2m   -0.1m -0.1m  -0.1m 0.1m    0m 0.5m   -0.1m 0.1m   -0.1m -0.1m  0m -0.5m'\D'l -0.1m 0'\h'0.5m'\h'\\w!M!u/10u'\v'0.5m'
.ds lozenge \*[fixthick]\h'\\w!n!u/10u'\v'-0.6m'\D'~ 0.3m 0.1m 0.3m -0.1m'\D'~ -0.1m 0.3m 0.1m 0.3m'\D'~ -0.3m -0.1m -0.3m 0.1m'\D'~ 0.1m -0.3m -0.1m -0.3m'\h'0.6m'\v'0.6m'\h'\\w!n!u/10u*3u'
.if n .ds lozenge <img width=12 height=12 src="lozenge.gif" alt="[lozenge]">
.
.\" subscript things, based on tmac.s's superscript.
.
.ds < \v'+.7m\s'\En[.s]*7u/10u'-.7m'
.ds > \v'+.7m\s0-.7m'
.
.
.ie t \{.
.	ds 0 \*[fixthick]\v'-0.3m'\h'0.3m'\D'C 0.1m'\h'0.3m'\v'0.3m'
.	ds 1 \*[fixthick]\v'-0.3m'\h'0.05m'\D'c 0.6m'\h'0.05m'\v'0.3m'
.	ds LT <
.	ds GT >
.	ds AM &
.\}
.el \{.
.	ds 0 .
.	ds 1 O
.	ds vertical-bar |
.	ds { <sup>
.	ds } </sup>
.	ds < <sub>
.	ds > </sub>
.	ds LT &lt;
.	ds GT &gt;
.	ds AM &amp;
.\}
.
.
.
.
.
.\" .\" force .PS not to put extra space at the start
.\" .
.\" .rn PS origPS
.\" .de PS
.\" .	br
.\" .	sp -\\n[DD]u
.\" .	origPS \\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9
.\" ..
.
.
.de >>>>
.	KF
.\" .	if 1 \D't 0'\D'l \\n(.lu-\\n(.iu 0'\*[fixthick]
.\" .	br
..
.de <<<<
.	br
.	if 1 \v'-0.5m'\D't 0'\D'l \\n(.lu-\\n(.iu 0'\*[fixthick]\v'0.5m'
.	br
.
.	\" The point of this all is to make sure the current vertical
.	\" position is an exact multiple of the line spacing, so I
.	\" get those nice balanced column bottoms I'm so fond of.
.
.	\" Without this, most pictures aren't going to be an exact
.	\" multiple and it'll be all ragged.
.
.	mk mumble
.\" .	if 1 we're at position \\n[mumble]
.	nr needed (\\n[mumble]+1v-1u)/\\n(.v*\\n(.v
.\" .	if 1 should be \\n[needed]
.\" .	br
.	sp \\n[needed]u-\\n[mumble]u
.	KE
..
.
.
.
.if \n[doublespace] \{.
.	nr divertedfigs 0
.	de >>>>
.		br
.		tm diverting to \\n[divertedfigs]
.		di diverted-figs-\\n[divertedfigs]
..
.
.	de <<<<
.		sp 2
.		br
.		nr div-length-\\n[divertedfigs] \\n(.h
.		di
.		tm done with \\n[divertedfigs]
.		nr divertedfigs +1
.		\" really ought to change environments instead, but...
.		ad
..
.\}
.
.
.if n \{.
.	de >>>>
.		br
.		if 1 <p><hr>
.		br
..
.	de <<<<
.		br
.		if 1 <hr><p>
.		br
..
.	de B
.		if 1 \&\\$3<b>\\$1</b>\\$2
..
.	de I
.		if 1 \&\\$3<i>\\$1</i>\\$2
..
.\}
.
.
.
.
.nr Figure 0 1
.ds Figure Figure \\n+[Figure]
.nr Figure-caption 0 1
.de Caption
.	vs \n(.s*12u/10u
.	br
.	if n <p>
.	na
.	B "Figure \\n+[Figure-caption]."
..
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
.		el \\n[Thisref],\~\c
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
.if \n[courier] \{.
.	fam C
.	nr PS 10
.	nr VS 20
.	ps 10
.	vs 20
.\}
.if \n[doublespace] \{.
.	nr PS 11
.	nr VS 22
.	ps 11
.	vs 22
.\}
.nr indent 3n
.nr bigindent 5n
.nr PI \n[indent]
.nr PD 0
.nr LL 6.5i
.
.
.de my-ab
.	LP
.	sp 1
.	ce 1
.	if n <h2>
.	if 1 \fBAbstract\fR
.	if n </h2>
.	LP
.	sp .5
..
.de my-ae
.	LP
.	sp 1
.	if n <p>
..
.
.de Code
.	if 1 \&\\$3\c
.
.	ps \\n(.s*7u/10u
.	tr aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ
.	if 1 \&\\$1\c
.	tr aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz
.	ps
.
.	if 1 \&\\$2
..
.de Code
.	if 1 \\&\\$3\\$1\\$2
..
.de Ctrl
.	if t \\&\\$3\fI\\$1\fP\\$2
.	if n \\&\\$3<i>\\$1</i>\\$2
..
.
.
.
.

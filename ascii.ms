.LP
.ce 1
First Proposal for
.LP
.ce 1
Standard Code Set by ASA X3-2
.LP
.TS
center;
l c l c l c l c .
.ul
Octal	Character	Octal	Character	Octal	Character	Octal	Character
.ft R
00	Master Space	20	0	40	(to be assigned)	60	M
01	blank	21	1	41	(to be assigned)	61	N
02	Carriage Return	22	2	42	(to be assigned)	62	O
03	Line Feed	23	4	43	(to be assigned)	63	P
04	#	24	4	44	A	64	Q
05	%	25	5	45	B	65	R
06	:	26	6	46	C	66	S
07	;	27	7	47	D	67	T
10	(	30	8	50	E	70	U
11	)	31	9	51	F	71	V
12	/	32	$	52	G	72	W
13	'	33	*	53	H	73	X
14	-	34	(to be assigned)	54	I	74	Y
15	+	35	(to be assigned)	55	J	75	Z
16	.	36	Upper Case	56	K	76	Escape
17	,	37	Lower Case	57	L	77	Delete
.TE
.LP
The following points are features of this code:
.IP 1)
The Alphabetics are in a 5-bit subset
.IP 2)
The format effectors (MS, Blank, CR, and LF) collate first and are
easy to logically recognize
.IP 3)
Master space precedes all characters so that it is sure to collate first
.IP 4)
All punctuation marks collate before numerics and alphabetics
.IP 5)
Two symbols ($ and *) unique to the U.S. occupy codes 32 and 33 following
the numeric 0-9 so that compatibility with a British duo-decimal code
is achieved.
.IP 6)
By collapsing the low order six-bit subset into a four-bit subset,
codes 20-33 and 34-37 become a convenient numeric subset
.IP 7)
If a numeric 4-bit subset or an alphanumeric 5-bit subset is desired,
certain pending positions in each set are available for control
or format effectors (i.e. the function assigned octal 00-03) can
be assigned to and the similarity between octal 36-37 and octal 76-77
allow them to be interchangeable.
.IP 8)
Delete is all ones (octal 77) to allow paper tape punch-out
.IP 9)
Six code positions are available for special applications
.PP
Mr. Tom McNamara, the Honeywell delegate to the EXA TR 27.6
and the alternate to X3-2, also attended.

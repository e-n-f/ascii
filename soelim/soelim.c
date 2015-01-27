/*
 * soelim -- file inclusion preprocessor for troff
 *
 * Eric Fischer <enf@pobox.com> January 2000
 * Original by Bill Joy, 1977
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>

#define LEN 6000		/* the longest line we can do properly */

int handle_lf = 0;		/* make a special case of .lf? */
char **av;			/* the argument list, for errors */

int soelim (char *oldname, int oldline, char *name);
void strip (char *s);
void usage (void);
char *skipspace (char *s);
char *skipdigits (char *s);
void *xmalloc (size_t s);

int
main (int argc, char **argv)
{
  int i;
  extern int optind;
  int success = EXIT_SUCCESS;

  av = argv;

  while ((i = getopt (argc, argv, "l")) != -1)
    {
      switch (i)
       	{
	case 'l':
	  handle_lf = 1;
	  break;

	default:
	  fprintf (stderr, "Usage: %s [-l] [file ...]\n", argv[0]);
	  exit (EXIT_FAILURE);
	}
    }

  if (optind < argc)
    {
      for (i = optind; i < argc; i++)
	if (! soelim (NULL, 0, argv[i]))
	  success = EXIT_FAILURE;
    }
  else
    {
      soelim (NULL, 0, "-");
    }

  exit (success);
}

/*
 * Copy the contents of the file named NAME to standard output,
 * except for lines beginning with ".so", which indicate other
 * files to be recursively included.
 *
 * OLDNAME and OLDLINE are the name and current line number of
 * the file (if any) that included this one, for the sake of
 * informative error messages.
 */

int
soelim (char *oldname, int oldline, char *name)
{
  FILE *f;		/* file being sourced */
  int line = 0;		/* number of lines read from the file */
  char s[LEN];		/* contents of current line */
  char *temp = NULL;	/* name of file, if changed by .lf */
  char *cp;

  if (strcmp (name, "-") == 0)
    f = stdin;
  else
    {
      f = fopen (name, "r");
      if (!f)
       	{
	  char *err = strerror (errno);

	  fprintf (stderr, "%s: ", av[0]);

	  if (oldname)
	    fprintf (stderr, "%s:%d: ", oldname, oldline);

	  fprintf (stderr, "can't open %s: %s\n", name, err);
	  return 0;
	}
    }

  if (handle_lf)
    printf (".lf %d %s\n", line + 1, name);

  while (fgets (s, LEN, f))
    {
      line++;

      if (strncmp (s, ".so", 3) == 0 && isspace (s[3]))
	{
	  strip (s);
	  cp = skipspace (s + 4);

	  if (! soelim (name, line, cp))
	    printf ("%s\n", s);
	}
      else if (handle_lf && strncmp (s, ".lf", 3) == 0 && isspace (s[3]))
	{
	  strip (s);
	  cp = skipspace (s + 4);

	  if (isdigit (*cp))
	    line = atoi (cp) - 1;

	  cp = skipdigits (cp);
	  cp = skipspace (cp);

	  if (*cp)
	    {
	      if (temp)
		  free (temp);

	      temp = xmalloc (sizeof (char) * (strlen (cp) + 1));
	      strcpy (temp, cp);
	      name = temp;
	    }

	  if (*cp)
	    printf (".lf %d %s\n", line + 1, name);
	  else
	    printf (".lf %d\n", line + 1);
	}
      else
	{
	  fputs (s, stdout);
	}
    }

  if (handle_lf && oldname)
    printf (".lf %d %s\n", oldline + 1, oldname);

  if (f != stdin)
    fclose (f);
  if (temp)
    free (temp);

  return 1;
}

/*
 * Null-terminate the string S at its first newline character.
 */

void
strip (char *s)
{
  for (; *s; s++)
    if (*s == '\n')
      *s = '\0';
}

/*
 * Return a pointer to the first non-space character in the string S.
 */

char *
skipspace (char *s)
{
  for (; isspace (*s); s++)
    ;

  return s;
}

/*
 * Return a pointer to the first nondigit character in the string S.
 */

char *
skipdigits (char *s)
{
  for (; isdigit (*s); s++)
    ;

  return s;
}

/*
 * Allocate T bytes of memory, exiting if the allocation fails.
 */

void *
xmalloc (size_t t)
{
  void *p = malloc (t);

  if (!p)
    {
      fprintf (stderr, "%s: can't allocate %d bytes of memory: %s\n",
	       av[0], (int)t, strerror (errno));
      exit (EXIT_FAILURE);
    }

  return p;
}

/* 
   vim:cino=(0>4{2e2n-2^-2t0+2\:2=2
*/

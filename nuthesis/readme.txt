Readme for the package nuthesis

Ned W. Hummel <nhummel@gmail.com>
Rex Dieter <rdieter@gmail.com>
Time-stamp: Thu May 23 11:53:29 CDT 2013

This package is distributed as a ins/dtx pair of files:

 *nuthesis.ins
 *nuthesis.dtx

The package also contains the needed wordmarks for the four NU campus
as both pdf and eps files:

 *unk.{eps,pdf}
 *unmc.{eps,pdf}
 *unl.{eps,pdf}
 *uno.{eps,pdf}

To re-generate the class file one simply runs:
   latex nuthesis.ins

Then the following will be generated:
 *nuthesis.cls - The class file itself

 *skeleton.tex - A skeleton document

 *example.tex - An example document used for testing features of the
  class

 *nuthesis.bib - The biblography for the class and a listing of very
  useful packages

To finish the installation you have to move the following files into a
directory searched by TeX:
 
 *nuthesis.cls

 *All of the wordmarks for the four NU campus into the same directory
  that nuthesis.cls is placed in.

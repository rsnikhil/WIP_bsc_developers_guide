This document is a work-in-progress, and not yet meant for public distribution.
It will eventually be moved to the main 'bsc' repository.

Despite being in very inchoate form, this document is being written
and developed in the open in order to welcome feedback/ suggestions/
contributions as it is being developed.

There is as yet no plan for the organization of this document; it will
emerge as we add content.  Content will not be added in a linear
fashion. Content is likely to be added based on individuals' actual
experience in reading and understanding various parts of the code.

The document is written in LaTeX, and produces a PDF file.

The checked-in PDF is meant to be a recent generation of the PDF.

`make p`    will regenerate the PDF from LaTeX sources.

// ****************************************************************
Some history of this document

2026-06-10: Starting a LaTeX document 'bsc_tour.{tex,pdf}' for documentation of bsc.

Decided to go with LaTeX/PDF (instead of AsciiDoc or something else) because:
* PDF documents have nice structure (chapters, sections, subsections, ...)
* LaTeX documents do well with fixed-width fonts
* LaTeX documents do well with imported jpg and png diagrams
* LaTeX documents do well with cross-references
* LaTeX documents do well with indexes
* LaTeX documents do well with tables-of-contents
* etc.
* I'm familiar with it (no learning curve)

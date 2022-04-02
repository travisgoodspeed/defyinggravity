Howdy y'all,

This repo contains an unpublished novel that Sera Brocious released in
2022, written by her father Dean Brocious in the 1980s.  The file [as
she released it](https://daeken.dev/defying_gravity.html) is in a very
regular dialect of HTML, but I prefer to read on paper, so this
project is a quick shellscript conversion to LaTeX and from there to
PDF.

For now, the `Makefile` generates the TeX from the original HTML, so
that conversion mistakes can be fixed.  After running `make clean
all`, print `letter.pdf` for US/Letter and A4 paper or `book.pdf` for
A5 paper in the expected hardback size.

Quotation marks are a little awkward, but in all other ways this
conversion should be readable in print.

--Travis

#!/usr/bin/python

from PyPDF2 import PdfMerger
from sys import argv

merger = PdfMerger()

for pdf in argv[1:]:
    merger.append(pdf)

merger.write("{}merged-pdf.pdf".format(argv[1]))
merger.close()

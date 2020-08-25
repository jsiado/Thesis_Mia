(TeX-add-style-hook "nuthesis"
 (lambda ()
    (LaTeX-add-bibliographies)
    (LaTeX-add-environments
     "copyrightpage"
     "dedication"
     "acknowledgments"
     "grantinfo")
    (LaTeX-add-labels
     "chap:aenied"
     "tab:tabular"
     "tab:list"
     "fig:test"
     "chap:math"
     "eq:fun")
    (TeX-add-symbols
     '("degreeyear" 1)
     '("degreemonth" 1)
     '("adviserAbstract" 1)
     '("adviser" 1)
     '("state" 1)
     '("city" 1)
     '("university" 1)
     '("college" 1)
     '("major" 1)
     '("degreeabbreviation" 1)
     '("degree" 1)
     '("doctype" 1)
     '("pkg" 1)
     "nu"
     "backmatter")
    (TeX-run-style-hooks
     "geometry"
     "letterpaper"
     "includehead"
     "nofoot"
     "memoir12"
     "memoir"
     "12pt"
     "oneside"
     "scrtime"
     "setspace"
     "keyval"
     "ifthen"
     "memhfixc"
     "hyperref"
     "Thesis"
     "University"
     "of"
     "Nebrska"
     "Test}"
     "backref"
     "pdfpagelabels"
     "color"
     "graphicx"
     "paralist"
     "microtype"
     "mathpazo"
     "sc"
     "osf"
     "amsfonts"
     "amsmath"
     "ms"
     "testing"
     "nuthesis10"
     "print"
     "fancyvrb"
     "booktabs"
     "url"
     "latex2e"
     "ltxdoc10"
     "ltxdoc")))


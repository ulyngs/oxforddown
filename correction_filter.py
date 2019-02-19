"""
Pandoc filter to convert spans with class="correction" to LaTeX
\mccorrect environments in LaTeX output, and leave as is in HTML
output.
"""

from pandocfilters import toJSONFilter, RawInline, Span

def latex(x):
    #LaTeX inline
    return RawInline('latex', x)

def corrections(key, value, format, meta):
    if key == 'Span':
        [[ident, classes, keyvals], contents] = value
        if "correction" in classes:
            if format == "latex":
                if ident == "":
                    label = ""
                else:
                    label = '\\label{' + ident + '}'
                return([latex('\\colorbox[HTML]{CCCCFF}{')] + contents +
                       [latex('}')])

if __name__ == "__main__":
    toJSONFilter(corrections)

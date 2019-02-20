function Span (el)
  if el.classes[1] == "correction" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\colorbox[HTML]{CCCCFF}{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
    end
  return el.content
end

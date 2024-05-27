local function ensureLatexDeps()
  quarto.doc.use_latex_package("lipsum")
end

return {
  ['lipsum'] = function(args, kwargs, meta)
    local range = args[1] or "1"
    if quarto.doc.isFormat('pdf') then
      ensureLatexDeps()
      return pandoc.RawInline('tex', '\\lipsum[' .. range .. ']')
    end
    return pandoc.Str("")
  end
}

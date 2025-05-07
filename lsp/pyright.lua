return {
  cmd = {
    -- NOTE: pyright is installed in a venv, and this venv was created
    --  inside this folder ('~/.config/nvim'), so it will use it by default.
    vim.fn.expand("~") .. "/.config/nvim/.venv/bin/pyright-langserver",
    "--stdio"
  },
  filetypes = { "python" },
  -- https://microsoft.github.io/pyright/#/settings
  settings = {
    python = {
      analysis = {
        -- Determines whether pyright offers auto-import completions.
        autoImportCompletions = true,
        -- Determines whether pyright automatically adds common
        --  search paths like "src" if there aree no execution
        --  environments defined in the config file.
        autoSearchPaths = true,
        -- Determines whether pyright reads, parses and analyzes
        --  library code to extract type information in the absence
        --  of type stub files.
        useLibraryCodeForTypes = true,
        -- Determines whether pyright analyzes (and reports errors
        --  for) only open files.
        diagnosticMode = "openFilesOnly",
        -- Determines the default type-checking level used by pyright.
        typeCheckingMode = "basic",
      }
    }
  }
}

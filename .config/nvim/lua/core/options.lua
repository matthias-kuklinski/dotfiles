return { 
  backup = false,                   -- Don't create backup files.
  clipboard = "unnamedplus",        -- Read and write to the os clipboard.
  cursorline = true,                -- Highlight the cursor line.
  expandtab = true,                 -- Insert space charactes instead of a tab.
  fileencoding = "utf-8",           -- Encode in UTF-8.
  ignorecase = true,                -- Ignore character case on pattern matching.
  list = true,                      -- Visualize control characters.
  listchars="eol:¬,tab:↹↹,trail:_", -- Provide substitutes for control character visualization.
  number = true,                    -- Show line numbers.
  relativenumber = true,            -- Show relative line numbers.
  shiftwidth = 2,                   -- Insert 2 spaces on each intendation.
  shortmess = "I",                  -- Hide the intro message.
  smartcase = true,                 -- Override ignorecase option if the search pattern contains upper case characters.
  tabstop = 2,                      -- Insert 2 space characters for a tab.
  termguicolors = true,             -- Enable 24-bit RGB color in the TUI.
  signcolumn = "number",            -- Show the signcolumn all the time.
  showcmd = false,                  -- Don't show the current command.
  showmode = false,                 -- Don't show the current mode.
  swapfile = false,                 -- Don't create a swapfile for a buffer.
  wrap = false                      -- Don't break up a line (visually), when it is exceeding the windows width.
}

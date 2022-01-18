-- Determine whether a char is infront of the current cursor.
local is_char_infront = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local ls = require("luasnip")
local cmp = require("cmp")
local lspkind = require("lspkind")

-- Set up the global configuration
cmp.setup({
  mapping = {
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif ls.expand_or_jumpable() then
        ls.expand_or_jump()
      elseif is_char_infront() then
        cmp.complete() -- If there is a char, open up the completion menu for it.
      else
        fallback() -- Fall back to the default behaviour mapped to Tab.
      end
    end,

    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif ls.jumpable(-1) then
        ls.jump(-1)
      else
        fallback() -- Fall back to the default behaviour mapped to S-Tab.
      end
    end
  },

  formatting = {
    format = lspkind.cmp_format({})
  },

  sources = {
    { name = "buffer" },
  }
})

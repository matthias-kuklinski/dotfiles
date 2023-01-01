return {
  general = {
    n = {
      ["<ESC>"] = "<cmd> noh <CR>"
    }
  },

  movement = {
    n = {
      ["<c-e>"] = "<cmd> NvimTreeToggle <CR>",
      ["<c-h>"] = ":wincmd h <CR>",
      ["<c-j>"] = ":wincmd j <CR>",
      ["<c-k>"] = ":wincmd k <CR>",
      ["<c-l>"] = ":wincmd l <CR>"
    }
  },

  layout = {
    n = {
      ["<c-,>"] = ":wincmd s <CR>",
      ["<c-.>"] = ":wincmd v <CR>"
    }
  }
}

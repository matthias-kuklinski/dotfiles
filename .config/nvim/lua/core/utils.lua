return {
  setOptions = function(options)
    for option, value in pairs(options) do
      vim.opt[option] = value
    end
  end,

  set_mappings = function(mode_mappings)
    for mode, mappings in pairs(mode_mappings) do
      for keybind, mapping in pairs(mappings) do
       vim.keymap.set(mode, keybind, mapping, {})
      end
    end
  end
}

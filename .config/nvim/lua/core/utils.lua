return {
  setOptions = function(options)
    for k, v in pairs(options) do
     vim.opt[k] = v
    end
  end
}

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("herpderp", { clear = true }),
  pattern = { "*.lua" },
  callback = function ()
    vim.schedule(function ()
      local filename = vim.fn.expand("%:p")
      print("fn: "..filename)
    end)
  end
})

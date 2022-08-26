-- Autoformats the current Rust buffer being saved

local edition = "2021" -- This should be an option somehow
-- Or we can remove the --edition option and rely on there
-- being a `rustmft.toml` file in the project

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("JoxAutoFormatRustOnSave", { clear = true }),
  pattern = { "*.rs" },
  callback = function ()
    local bufName = vim.api.nvim_buf_get_name(0)
    vim.fn.jobstart({ "rustfmt", "--edition="..edition, bufName }, {
      stdout_buffer = true,
      -- on_stdout = function(_, data)
      --   local bufnr = 25;
      --   if data then
      --     vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
      --   end
      -- end,
      on_exit = function ()
        vim.api.nvim_command("e") -- reloads the current buffer to get the changes
      end
    })
  end,
})

{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    settings = {
      update_in_insert = false;
    };
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}

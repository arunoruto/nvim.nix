{
  config,
  lib,
  pkgs,
  ...
}: {
  plugins = {
    lsp = {
      servers = {
        pyright.enable = true;
        ruff.enable = true;
      };
    };
    none-ls = {
      sources = {
        diagnostics = {
          pylint.enable = true;
        };
        formatting = {
          black = {
            enable = true;
            settings = {
              extra_args = [
                "--fast"
              ];
            };
          };
          isort.enable = true;
        };
      };
    };
    dap.extensions.dap-python = {
      enable = true;
      # package = pkgs.dap-python;
    };
  };
}

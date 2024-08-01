{pkgs, ...}: {
  imports = [
    # ./auto.nix
    ./options.nix
    ./keymaps.nix
    ./plugins
  ];

  # package = pkgs.unstable.neovim-unwrapped;
  editorconfig.enable = true;
  opts.background = "dark";
  colorschemes = {
    gruvbox = {
      enable = true;
    };
    tokyonight = {
      enable = false;
      settings.style = "night";
    };
    catppuccin = {
      enable = false;
      settings.flavour = "macchiato";
    };
  };
  # extraConfigLua = ''
  #   vim.cmd("let g:netrw_liststyle = 3")
  # '';
  clipboard.providers.wl-copy.enable = true;

  performance.byteCompileLua = {
    enable = true;
    configs = true;
    initLua = true;
  };

  # home.packages = with pkgs; [
  #   unstable.vim-startuptime
  # ];
}

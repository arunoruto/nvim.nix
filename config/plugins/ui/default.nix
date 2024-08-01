{pkgs, ...}: {
  imports = [
    ./alpha.nix
    #./baleia.nix
    ./lualine.nix
    # ./noice.nix
    # ./notify.nix
  ];

  # extraPlugins = with pkgs.vimPlugins; [
  #   nui-nvim
  # ];
}

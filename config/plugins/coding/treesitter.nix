{lib, ...}: {
  plugins = {
    treesitter-context.enable = false;
    treesitter = {
      enable = lib.mkForce true;
      folding = false;
      nixvimInjections = true;
      settings = {
        ensure_installed = "all";

        highlight.disable = [
          "latex"
        ];

        indent.enable = true;
        incremental_selection = {
          enable = true;
          keymaps = {
            initSelection = "<C-space>";
            nodeIncremental = "<C-space>";
            # scopeIncremental = false;
            nodeDecremental = "<bs>";
          };
        };
      };
    };
    treesitter-textobjects = {
      enable = false;
      select = {
        enable = true;
        lookahead = true;
        keymaps = {
          "aa" = "@parameter.outer";
          "ia" = "@parameter.inner";
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "ii" = "@conditional.inner";
          "ai" = "@conditional.outer";
          "il" = "@loop.inner";
          "al" = "@loop.outer";
          "at" = "@comment.outer";
        };
      };
      move = {
        enable = true;
        gotoNextStart = {
          "]m" = "@function.outer";
          "]]" = "@class.outer";
        };
        gotoNextEnd = {
          "]M" = "@function.outer";
          "][" = "@class.outer";
        };
        gotoPreviousStart = {
          "[m" = "@function.outer";
          "[[" = "@class.outer";
        };
        gotoPreviousEnd = {
          "[M" = "@function.outer";
          "[]" = "@class.outer";
        };
      };
      swap = {
        enable = true;
        swapNext = {
          "<leader>a" = "@parameters.inner";
        };
        swapPrevious = {
          "<leader>A" = "@parameter.outer";
        };
      };
    };
  };
}

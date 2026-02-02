{ inputs, ... }:
{
  flake.nixosModules.nvf =
    { ... }:
    {
      imports = [ inputs.nvf.nixosModules.default ];

      programs.nvf = {
        enable = true;

        settings = {

          vim.visuals.indent-blankline.enable = true;
          vim.statusline.lualine.enable = true;

          # lsp's
          vim.lsp.enable = true;
          vim.autocomplete.nvim-cmp.enable = true;
          vim.languages.nix.enable = true;
          vim.languages.lua.enable = true;
          vim.languages.clang.enable = true;
          vim.languages.json.enable = true;
          vim.languages.yaml.enable = true;

          # formatters
          vim.formatter.conform-nvim.enable = true;
          vim.languages.nix.format.enable = true;
          vim.languages.lua.format.enable = true;
          vim.languages.json.format.enable = true;

          # keymaps
          vim.globals.mapleader = " ";

          # lsp's
          vim.lsp.mappings.hover = "K";
          vim.lsp.mappings.goToDefinition = "gd";
          vim.lsp.mappings.goToDeclaration = "gD";
          vim.lsp.mappings.listImplementations = "gi";
          vim.lsp.mappings.listReferences = "gr";
          vim.lsp.mappings.previousDiagnostic = "[d";
          vim.lsp.mappings.nextDiagnostic = "]d";
          vim.lsp.mappings.openDiagnosticFloat = "ld";
          vim.lsp.mappings.renameSymbol = "rn";
          vim.lsp.mappings.codeAction = "ca";

          # nvim-tree
          vim.filetree.nvimTree.enable = true;
          vim.filetree.nvimTree.mappings.toggle = "e";
          vim.filetree.nvimTree.mappings.focus = "s";

          # telescope
          vim.telescope.enable = true;
          vim.telescope.mappings.findFiles = "ff";
          vim.telescope.mappings.liveGrep = "fg";
          vim.telescope.mappings.buffers = "fb";
          vim.telescope.mappings.helpTags = "fh";

          # color theme
          vim.theme.enable = true;
          vim.theme.name = "catppuccin";
          vim.theme.style = "mocha";
        };
      };
    };
}

{
  plugins.lsp = {
    enable = true;

    servers = {
      # Config / scripting
      nil_ls.enable = true;
      lua-ls.enable = true;
      pylsp.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;

      # C
      clangd.enable = true;
     
      # Rust
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };

      # JVM
      kotlin-language-server.enable = true;
      
      # Web dev
      html.enable = true;
      cssls.enable = true;
      tsserver.enable = true;
      phpactor.enable = true;
    };

    keymaps = {
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "<leader>r" = "rename";
        "<leader>a" = "code_action";
      };

      extra = [ 
        {
          action = "<Cmd>lua require'jdtls'.organize_imports()<CR>";
          key = "<leader>o";
        }
      ];
    };
  };

  plugins.nvim-jdtls = {
    enable = true;
    data = ".nvim-jdtls";
  };
}

{ helpers, ...}: 
{
  plugins.lsp = {
    enable = true;

    servers = {
      # Config / scripting
      nil-ls.enable = true;
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
          action = "<cmd>lua require'jdtls'.organize_imports()<CR>";
          key = "<leader>o";
        }
        {
          action = "<cmd>lua require('lsp_lines').toggle()<CR>";
          key = "<leader>ll";
        }
      ];
    };
  };

  plugins.nvim-jdtls = {
    enable = true;
    data = ".nvim-jdtls";
    # Just gotta live with it ig (for now)
    # rootDir = { __raw = "require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})"; };
    # rootDir = helpers.mkRaw "require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})";
  };
  
  plugins.lsp-lines = {
    enable = true;
  };
}

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
      java-language-server.enable = true;
      kotlin-language-server.enable = true;
      
      # Web dev
      html.enable = true;
      cssls.enable = true;
      tsserver.enable = true;
      phpactor.enable = true;
    };
  };
}

{
  # plugins.luasnip = {
  #   enable = true;
  # };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        # { name = "luasnip"; }
      ];

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = ''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end
        '';
      };
    };
  };
}

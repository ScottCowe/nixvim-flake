{
  plugins.vimtex = {
    enable = true;
    settings = {
      view_method = "zathura";
    };
  }; 

  keymaps = [
    {
      action = "<key> :VimtexCompile<CR>";
      key = "<leader>vc";
    }
  ];
}

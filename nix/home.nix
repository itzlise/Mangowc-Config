{ config, pkgs, ...}:
{
  home.username = "lis";
  home.homeDirectory = "/home/lis";
  home.stateVersion = "26.05";
    
  home.pointerCursor = {
    x11.enable = true;
    gtk.enable = true;

    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 24;
  };

  programs.bash = {
    enable = true;

    shellAliases = {
      ls = "ls -la --color=auto";
      grep = "grep --color=auto";
      nrs = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
      upgradenixos = "sudo nixos-rebuild switch --flake /etc/nixos#nixos --upgrade";
    };

    bashrcExtra = ''

    PS1='\[\e[34m\]\u@\h \[\e[0m\]\[\e[32m\]\w\[\e[0m\] $ '

    if [[ $- == *i* ]]; then
    nitch
    fi
    '';
  };
}

{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  powerManagement.powertop.enable = true;
  # powerManagement.tlp.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  environment.systemPackages = with pkgs; [
    nixfmt
    bat
    acpi
    htop
    bat
    alacritty
    zsh
    grub2
    wget
    firefox
    rofi
    dmenu
    gcc
    powertop
    # tlp
    leftwm
    noto-fonts
    feh
    unzip
    killall
    git
    networkmanager
    xorg.xinit
    python3
    python39Packages.virtualenv
    acpilight
    brightnessctl
    dunst
    sox
    xorg.xf86videointel
    pavucontrol
    xfce.thunar
    freshfetch
    lxappearance
    picom-next
    arandr
    android-studio
    vscode
    nerdfonts
    zoom-us
    flameshot
    chromium
    gnome.gedit
    imagemagick
    tmux
    file
    telegram-cli
    tdesktop

    jemalloc # for lvim
    xclip
    sumneko-lua-language-server
    neovide
    devour
    xoscope
    audacity
    thefuck

    rustup
    rust-analyzer
    #cargo
    #rustc
    #rust-analyzer
    cmake
    gnumake
    bintools
  ];

}


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
    # System
    grub2
    powertop
    tlp
    networkmanager
    xorg.xinit
    acpilight
    xorg.xf86videointel

    # Cli
    thefuck
    devour
    bat
    feh
    acpi
    htop
    bat
    zsh
    wget
    gcc
    unzip
    killall
    brightnessctl
    sox
    imagemagick
    tmux
    file
    telegram-cli
    freshfetch

    # Programming
    nixfmt
    git
    python3
    python39Packages.virtualenv
    xclip
    sumneko-lua-language-server
    neovide
    android-studio
    rustup
    rust-analyzer
    cmake
    gnumake
    bintools

    # GUI
    dmenu
    alacritty
    firefox
    leftwm
    noto-fonts
    rofi
    dunst
    pavucontrol
    xfce.thunar
    lxappearance
    picom-next
    arandr
    nerdfonts
    zoom-us
    flameshot
    chromium
    gnome.gedit
    tdesktop
    xoscope
    audacity

  ];

}


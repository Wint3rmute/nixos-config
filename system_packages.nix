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
    wireguard-tools

    # Cli
    ffmpeg
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
    zip
    killall
    brightnessctl
    sox
    imagemagick
    tmux
    file
    telegram-cli
    freshfetch
    nmap
    entr
    lilypond
    timidity

    # Programming
    nixfmt
    git
    python3
    python39Packages.virtualenv
    xclip
    sumneko-lua-language-server
    neovide
    rustup
    rust-analyzer
    cmake
    gnumake
    bintools
    nodejs
    poetry
    lua
    zola

    # Music
    orca-c
    soundfont-ydp-grand
    qsynth
    pmidi

    # Gui
    simplescreenrecorder
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
    zoom-us
    flameshot
    chromium
    gnome.gedit
    tdesktop
    xoscope
    audacity
    gimp
    discord
    zathura
    monero-gui
    keepass

  ];

}


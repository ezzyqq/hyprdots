# Welcome!
This is my minimalistic Hyprland dotfiles!

---

# Screenshots
![Desktop 1](screenshots/1.png)
![Desktop 2](screenshots/2.png)

![Notifications](screenshots/3.png)
![Clipboard](screenshots/4.png)

---

# Binds
Alt+Shift = Switch input language

Super+Space = Toggle floating state of focused window

Super+Tab = Focus next window

Super+Shift+Tab = Focus previous window

Super+R = Open wofi drun

Super+V = Open Clipboard History menu

Super+N = Open Notification History menu

Super+T = Open preffered terminal

Super+B = Open preffered browser

Super+Enter = Swap focused window with master/stacked

Super+H = Resize focused window right by 25%

Super+L = Resize focused window left by 25%

Super+J = Resize focused window down by 25%

Super+K = Resize focused window up by 25%

Super+Left = Focus left window

Super+Right = Focus right window

Super+Down = Focus lower window

Super+Up = Focus higher window

---

# Issues
### Installation script
The installation script works ONLY on Arch Linux

### Waybar
If your laptop has a battery, you'll to edit the waybar configuration and uncomment the '"custom/separator", "battery", ' part, just remove the '\*/' and '\/*' part

---

# How to install
git clone https://github.com/ezzyqq/hyprdots

cd hyprdots

chmod +x install.sh

./INSTALL.sh   # read about Issues of this dotfiles first, then change capital letters to lowercase

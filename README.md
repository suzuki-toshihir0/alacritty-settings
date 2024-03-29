# alacritty-settings (for WSL2 env)

### Target Version
- `Alacritty` (https://github.com/alacritty/alacritty.git) @ v0.13.1
- Alacritty is intended to be installed on Windows and to be used to launch WSL2.

### How to Use
- Locate `alacritty/` at `%APPDATA%` (= `%USERPROFILE%/AppData/Roaming`)
  - You can simply complete this by executing `locate.ps1` by PowerShell.

```
.\locate.ps1
```

- FYI: See official guide for configuration: https://github.com/alacritty/alacritty?tab=readme-ov-file#windows
- FYI: TOML contents guideline for Alacritty is https://alacritty.org/config-alacritty.html

### Font Guide
- `HackGen Console NF` (https://github.com/yuru7/HackGen) is used as Powerline font.
- Install the fonts for your Windows from the release of HackGen repo.
  - There is a problem with fonts not being recognized by Windows.
  - You may install fonts for ALL USERS (FYI: See https://github.com/alacritty/alacritty/issues/6477#issuecomment-1309413511 ).

> [!NOTE]
> Please install the HackGen Console **NF**, which supports Nerd Fonts, in your WSL2 Linux environment to use Nerd Fonts.

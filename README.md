# Plasma-Overdose

![Preview](https://images.pling.com/img/00/00/64/63/03/1699532/screenshot-20220205-124157.png)

Plasma-Overdose is a KDE theme inspired by the popular game *Needy Girl Overdose/Needy Streamer
Overload*.

Join our discord server! <https://discord.gg/xvWEt4NJcx>


## What we offer

Plasma-specific:

* `look-and-feel/`: Global Theme
  * [X] Splash Screen
* `desktoptheme/`: Plasma Style
  * [X] Color Scheme
* `aurorae/`: Window Decorations
* `wallpapers/`: Wallpaper

Should available across DEs:

* `sounds/`: Sound Theme
* `cursors/`: Cursor Theme

## Todos

- Renew the code
- A Kvantum theme, for adjusting Widget Style.
- (Maybe) An icon theme.
- (Maybe) Lock screen theme.

## Font

Using a pixelated font like Public Pixel enhances the experience of using the theme.

> The game uses the [zpix](https://github.com/SolidZORO/zpix-pixel-font/) font. You can download it from linked repository and install it manually.

## Download

To download the theme you need to clone the repository:

```sh
git clone https://codeberg.org/Notify-ctrl/Plasma-Overdose
cd Plasma-Overdose/
```

## Install

Auto install script:

```sh
sh -c "$(curl -fsSL https://codeberg.org/notify-ctrl/Plasma-Overdose/raw/branch/master/install.sh)"
```

### Manual Install

To install the Aurorae theme run
```sh
mkdir -p ~/.local/share/aurorae/themes
cp -r aurorae/Plasma-Overdose* ~/.local/share/aurorae/themes/
```

To install the cursor theme run
```sh
mkdir -p ~/.icons/CursorsOverdose
cp -r cursors/* ~/.icons/CursorsOverdose/
```

To install the Color Scheme run
```sh
mkdir -p ~/.local/share/color-schemes
cp plasma/desktoptheme/Plasma-Overdose/colors ~/.local/share/color-schemes/Plasma-Overdose.colors
```

To install the Desktop Theme run
```sh
mkdir -p ~/.local/share/plasma/desktoptheme
cp -r plasma/desktoptheme/Plasma-Overdose ~/.local/share/plasma/desktoptheme/
```

To install the Global Theme run
```sh
kpackagetool6 -t Plasma/LookAndFeel -i plasma/look-and-feel/Plasma-Overdose
```

To install the sound theme run
```sh
mkdir -p ~/.local/share/sounds/PlasmaOverdose
cp -r sounds/* ~/.local/share/sounds/PlasmaOverdose/
```

To install the wallpaper run
```sh
mkdir -p ~/.local/share/wallpapers/Plasma-Overdose
cp -r wallpapers/Plasma-Overdose/* ~/.local/share/wallpapers/Plasma-Overdose/
```

After completing all the steps, you need to manually set the theme and its components in:

> System Settings > Colors & Themes

### Feel free to contribute to this theme!

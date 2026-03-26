# Plasma-Overdose

![Preview](https://images.pling.com/img/00/00/64/63/03/1699532/screenshot-20220205-124157.png)

Plasma-Overdose is a KDE theme inspired by the popular game *Needy Girl Overdose/Needy Streamer
Overload*.

Join our discord server! <https://discord.gg/xvWEt4NJcx>


## What we offer
* Aurorae Theme (Window decorations)
* Color Scheme
* Cursor Theme
* Global Theme
* Splash Screen

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
git clone https://github.com/Notify-ctrl/Plasma-Overdose
cd Plasma-Overdose/
```

## Install

Auto install script:

```sh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Notify-ctrl/Plasma-Overdose/refs/heads/main/install.sh)"
```

To install the sounds theme run
```sh
mkdir -p ~/.local/share/aurorae/themes
cp -r "aurorae/"* ~/.local/share/aurorae/themes/
```

To install the Aurorae theme run
```sh
cp -r aurorae/* ~/.local/share/aurorae/themes
```
To install the cursor theme run
```sh
cp -r cursors ~/.local/share/icons/CursorsOverdose/
```
To install the color scheme run
```sh
cp colorschemes/* ~/.local/share/color-schemes/
```
To install sounds run
```sh
cp -r sounds/ ~/.local/share/sounds/Plasma-Overdose
```
To install the global theme run
```sh
cd plasma/look-and-feel/
kpackagetool6 -t Plasma/LookAndFeel -i Plasma-Overdose
```

After completing all the steps, you need to manually set the theme and it's components in:

> System Settings > Colors & Themes

### Feel free to contribute to this theme!

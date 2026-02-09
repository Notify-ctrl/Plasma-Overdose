# Plasma-Overdose

![Preview](https://images.pling.com/img/00/00/64/63/03/1699532/screenshot-20220205-124157.png)

Plasma-Overdose is a KDE theme inspired by the popular game *Needy Girl Overdose/Needy Streamer
Overload*.


## What we offer
* Aurorae Theme (Window decorations)
* Color Scheme
* Cursor Theme
* Global Theme
* Splash Screen

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
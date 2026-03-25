#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' 

echo -e "${CYAN}"
echo "⠀⠀⠀⠀⠀⠀⣰⢻⡟⣽⣿⣿⡿⠋⢉⣿⡿⠃⢀⡜⠀⠀⢀⣼⠏⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣻⣿⣿⣾⡟⢹⠉⠀⠀⣾⣿⣇⣾⣿⣿⣿
⣳⠀⠀⠀⠀⢰⡟⣾⢰⣿⡿⠉⠀⢀⣾⢹⣁⠀⣼⡇⠰⣾⣏⡿⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡿⣿⠉⠻⠿⣿⠁⡞⠀⠀⢸⢿⣿⣿⣿⣿⡿⣿
⣿⠀⠀⠀⠀⣿⢠⣿⢻⡏⠀⠀⠀⣸⢿⣿⠼⣿⡟⢟⣿⠋⢻⣇⢠⡾⠀⠀⠀⠀⠀⠀⠈⠛⠉⠀⠻⡆⠀⠀⢸⠀⡧⠀⠀⢸⣿⣿⣿⠟⠉⠓⣾
⠋⠀⠀⠀⢠⣾⠛⠟⢸⠀⠀⠀⠀⡏⡏⡇⠀⢸⣇⣿⣥⠀⠀⣟⣾⡁⠀⢠⠀⠀⠀⠀⠀⠀⢀⣶⣶⣇⠀⠀⣸⠀⡇⠀⠀⣼⠉⠉⢱⣆⠀⠀⢹
⠀⠀⠀⠀⠻⣿⡄⠀⢸⡷⠀⠀⢸⡟⠁⡇⠀⢸⣿⡿⣿⣿⣷⡏⣿⢩⣒⣺⠀⠀⠀⠀⠀⠀⢸⣿⣻⣿⣦⣴⣿⡆⢹⠀⠀⣿⠀⠀⠀⠻⡄⠀⡜
⠀⠀⠀⠀⠀⠘⣷⠀⢸⣧⣤⠀⢸⢻⠀⡇⢴⣸⠛⣇⣿⣿⣿⣿⣿⡈⠛⣹⡆⢲⣅⣄⡀⠀⣸⣷⣺⣿⣿⠷⣿⡍⢹⡃⠈⢹⠀⠀⠀⠀⢻⣰⠃
⣽⣷⠀⠀⠀⠀⣿⣆⠀⢻⡁⠀⢸⢸⠀⣧⠸⣿⣇⢸⣿⣿⣿⠀⠻⣷⡀⠀⣷⠀⠈⣿⣡⠍⢻⣿⠖⣿⠁⠀⠘⣧⣘⣧⡀⠚⣇⠀⠀⢀⢸⡏⠀
⣿⠃⠀⠀⠀⠀⢻⣿⢷⡈⢷⡀⢸⢸⠀⢸⣰⣿⠻⠶⠈⠉⠁⠀⠀⠈⠙⠛⠛⢳⣤⣿⣿⣀⣼⣿⣄⣠⣦⣀⡀⠹⣯⠹⣇⠀⢻⡆⠠⢋⣾⠃⠀
⡞⠀⠀⠀⠀⠀⠸⣿⡄⠹⣄⢷⣼⢸⡗⠘⢿⢹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣡⣿⣿⣿⣿⣽⠛⢯⡈⠛⠉⡁⣸⣆⠹⣇⠈⢿⣠⡾⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢻⣽⣄⢉⡷⣿⡜⣯⢀⣾⠘⣧⠀⠀⠀⡴⠀⠀⠀⠀⠀⠀⠠⣿⣿⠿⣿⣿⣿⠀⠀⠻⣦⣤⡾⠛⠙⢧⡸⣦⡈⢿⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣤⠛⡇⠹⡧⢿⡆⠙⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⠿⠿⠟⡇⠀⠀⣼⣟⡽⠀⠀⠀⣾⣿⣌⠃⠈⢳⡄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⠟⣩⠛⠻⢷⣿⡆⢳⣸⡟⣦⡈⢷⢺⣶⣄⠀⠀⠀⠀⠀⠀⢀⣠⣬⣶⣷⡟⠀⠀⢀⡿⠃⠈⠉⠀⠀⠈⠉⠻⢦⡀⠈⢷
⠀⠀⠀⠀⠀⢀⡼⢣⡾⠃⠀⠀⠀⠈⢻⡞⢿⣷⡈⢳⣬⣿⢳⣼⡷⠦⠀⠀⠀⠀⠀⢀⣠⣬⣶⣷⡟⠀⠀⢀⡿⠃⠈⠉⠀⠀⠈⠉⠻⢦⡀⠈⢷
⠀⠀⠀⠀⣴⠏⣴⠋⠀⠀⣀⠀⠀⠀⠀⢻⣄⠹⣿⣶⠿⣿⣿⣏⣀⣀⣀⣠⣤⠴⠞⠛⠉⣠⣿⠏⠀⠀⣠⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡄⠀
⠀⠀⢠⡾⣡⡟⣥⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⣯⣼⠹⠛⠿⣷⣾⣷⠋⠀⢠⣀⣠⣾⣿⠅⠀⢀⣴⣿⣿⣷⣽⡳⣄⡀⠀⠀⠀⢀⣴⣿⣿⡽
⢀⡴⢋⡶⢻⣿⣷⡼⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⠉⡇⠀⠀⢀⣤⡿⢿⠀⠀⠈⠙⣛⠿⣃⣤⣶⠿⠛⠋⠙⠛⢿⣿⣿⣿⣦⣄⢀⣾⣿⡿⠁⠹
⠞⣱⠟⣠⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢼⠀⡇⢴⠞⢹⡿⠀⢈⡀⠀⣠⡶⠏⣘⣿⡿⠏⡄⠀⠀⠀⢈⣴⠽⢿⣿⡟⢛⡛⢿⣿⡇⠀⠀
⡼⠁⢰⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣸⠀⡇⠀⢧⣿⣇⠀⠙⠻⠿⠿⠚⠉⢩⡟⠁⠀⠀⢀⣀⠔⣋⣤⣖⣻⣭⣽⣿⣿⣿⣿⣽⣦⡀"
echo -e "${NC}"

echo -e "${YELLOW}Checking dependencies...${NC}"

if ! command -v git &> /dev/null; then
    echo -e "${RED}Error: git is not installed. Please install git first.${NC}"
    exit 1
fi

if ! command -v kpackagetool6 &> /dev/null; then
    echo -e "${RED}Error: kpackagetool6 is not installed. Please install KDE Plasma packages first.${NC}"
    exit 1
fi


echo -e "${GREEN}All dependencies are installed. Proceeding with installation...${NC}"

echo -e "${BLUE}Cloning repository...${NC}"
git clone https://github.com/Notify-ctrl/Plasma-Overdose.git

cd Plasma-Overdose
SCRIPT_DIR="$(pwd)"

echo -e "${BLUE}Installing Aurorae theme...${NC}"
mkdir -p ~/.local/share/aurorae/themes
cp -r "$SCRIPT_DIR/aurorae/"* ~/.local/share/aurorae/themes/

echo -e "${BLUE}Installing cursor theme...${NC}"
mkdir -p ~/.local/share/icons/CursorsOverdose
cp -r "$SCRIPT_DIR/cursors/"* ~/.local/share/icons/CursorsOverdose/

echo -e "${BLUE}Installing colorscheme...${NC}"
mkdir -p ~/.local/share/color-schemes
cp -r "$SCRIPT_DIR/colorschemes/"* ~/.local/share/color-schemes/

echo -e "${BLUE}Installing Global Theme...${NC}"
kpackagetool6 -t Plasma/LookAndFeel -i "$SCRIPT_DIR/plasma/look-and-feel/Plasma-Overdose"

echo -e "${BLUE}Installing sound theme...${NC}"
mkdir -p ~/.local/share/sounds/PlasmaOverdose
cp -r "$SCRIPT_DIR/sounds/"* ~/.local/share/sounds/PlasmaOverdose/

echo -e "${BLUE}Installing zpix font...${NC}"
mkdir -p ~/.local/share/fonts
wget -O ~/.local/share/fonts/zpix.ttf https://github.com/SolidZORO/zpix-pixel-font/releases/download/v3.1.11/zpix.ttf
fc-cache -fv

echo ""
echo -e "${GREEN}Installation complete!${NC}"
echo -e "${YELLOW}Please select the Plasma-Overdose theme in System Settings > Appearance > Global Theme${NC}"

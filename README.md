<p align="center">
    <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Archlinux-icon-crystal-64.svg">
</p>

<h1 align="center">MyArchConfig-btw</h1>
<h4 align="center">
  This repository is simply a backup in case I have to get my hand dirty again but could also be a great example for those who just started using Arch-Linux or would prefer to utilize my setup rather than configuring their own from scratch.
(Although I highly suggest you do it for the joy of accomplishment as well as collecting some experience for your career)
</h4>

## Preview
Being a DIY(do it yourself) type of OS, Arch-Linux lacks most of the components that you would expect from a normal desktop environment but prove itself as a fully customizable system architecture where you choose what you want and suffer the cosequences of your decisions. Still, if you are willing to put in the hours, high chances are that you going to be able to convert a simple black terminal into a fuily functional workspace as such:

![Failed to load image](https://i.imgur.com/bWP5Qbe.png) 

![Failed to load image](https://i.imgur.com/ShW5piM.png)

## Info
- Desktop: HP-Probook-400 G7
- OS: Arch-Linux
- Window-manager: Awesome
- Terminal: Alacritty
- Xorg: X11

## Requirement
- [Awesome-copycats-themes](https://github.com/lcpz/awesome-copycats)
- [Alcritty](https://wiki.archlinux.org/title/Alacritty)
- [Ranger](https://wiki.archlinux.org/title/ranger)
  - [Nerd-fonts](https://github.com/ryanoasis/nerd-fonts)(mine is [SCR](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro) and [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack))
  - [ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons)
  - [ueberzug](https://github.com/seebye/ueberzug)
- [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
  - Plugins: (Delete the init.vim file inside nvim folder if you don't want to install all the plugins)
    - [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
    - SirVer/ultisnips
    - honza/vim-snippets
    - preservim/nerdtree
    - folke/lsp-colors.nvim
    - hoob3rt/lualine.nvim
    - kyazdani42/nvim-web-devicons
    - ryanoasis/vim-devicons
 
- [git](https://wiki.archlinux.org/title/git) 
- [git](https://wiki.archlinux.org/title/git)
- [Picom](https://wiki.archlinux.org/title/Picom)
- [Nitrogen](https://wiki.archlinux.org/title/Nitrogen)
- [Flameshot](https://github.com/flameshot-org/flameshot)
- [Dconf](https://archlinux.org/packages/extra/x86_64/dconf/)
- [Gtk](https://wiki.archlinux.org/title/GTK)(I use 3.0 personally)
- [dmenu](https://wiki.archlinux.org/title/dmenu)

---
**NOTE** :memo:

Most of the packages and dependencies listed above can all be installed via pacman as well as other Linux-based package managers. Keep in mind that this is basically my personal setup with additional modifications and changes to the keybinding, settings that could todally be redesigned based on your need and interest. A manual of how to use specific apps can also be viewed here.

---

## Installation
    git clone https://github.com/DragMaid/MyArchConfig-btw ~/.config/

    
## Common issues :warning:
  - Pacman cannot find specific packages (Solution: disabling ipv6 seems to have worked for me | [reference](https://www.alpha-epsilon.de/linux/2017/07/26/disabling-ipv6-on-arch-linux-and-networkmanager/))
  - Unable to select nerd fonts for alacritty (Solution: Check if you downloaded the fonts in the correct directory (ususally in this path ~/.local/share/fonts/) or consider check the wiki [here](https://wiki.archlinux.org/title/fonts), also remember to get available valid fonts' name using the "fc-list" command) 
  - Unable to change Awesome gap/margin/padding (Solution: locate to your rc.lua within ~/.config/awesome folder and edit the useless_gap near the end of the file to what value you like)
  - Unable to connect to wifi (If you somehow couldn't connect to the wifi and are reading this respository through ethernet cables, consider revisiting your [network-configuration](https://wiki.archlinux.org/title/installation_guide#Ntwork_configuration) and make sure you have a network-manager([NetworkManager](https://wiki.archlinux.org/title/NetworkManager) as my recommendation) properly installed)  

<br />
<br />

<h2 align="center">:hearts::hearts::hearts: Good Luck :hearts::hearts::hearts:</h2>


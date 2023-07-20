read -s -p "Enter Password for sudo: " sudoPW

package=$(<dependencies.txt)
echo $sudoPW | sudo pacman -Syu --noconfirm
yay -S $package --noconfirm

# Instlalling oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo $sudoPW | chsh -s /bin/zsh 

# Copying home-directory configs
cp -r $(pwd)/home-config/. ~/

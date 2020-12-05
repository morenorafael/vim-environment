# vim-environment

## Instalación de neovim

```bash
sudo apt install neovim
sudo apt install python-neovim
sudo apt install python3-neovim
```

## Configuración del entorno

### Instalamos el gestor de plugins de neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

##### [Referencia](https://github.com/junegunn/vim-plug)

### Creamos los enlaces simbolicos

```bash
ln -s ~/.config/vim-environment/init.vim ~/.config/nvim/init.vim
ln -s ~/.config/vim-environment/.vimrc ~/.vimrc
ln -s ~/.config/vim-environment/.vim ~/.vim
```

### Instalamos los plugins

ingresamos a editar el archivo `~/.config/vim-environment/.vimrc`

```bash
vim ~/.config/vim-environment/.vimrc
```

Escribimos: `:PlugInstall` y presionamos `Enter`
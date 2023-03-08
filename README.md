# NEOVIM DOTFILE
This repository contains my neovim configuration. 

It includes LSP support, multiple LuaSnip snippets and more plugins.

## Installation
To directly install the plugin, you can execute the install script:
This script will simply make a backup of your previous configuration (if it 
exists) and then a symbolic link from this folder to the neovim configuration
folder. 

To execute it, you will probably first need to give it the necessary permissions. 
For that, simply execute `chmod +x install.sh`.

The first time you open `nvim` there will probably be a lot of errors. Do not worry,
skip them and Packer will install the plugins so the next time all the errors 
will be gone.

### Recommended dependencies
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation). To use all the
features for Telescope.
- [inkscape](https://inkscape.org/). To draw the Latex diagrams.
- [inkscape-figures](https://github.com/gillescastel/inkscape-figures). For the 
integration with inkscape.
- [lazygit](https://github.com/jesseduffield/lazygit). Integration with git.

  Order in which programs should be installed on a clean Ubuntu machine
  
  1. `sudo apt install git curl xclip` (xclip for clipboard access in neovim, etc.)
  2. Follow instructions to clone vim and build it. [link](https://www.vim.org/git.php). `./configure --with-features=huge && make && sudo make install` (otherwise it misses crucial features like clipboard etc.)
  3. Install [Neovim latest release](https://github.com/neovim/neovim/releases/latest) via appimage
  4. `python3 -m pip install --user --upgrade pynvim neovim-remote` ([remote](https://github.com/mhinz/neovim-remote) - useful for latex setup)
  5. Zsh:
      - `apt install zsh`
      - `sudo usermod -s /usr/bin/zsh $(whoami)`
      - now restart pc
      - `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
      - obviously don't forget to copy over previous `.zshrc` file
  6. Install messaging apps like tdesktop discord teams

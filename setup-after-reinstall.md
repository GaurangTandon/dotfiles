  Order in which programs should be installed on a clean Ubuntu machine
  
  1. `sudo apt install git curl xclip python3-tk uget` (xclip for clipboard access in neovim, etc.. python3-tk for showing matplotlib figures, ugetdm it's easier to get from apt then build from source)
      - also run: `sudo apt install libncurses5-dev libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python3-dev ruby-dev` required for compiling full feature vim
  2. Follow instructions to clone vim and build it. [link](https://www.vim.org/git.php). 
      - need to follow specific compilation process otherwise vim lacks crucial features
      - try follow this "https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source" but it didn't really work for me well. Also see: https://stackoverflow.com/questions/11416069, https://superuser.com/questions/623040
      - lastly run `sudo make && sudo make install`
  3. Install [Neovim latest release](https://github.com/neovim/neovim/releases/latest) via appimage
  4. `python3 -m pip install --user --upgrade pynvim neovim-remote` ([remote](https://github.com/mhinz/neovim-remote) - useful for latex setup)
  5. Zsh:
      - `apt install zsh`
      - `sudo usermod -s /usr/bin/zsh $(whoami)`
      - now restart pc
      - `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
      - obviously don't forget to copy over previous `.zshrc` file
  6. Install messaging apps like tdesktop discord teams
  7. Guake:
      - `apt install guake`
      - correct shortcut for toggle in preferences to Alt-/, and also setup accessing n-th tab using alt-n.
  8. Get latest release of [pandoc](https://github.com/jgm/pandoc/releases/latest) and [tex](https://www.tug.org/texlive/acquire-netinstall.html) (warning: latter takes roughly 1.5hrs on fast internet)
  9. `python3 -m pip install pipx` and then `pipx install virtualenv` ([docs](https://virtualenv.pypa.io/en/stable/installation.html)) and download relevant modules (`torch`, `torchtext`, `tensorflow`, etc.)
  10. To download private repos, will need to setup ssh keys on github, and while at that, also setup gpg keys:
      1. `gnupg` is already present in Focal repository at version 2.2.19. However, if you build from source you get 2.2.21. I don't think that's a significant upgrade, but keep that in mind. (To build from srouce, go [here](https://www.gnupg.org/download/) and download gnupg utils and all its depenency tarballs. Verify download integrity against sha1's listed [here](https://www.gnupg.org/download/integrity_check.html), unzip and install)
      2. Goto [security/keys](https://github.com/settings/keys) to add the ssh ang gpg keys.
      3. Run `ssh-keygen -t rsa -b 4096 -C "gaurang.tandon@students.iiit.ac.in"` to generate the ssh key and add a strong passphrase. Upload the public file to github. Then run `eval "$(ssh-agent -s)"` and `ssh-add ~/.ssh/<file-name>` to add the public key to your local ssh agent. ([full tutorial](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
      4. Run `gpg --full-generate-key`. Let default for RSA/DSA, but in key size enter 4096. Rest go ahead and enter a secure passphrase. Your key should be ready. Note your key id by running `gpg --list-keys`. Export it in ascii armor format using `gpg --armor --export <KEY>`. Copy it into the github page and you should be done. ([tutorial](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)) (to revoke a bad key [follow this](https://superuser.com/questions/1526283/how-to-revoke-a-gpg-key-and-upload-in-gpg-server))
      5. Run `git config --global user.signingkey <KEY>` to add the signing information to commits. I have not added the gpg key to bash, although you can do that (`export GPG_TTY=$(tty)` to .bash_profile, I don't know what this does though)
      6. To sign every commit on the pc, run `git config --global commit.gpgsign true`. To sign just one commit, add the `-S` flag to `git commit`.
      7. That's all!
  11. Setup Java: `sudo apt install openjdk-8-jdk` - this should install required stuff, check with `java -version` and `javac -version` (respectively) ([tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-20-04) gives `default-jre default-jdk` which is actually correct but fails with this [error](https://stackoverflow.com/questions/55436585/))

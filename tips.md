# Tips

These are fixes that take days to find:

1.  Disabling conda environment: https://askubuntu.com/a/1113179. So your condarc should look like:

        auto_update_conda: true
        changeps1: true
        auto_activate_base: false

    And this will only show activate base environments but not base, because base does not get auto-activated.

2.  Removing active user and hostname from zsh: put DEFAULT_USER="gt" in `prompt_context` in your `agnoster.zsh-theme`.
3. Neovim clipboard copy paste won't work if you don't install `xclip` in Ubuntu first.

# Tips

These are fixes that take days to find:

1.  Disabling conda environment: https://askubuntu.com/a/1113179. So your condarc should look like:

        auto_update_conda: true
        changeps1: true
        auto_activate_base: false

    And this will only show activate base environments but not base, because base does not get auto-activated.

2. Removing active user and hostname from zsh: put DEFAULT_USER="gt" in `prompt_context` in your `agnoster.zsh-theme`. (or just comment the relevant promopt showing lines in agnoster.zsh-theme)
3. To load file in Google Colab, your google drive should be visible on the left sidebar. The file you need, you should add a shortcut to it inside "my drive". For that, you can goto "shared with me" section of google drive and right click-> "add short cut in my drive". After that, goto colab, from sidebar locate that file and right click->"copy path". Then, inside colab code cell do: `content = pd.read_json("drive/My Drive/person.json", lines=True); content.head()` (notice the path has no leading `content/`). That's all.

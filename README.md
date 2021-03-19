# channel-42's Dotfiles ![](https://img.shields.io/badge/Branch-Tower-purple.svg) [![](https://img.shields.io/badge/Branch-Laptop-green.svg)](https://github.com/channel-42/dotfiles/tree/master) ![](https://img.shields.io/badge/License-MIT-orange.svg) ![](https://img.shields.io/badge/Distro-Arch-blue.svg)

![alt text](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/screenshot1.png "Screenshot of my desktop")

These are the dotfiles of my main Arch-Desktop. Should you have any question about this setup, you can reach out to me via mail (see my profile).

# contents
1. [about this setup](#about-this-setup)     
2. [theme](#theme)       
3. [nvim](#vim)       
4. [firefox](#firefox)      


# about this setup

This is my main Arch desktop setup. For my gentoo system - my more frequently updated system - see [this](https://github.com/channel-42/gentoo) repo.

Here's a general overview of the software I use in this setup:

| Category | Name |
|:--------:|:----:|
|wm| bspwm (rounded corners fork)|
|bar|polybar|
|terminal|kitty|
|shell|zsh with oh-my-zsh|
|compositor|picom|
|text editor|nvim|
|file browser|ranger|
|browser|firexfox|
|music player|ncmpcpp|
|pdf-viewer|zathura|
|launcher|rofi|

# theme
The main theme of this setup is solarized dark.

# nvim

![](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/vim1.png)

I switched from vim to nvim a while ago. The vim configs are still present in this repo, but are not being updated.

The nvim configs are very similar to the one's of my gentoo setup. 

From my gentoo-box readme:
>My nvim config includes the following:
>- lsp-completion
>- lsp-syntax checking
>- enhanced lsp-syntax highlighting (treesitter)
>- snippets
>- easier nav-bindings for jumping buffers
>- some visual enhancements 
>
>If you want to learn more about my nvim setup, check out my [blog post](https://blog.devls.de/nvim-setup/nvim-setup.html).


# firefox

![alt text](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/firefox.png "Screenshot of Firefox")

I use Firefox with a custom stylesheet.

For tabs I use Tree Style Tab.

For my start/new-tab-page I use the Nighttab extension.

To setup custom stylesheets the following settings need to be changed;
- set the theme to dark in Firefox's settings
- enable custom stylesheets by setting `toolkit.legacyUserProfileCustomizations.stylesheets` to `true` in about:config
- move the chrome folder to `~.mozilla/firefox/<user-profile>/`
- restart Firefox for the changes to apply



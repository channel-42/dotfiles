# Channel_42's Dotfiles ![](https://img.shields.io/badge/Branch-Tower-purple.svg) [![](https://img.shields.io/badge/Branch-Laptop-green.svg)](https://github.com/channel-42/dotfiles/tree/master) ![](https://img.shields.io/badge/License-MIT-orange.svg) ![](https://img.shields.io/badge/Distro-Arch-blue.svg)

![alt text](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/screenshot1.png "Screenshot of my desktop")

These are the dotfiles of my main Arch-Tower. Some of the files may be **very** messy, but I'm working on cleaning everything up. If you have any questions about anything, you can reach out to me on reddit [u/Channel_42](https://www.reddit.com/user/Channel_42).

# Contents
1. [About Me](#about-me)     
2. [General Information](#general-information)      
3. [Themes and Colorschemes](#themes-and-colorschemes)       
4. [Vim](#vim)       
5. [Firefox](#firefox)      


# About me

<img align="left" border="0" padding="4" src="https://github.com/channel-42/dotfiles/blob/master/Pictures/arch_senko.png" width="60">
I'm a first semester automotive comp.sci. and mechatronics student from Germany whose also doing an apprenticeship in the field of automotive mechatronics.   
I started using Linux in September of 2019 and have been enjoying the amount of flexibilty the platform offers. My main distro of choice is Arch-Linux, which I run on both my laptop and my tower.   

# General Information

Here's a basic of most of the software I use in my setup:

| Category | Name |
|:--------:|:----:|
|WM| bspwm (rounded corners fork)|
|Bar|Polybar|
|Terminal|Urxvt|
|Shell|zsh with oh-my-zsh|
|Compositor|compton (tryone fork)|
|Text Editor|Vim (with vundle)|
|File Browser|Ranger|
|Browser|Firexfox|
|Music Player|ncmpcpp|
|PDF-Viewer|Zathura|
|Photo-Development|Darktable|
|Wallpaper setter|feh|
|Launcher|Rofi|

# Themes and Colorschemes

I usually modify premade themes and colorschemes to fit my setup/taste.

| Programme | Theme Name | Modified? |
|:--------:|:----:|:-------:|
|Terminal|[cloud](http://terminal.sexy/#AAAA____Iign1ajjnHXdmJiuZUqWYlVmqdHf5uvlXW90zXScY7CwwMDdV4a8PzRChJ2i2dbP)|yes|
|Vim|[shades of purple](https://github.com/Rigellute/shades-of-purple.vim)|no|
|Rofi|[materia](https://github.com/DefunctLizard/materia-rofi-theme/blob/master/README.md)|no|
|Firefox|[minimal functional fox](https:/a/github.com/turing753/minimal-functional-fox)|yes|
|oh-my-zsh|[lambda-mod](https://github.com/halfo/lambda-mod-zsh-theme)|yes|

# Vim 

![](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/vim1.png)

Vim is my goto text editor and over time I've added more and more features. Functionally it has all the features I need from an dev IDE, with the main difference being way less bloat than your typical IDE.

To make the most of my "selfmade IDE" I added some bindigs to execute scripts or launch plugins:

| Binding | Funtion | 
|:--------:|:----:|
|Shift+s|compile current file|
|F4| open compiled file|
|F5| toggle NerdTree|
|F8| toggle tagbar|
|Ctrl+f| toggle focus mode|
|Space| toggle fold|
|Ctrl+space| create docstring|
|Shift+c| toggle syntax checking|


![](https://github.com/channel-42/dotfiles/blob/tower_branch/.resources/vim2.png)

> This the "focus mode". It even has hex color previews  

# Firefox

![alt text](https://github.com/channel-42/dotfiles/blob/master/.resources/screenshot2.png "Screenshot of Firefox")

I use Firefox with a custom stylesheet (a pretty neat feature I didn't even know existed a couple of months ago). I modified a premade stylesheet from a fellowe r/unixporn member (see the themes section).

For my start/new-tab-page I use the Nighttab extension.

To setup custom stylesheets the following settings need to be changed;
- set the theme to dark in Firefox's settings
- enable custom stylesheets by setting `toolkit.legacyUserProfileCustomizations.stylesheets` to `true` in about:config
- move the chrome folder to `~.mozilla/firefox/<user-profile>/`
- restart Firefox for the changes to apply


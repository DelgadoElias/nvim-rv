# AstroNvim Template

This is a template based on astronvim v4+, trying to add some plugins and features to work properly with web frontend stacks.

Some features are:
* Angular prompt schematics.
* Oil File editor
* Surround plugin
* Atac plugin

## TODO
|Task|Status|Description|
|-|-|-|
|Add NestJS schematics|-|For better developer experience|
|Update linux installation script|Working on it|Actually is outdated|
|Generate windows installation script|-|In future releases|

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/DelgadoElias/nvim-rv ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

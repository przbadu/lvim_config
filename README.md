## Neovim configuration

These configuration are extended configurations on top of [LunarVim](https://www.lunarvim.org/docs/installation).

## Prerequisites

Check [LunarVim#Prerequisites](https://www.lunarvim.org/docs/installation#prerequisites) for more information

## Installation

- Install [LunarVim#installation](https://www.lunarvim.org/docs/installation)

```sh
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```

- Clone this configuration inside `~/.config/lvim`

```sh
mv ~/.config/lvim ~/.config/lvim-old
git clone git@github.com:przbadu/lvim_config ~/.config/lvim
```

## Debugger

- Install `codelldb` to debug rust codes, follow:
- Open a lunarvim editor, then type `:Mason` to open Mason
- from the `DAP` tab, search and install `codelldb`

With that, you now can open a rust file and
- Add breakpoint using `<leader>dt`
- Run

That's it enjoy!!

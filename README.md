# Tmux Configuration

A modern, feature-rich tmux configuration with vim-style keybindings, plugins, and a Tokyo Night theme.

## Features

- **Custom Prefix**: Uses `Ctrl-a` instead of the default `Ctrl-b`
- **Vim-style Navigation**: Vi mode keys for copy mode and pane resizing
- **Smart Pane Splitting**: Intuitive `|` and `-` keys for horizontal and vertical splits
- **Plugin Management**: Includes TPM (Tmux Plugin Manager) with useful plugins
- **Modern Terminal Support**: 256-color and true color support
- **Mouse Support**: Optional mouse interaction enabled
- **Session Persistence**: Automatic session saving and restoration

## Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/cody-gillaspie/tmux-config/main/install.sh | bash
```

Or manually:

```bash
git clone https://github.com/cody-gillaspie/tmux-config.git ~/.config/tmux-config
ln -sf ~/.config/tmux-config/tmux.conf ~/.config/tmux/tmux.conf
```

## Key Bindings

### Prefix Key
- **Prefix**: `Ctrl-a` (instead of default `Ctrl-b`)

### Pane Management
- `Prefix + |`: Split window horizontally
- `Prefix + -`: Split window vertically
- `Prefix + h/j/k/l`: Resize panes (vim-style)
- `Prefix + m`: Toggle pane zoom
- `Prefix + Alt-c`: Attach session to current path

### Copy Mode
- `Prefix + [`: Enter copy mode
- `v`: Start visual selection (in copy mode)
- `y`: Copy selection (in copy mode)
- Mouse drag selection is supported

### Configuration
- `Prefix + r`: Reload tmux configuration

## Included Plugins

The configuration uses [TPM](https://github.com/tmux-plugins/tpm) to manage the following plugins:

- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)**: Seamless navigation between vim and tmux panes
- **[tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)**: Persist tmux sessions across computer restarts
- **[tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)**: Automatic session saving every 15 minutes
- **[tmux-tokyo-night](https://github.com/fabioluciano/tmux-tokyo-night)**: Beautiful Tokyo Night color scheme

## Installation Details

The `install.sh` script will:

1. Clone this repository to `~/.config/tmux-config`
2. Create a symbolic link from `~/.config/tmux/tmux.conf` to the configuration file
3. Backup any existing configuration
4. Set up the configuration for immediate use

## Plugin Installation

After installing the configuration, you'll need to install the plugins:

1. Start tmux: `tmux`
2. Install TPM plugins: `Prefix + I` (capital i)

## Updating

To update the configuration, simply run the install script again:

```bash
bash ~/.config/tmux-config/install.sh
```

## Requirements

- tmux 2.1 or higher
- Git (for plugin management)
- A terminal that supports 256 colors or true color

## Customization

The configuration is designed to be easily customizable. Edit `~/.config/tmux-config/tmux.conf` and reload with `Prefix + r`.

## Uninstallation

To remove the configuration:

```bash
rm ~/.config/tmux/tmux.conf
rm -rf ~/.config/tmux-config
```

If you had a backup, restore it:

```bash
mv ~/.config/tmux/tmux.conf.backup ~/.config/tmux/tmux.conf
```


# Tmux Keyboard Layout plugin

Plugin that shows current playing song with [Spotify-TUI](https://github.com/Rigellute/spotify-tui).

### Usage

```tmux.conf
set -g status-right '#{actual_song}'
```

### Installation with Tmux Plugin Manager (recommended)

Add plugin to the list of TPM plugins:

```tmux.conf
set -g @plugin 'alexchaichan/tmux-spotify-tui'
```

Press prefix + I to install it.

### Manual Installation

Clone the repo:

```bash
$ git clone https://github.com/alexchaichan/tmux-spotify-tui.git ~/clone/path
```

Add this line to your .tmux.conf:

```tmux.conf
run-shell ~/clone/path/actual_song.tmux
```

Reload TMUX environment with:

```bash
$ tmux source-file ~/.tmux.conf
```

or:

Press prefix + R to install it.

<!-- ### Configurations -->

### License

props is going to:

[imomaliev](https://github.com/imomaliev) for creating [tmux-keyboard-layout](https://github.com/imomaliev/tmux-keyboard-layout)


[MIT](LICENSE)

# OSX Setup Scripts

A small, opinionated script for setting up a new OSX installation. The setup script first installs homebrew and then uses it to install subsequent tools

## Brew CLI Tools

* fish
* jq
* nvm
* go
* gh
* eza
* fira nerd fonts (mono for "cli" and "code" for vscode w/ ligatures)

## Brew OSX Apps

* Visual Studio Code
* iTerm2

## Fish Shell

The setup script installs fish via brew and sets it as the default shell for the user running the script. It then gives the option to copy over and use the included config files (found in [fishconfig/](fishconfig/)).

### Fish Functions (Aliases)

Various handy aliases for fish shell

| Command                                 | Description                           |
| --------------------------------------- | ------------------------------------- |
| [co.fish](fishconfig/functions/co.fish) | `git checkout $argv`                  |
| [gg.fish](fishconfig/functions/gg.fish) | `cd ~/git`                            |
| [gl.fish](fishconfig/functions/gl.fish) | `git log --graph --pretty=format ...` |
| [gs.fish](fishconfig/functions/gs.fish) | `git status`                          |
| [ll.fish](fishconfig/functions/ll.fish) | `eza -la $argv`                       |

### Config File

The fish config file ([./fishconfig/config.fish](fishconfig/config.fish)) will be copied to `~/.config/fish/config.fish`

Currently, it only includes the following block which forces fish to start in the user's git project root:

```
if test "$TERM_PROGRAM" != "vscode"
    cd ~/git
end
```

### Oh My Fish

The script installs [omf](https://github.com/oh-my-fish/oh-my-fish) which is used to manage themes and tools for fish.

The following omf packages are installed by this script:

* [nvm](https://github.com/derekstavis/plugin-nvm): An NVM wrapper for fish which allows use of nvm and node in fish.
* [bobthefish](https://github.com/oh-my-fish/theme-bobthefish): A pretty fish shell theme.

## VS Code

The script sets up vs code with some predefined user settings and extensions:

See [vscode/settings.json](vsconfig/settings.json) for the user settings file that will be used.

### Extensions

The following extensions are installed by this script:

| Extension           | Description                                                             |
| ------------------- | ----------------------------------------------------------------------- |
| one-monokai         | a dark theme which employs a combination of styles from One and Monokai |
| npm-intellisense    | intellisense for npm packages                                           |
| vscode-clock        | shows the time in the vs code status bar                                |
| vscode-eslint       | eslint for vs code                                                      |
| gitlens             | various tools for git projects                                          |
| go                  | various tools for go development                                        |
| prettify-json       | a tool for prettifying json objects and files                           |
| material-icon-theme | icons for files and folders in the workbench                            |
| vscode-yaml         | various tools for yaml                                                  |
| partial-diff        | an in-IDE diff tool for comparing things                                |

### Keybindings

TODO :)
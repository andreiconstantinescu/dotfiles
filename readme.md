# Dotfiles

My personal `MacOS` ready dotfiles for setting up a new computer. It features:

- macOS defaults.
- homebrew CLI tools and GUI apps.
- shell and iTerm2 configs.
- global `git` settings.
- VS Code config.

## Manual

By default, it will install workplace safe packages, to install the personal packages, pass the `-p` flag.

```bash
  -p: Personal Packages
```

### ⚠️ Caveats

For VS Code to be confured properly you need to add the existing `Settings Sync` gist ID in [here](assets/.vscode/settings.json#L2) and then in the extesion settings the Github Token for it to upload/download the settings and extensions. Read more info about the extension [here](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync).

## Install

```sh
  > git clone https://github.com/andreiconstantinescu/dotfiles.git
  > cd dotfiles/
  > ./install.sh [-p]
```

## Feedback/Suggestions

`PR`s are more than welcomed.

## Credits

Heavily inspired by:

- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Steve Losh](https://bitbucket.org/sjl/dotfiles/src/e8ba45f413665278c11f2de3a1d67a1da3832d34/osx.sh?at=default)
- [Gary Bernhardt](https://github.com/garybernhardt/dotfiles)
- [vladh](https://github.com/vladh/dotfiles)
- [secrets.blacktree.com](http://secrets.blacktree.com)
- [tvararu](https://github.com/tvararu/dotfiles)
- [tonsky](https://github.com/tonsky/FiraCode) - FiraCode Font.

## License

[MIT](LICENSE)

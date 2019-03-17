# Dotfiles

My personal `MacOS` ready dotfiles for setting up a new computer. It features:

- macOS defaults.
- homebrew CLI tools and GUI apps.
- shell and iTerm2 configs.
- global `git` settings.
- VS Code config.

## Manual

### Packages installation options

By default, it will install workplace safe packages, to install the personal packages, pass the `-p` flag.

```bash
  -p: Personal Packages
```

### VS Code settings and packages sync

The only extension installed is [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) in order to enable the sync and upload/download of existing settings and packages.

In order to sync an existing config at install, you will be prompted to add the `gistId` of the existing settings gist and the `githubToken` in order to be able to access and update the private gist.

If none of the keys are provided, when opening VS Code you will be prompted to provide them.

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

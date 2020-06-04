# Dotfiles

Personal `macOS` dotfiles to set up a new computer.

## Install

By default, it will install workplace safe packages, to modify use one of the following flags:

```bash
  -p: Personal Packages
```

#### Atom settings and packages sync

The only extension installed is [Settings Sync](https://atom.io/packages/sync-settings).

To sync an existing config at install time, you need to provide the `gistId` of the existing settings gist and the `githubToken` to access the private gist.

```bash
  > git clone https://github.com/sylar/dotfiles.git
  > cd dotfiles/
  > ./install.sh [-p]
```

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

# Some dotfiles live here.

[![forthebadge](http://forthebadge.com/images/badges/gluten-free.svg)](http://forthebadge.com)

## How to *

### install

```
$ git clone https://github.com/Prioe/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ git submodule init && git submodule update
$ stow -t ~ $(ls -d */)
```

### update

either after `git pull` or after new stuff was added.

```
$ restow
```


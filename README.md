# aur-ajgon

A simple AUR repository with packages which I daily use, but were removed from AUR for some reason.

## Install

Adding a third-party repository (like this one) is easy. Just add the following lines to the end of `/etc/pacman.conf`:

```ini
[aur-ajgon]
SigLevel = Optional DatabaseOptional
Server = https://github.com/ajgon/$repo/raw/master/$arch
```

Then, sync the repositories and update your system with: `sudo pacman -Syyu`

And, then: `sudo pacman -S name-of-package`

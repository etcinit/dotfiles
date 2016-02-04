# Ed's VIM Bundle

![wow such IDE](http://i.imgur.com/PigKpqz.png)

This is my personal plugin-heavy VIM configuration, which upgrades the little
editor into a full-size monster IDE. It's not pretty and you might have a
hard time setting it up on your system. If you are a VIM purist/minimalist, it
will give you a seizure.

## Requirements:

This setup has been tested on Fedora and OSX 10.10. Here is a partial list of
stuff needed to get this bundle working:

### General:

- Vim 7.4+
- CMake
- Python (`python-dev`)

### OSX-specific:
- Vim 7.4+: For some reason OSX doesn't bundle new versions of VIM. Anyhow, you
can easily get up to date by running `brew install vim` and using `sudo` (scary)
to move `/usr/bin/vim` into `/usr/bin/vim73` (assuming it's version 7.3). Make
sure brew stuff is in your `$PATH`.
- Exuberant Ctags: brew install ctags-exuberant

#### Languages:

Some languages need very specific tools to be present in the system in order to
do things like syntax checking and type checking:

**Javascript/JSX/Flow**:

The default setup is set to use `eslint`. You may also need the `flow` binary if
your Javascript files have `/** @flow **/` comments.

**PHP**:

Usual tools that every PHP dev should have anyways:

- PHP Mess Detector: `phpmd`
- PHP Code Sniffer: `phpcs`
- PHPUnit: `phpunit`

## How to use:

Assuming your Vim setup is on `~/.vim`:

```sh
# Clone the repo
git clone --recursive <repo URL> ~/.vim/bundle

# Compile dependencies
cd ~/.vim/bundle
make

# Create a link to the .vimrc
ln -s ~/.vim/bundle/.vimrc ~/.vimrc
```

## Troubleshooting:

__Vim crashes with ABRT signal__:

This is caused when Python is installed using brew in OSX. This is
caused due to the YCM plugin crashing in the background. The two
possible workarounds for this scenario is to:

1. Unlink the brew python: `brew unlink python`
2. Remove the vim-ycm module

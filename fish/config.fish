set fish_greeting ""

set -x PATH /home/etcinit/.local/bin /home/etcinit/bin /home/etcinit/.composer/vendor/bin/ /home/etcinit/go/bin $PATH
set EDITOR nvim
set -gx GOPATH /home/etcinit/go

# Path to Oh My Fish install.
set -gx OMF_PATH "/home/etcinit/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/etcinit/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

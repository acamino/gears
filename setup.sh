#!/usr/bin/env bash

set -eu

function package-check() {
    [ -x "$(command -v $package)" ]
}

function package-install() {
    local package=$1
    local action=$2

    if package-check $package; then
        echo "$package is already installed."
    else
        echo "Installing $package."
        bash -c "$action"
    fi
}

function package-install-xcode-command-line-tools() {
    # https://apple.stackexchange.com/a/219508
    if type xcode-select >&- &&
        xpath=$( xcode-select --print-path ) &&
        test -d "${xpath}" &&
        test -x "${xpath}" ; then
        echo "Xcode Command Line Tools is already installed."
    else
        xcode-select --install
    fi
}

package-install-xcode-command-line-tools
package-install "brew" "curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
package-install "ansible" "brew install ansible"

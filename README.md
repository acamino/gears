<img src="https://dl.dropboxusercontent.com/s/olwj8m8xwcjn6i2/gears.svg"
     alt="gears"
     align="right"
     width="300;" />

# Gears

**Gears** is the collection the _Ansible roles_ responsible for provisioning my
development environment.

**Table of Contents**
<!-- TOC GFM -->

* [Dependencies](#dependencies)
* [Setup](#setup)
* [Running a Playbook](#running-a-playbook)
    * [Tags](#tags)
* [License](#license)

<!-- /TOC -->

## Dependencies

- [Xcode Command Line Tools](https://developer.apple.com/xcode/resources/)
- [Ansible](https://docs.ansible.com/)
- [Homebrew](https://brew.sh/)

## Setup

1. Clone this repository.
   ```bash
   $ git clone git@github.com:acamino/gears.git
   $ cd gears
   ```
1. Install dependencies.
   ```bash
   $ ./setup.sh
   ```
1. Install Ansible content from Galaxy.
   ```bash
   $ ansible-galaxy install -r requirements.yml
   ```

## Running a Playbook

You can run a specific task with its corresponding _tags_.

```bash
$ ansible-playbook playbooks/main.yml --tags zsh
```

### Tags

* `packages-base`: Install base packages via Homebrew.
  * `packages-comm`: Install communication packages.
  * `packages-core`: Install core packages.
  * `packages-devops`: Install devops packages.
  * `packages-network`: Install network packages.
* `git`: Install and configure Git.
  * `git-packages`: Install Git packages via Homebrew.
  * `git-config`: Configure Git.
* `nvim`: Install and configure neovim.
  * `nvim-packages`: Install neovim package via Homebrew.
  * `nvim-config`: Configure Git.
  * `nvim-plugins`: Configure Git.
* `startship`: Install and configure Startship.
  * `startship-packages`: Install Startship package via Homebrew.
  * `startship-config`: Configure Startship.
* `tmux`: Install and configure Tmux.
  * `tmux-packages`: Install Tmux package via Homebrew.
  * `tmux-config`: Configure Tmux.
* `zsh`: Install and configure Zsh and Oh My Zsh.
  * `zsh-packages`: Install Zsh packages via Homebrew.
  * `zsh-config`: Configure Zsh.

## License

The code in this repository is licensed under the terms of the
[MIT License](http://www.opensource.org/licenses/mit-license.html).
Please see the [LICENSE](LICENSE) file for details.

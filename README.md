<img src="https://dl.dropboxusercontent.com/s/dw0kqljhowyb5et/raccoons.png"
     alt="raccoons"
     align="right"
     width="400" />

# Raccoon

**Raccoon** is the collection of _Ansible roles_ responsible for provisioning my
development environment.

In a nutshell:

* Install [base packages](roles/packages/tasks).
* Configure [SSH](https://www.ssh.com/academy/ssh) by provisioning my SSH keys and configuration files.
  _Sensitive information is encrypted with [Ansible Vault](https://docs.ansible.com/ansible/latest/user_guide/vault.html)._
* Install and configure:
  * [Git](https://git-scm.com/)
  * [Neovim](https://neovim.io/)
    * [vim-plug](https://github.com/junegunn/vim-plug)
  * [Starship](https://starship.rs/)
  * [Tmux](https://github.com/tmux/tmux)
  * [Zsh](https://www.zsh.org/)
    * [Antigen](https://github.com/zsh-users/antigen)
    * [Oh My Zsh](https://ohmyz.sh/)

## Contents
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
   $ git clone git@github.com:acamino/raccoon.git
   $ cd raccoon
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

* `base-packages`: Install base packages via Homebrew.
  * `comm-packages`: Install communication packages.
  * `core-packages`: Install core packages.
  * `devops-packages`: Install devops packages.
  * `network-packages`: Install network packages.
* `git`: Install and configure Git.
  * `git-packages`: Install Git packages via Homebrew.
  * `git-config`: Configure Git.
* `nvim`: Install and configure neovim.
  * `nvim-packages`: Install neovim package via Homebrew.
  * `nvim-config`: Configure Git.
  * `nvim-plugins`: Configure Git plugins.
* `ssh`: Configure SSH.
  * `ssh-config`: Configure SSH.
* `startship`: Install and configure Startship.
  * `startship-packages`: Install Startship package via Homebrew.
  * `startship-config`: Configure Startship.
* `tmux`: Install and configure Tmux.
  * `tmux-packages`: Install Tmux package via Homebrew.
  * `tmux-config`: Configure Tmux.
* `zsh`: Install and configure Zsh and Oh My Zsh.
  * `zsh-packages`: Install Zsh packages via Homebrew.
  * `zsh-config`: Configure Zsh.
  * `zsh-plugins`: Configure Zsh plugins.

## License

The code in this repository is licensed under the terms of the
[MIT License](http://www.opensource.org/licenses/mit-license.html).
Please see the [LICENSE](LICENSE) file for details.

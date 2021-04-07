# Sway start script
## Why this repository exists?
The sway package for Ubuntu adds a wayland session for Gnome GDM3. The desktop file launchs sway straight away, so there's no chance to customize the environment for sway, like setting some environment variables.

In my case, I have some local scripts in `~/.local/bin` and sway could not launch them with `exec`.

## How to use
Download the deb package from the releases page.

Install using `sudo dpkg -i sway-start-script.deb`.

Logout from your session and select **Sway (with start script)** in the gear icon.

To customize in your environment variables, create a file `swayrc` in your home dir.

## My sample swayrc

```bash
#!/usr/bin/env bash

[[ -d ~/go/bin ]] && export PATH="$HOME/go/bin:$PATH"
[[ -d ~/.local/bin ]] && export PATH="$HOME/.local/bin:$PATH"
```

## Build
Run the following in your terminal:

```shell
make package
```

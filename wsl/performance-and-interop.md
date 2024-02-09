# WSL2 - Performance and Interop

I love WSL2 as the best compromise to use productivity software (e.g., Office, Communication/Chat) and have a UNIX-based development experience. With WSL2 most of my personal needs are fulfilled.
Yet, there's definitely somethings to watch out for.

## Windows Host Filesystem

The `/mnt/c/...` maps to your Windows host, and the filesystem operations are *significantly slower* than on the WSL2 VM.

## Interop appends your PATH❗

The WSL2 interop appends the Windows path to your Linux path, as it enables to start Visual Studio Code from the WSL2 distro via the `code` command. It's something I personally deactivate and manually add to my `.bashrc` as appending the full path can cause weird behavior, for example calling `az` or most recently `pyenv` from my Windows host.

To deactivate this behavior modify your `/etc/wsl.conf` in your distribution.

```ini
[interop]
appendWindowsPath=false
# prevent path modified - need to add vscode manually
enabled=true
# required to run vscode in windows
```

You then need to add something like this to your `~/.bashrc`:
> Note: The order of `$PATH:...` is important to define search order. If reversed your shell searches on the `/mnt/...` and slows down WSL2 significantly.

```sh
export PATH="$PATH:/mnt/c/Users/[YOUR WINDOWS USER FOLDER]/AppData/Local/Programs/Microsoft VS Code/bin"
```

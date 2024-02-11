# Windows Box Setup

## Applications

```sh
winget install --id Microsoft.Powershell --source winget
winget install --id Microsoft.PowerToys
winget install --id Microsoft.VisualStudioCode
winget install --id Mozilla.Firefox
```

## WSL2

```sh
wsl --install -d Ubuntu-22.04

setx WSLENV "USERPROFILE/p" # add USERPROFILE to path
```

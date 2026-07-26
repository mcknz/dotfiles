# Development Workstation

Configuration and installation notes for rebuilding a Windows development workstation.

The goal is a clean, understandable, and reproducible development environment rather than a backup of every application file.

## Configuration Philosophy

Track configuration when it represents a deliberate workstation decision, is useful when rebuilding the environment, or is intentionally useful as a change detector.

Do not generally track ephemeral, private, or machine-specific state.

The repository lives in the home directory ('~') but ignores files by default (`*`). New files are explicitly force-added when they are intentionally selected for tracking.

Git serves as both configuration backup and a change detector. Installation/bootstrap automation is intentionally deferred until another workstation rebuild provides an opportunity to validate the process.

Configuration is stored under `.config` where practical. Applications that require configuration in their standard Windows locations are tracked there instead.

## Installs

- Chrome / Google Drive & extensions
  - fix Teams opening Edge by default:
    https://superuser.com/questions/1827132/how-to-make-microsoft-teams-launch-my-default-browser-instead-of-edge

- Visual Studio
  - extensions
    - Markdown Editor v2

- Visual Studio Code
  - install:
    `winget install --id Microsoft.VisualStudioCode -e`
  - tracked configuration:
    - `AppData/Roaming/Code/User/settings.json`
      - deliberate user-level editor and terminal configuration
      - UTF-8
      - LF line endings
      - Git SDK zsh (`zsh.exe -li`) as default integrated terminal
      - MesloLGS NF terminal font
  - not tracked:
    - `globalStorage/` and other application state
  - extensions
    - install as needed
    - prefer project/devcontainer-specific extensions where appropriate
  - Git/GitHub
    - command-line Git uses SSH independently of VS Code
    - VS Code GitHub sign-in is not required for normal Git operations

- .NET
  - .NET 10 SDK (LTS)
  - install:
    `winget install --id Microsoft.DotNet.SDK.10 -e`
  - older SDKs and workloads installed as required by projects
  - prefer project-specific tooling in devcontainers where appropriate

- SQL / SSMS

- Acrobat

- WinMerge
  - configured as Git diff and merge tool

- Notepad++
  - install:
    `winget install --id Notepad++.Notepad++ -e`
  - tracked configuration:
    - `AppData/Roaming/Notepad++/config.xml`
      - preferences including UTF-8 / LF defaults
      - also preserves useful history and window positioning; accepted as intentional noise
    - `AppData/Roaming/Notepad++/shortcuts.xml`
      - keyboard shortcut configuration
    - `AppData/Roaming/Notepad++/stylers.xml`
      - tracked primarily as a change detector so styling changes caused by upgrades are visible
  - plugins
    - JSTool
    - XMLTools

- Agent Ransack

- PowerToys
  - https://learn.microsoft.com/en-us/windows/powertoys/install

- Docker Desktop / Podman
  - intended development model: VS Code Dev Containers
  - current direction: Docker Desktop using WSL 2
  - WSL prerequisites:
    - enable WSL and Virtual Machine Platform without installing a Linux distribution:
      `wsl --install --no-distribution`
    - reboot
    - verify WSL 2 before installing Docker Desktop

- PowerShell (cross-platform)
  - install:
    `winget install --id Microsoft.PowerShell -e`
  - available as `pwsh`
  - installed as the MSIX package

- RapidEE

- Git SDK
  - installed at `C:\git-sdk-64`
  - primary development shell environment
  - https://github.com/git-for-windows/git/wiki/Technical-overview
  - fix create-shortcut.exe not found:
    https://stackoverflow.com/a/77877407
  - tracked configuration:
    - `.gitconfig`
      - minimal compatibility file that includes `~/.config/git/config`
    - `.config/git/config`
      - user identity
      - default branch: `main`
      - `autocrlf = input`
      - global ignore file
      - fetch pruning
      - automatic upstream setup
      - rerere
      - WinMerge diff/merge configuration
      - `zdiff3` conflict style
    - `.config/git/ignore`
      - global Git ignore rules
    - `.gitattributes`
      - repository line-ending and binary-file rules
  - GitHub authentication
    - SSH
    - no Git Credential Manager required

- zsh
  - primary interactive shell
  - https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#msys2
  - tracked configuration:
    - `.zshenv`
      - entry point for zsh environment configuration
    - `.config/zsh/.zshrc`
      - primary interactive shell configuration
    - `.config/zsh/.zsh_aliases`
      - shared aliases
    - `.config/zsh/.zsh_functions`
      - shared shell functions
  - not tracked:
    - `.zsh_aliases_private`
    - `.zsh_functions_private`

- oh-my-zsh
  - https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation

- powerlevel10k (oh-my-zsh theme)
  - https://github.com/romkatv/powerlevel10k/tree/master?tab=readme-ov-file#getting-started
  - MesloLGS NF
  - tracked configuration:
    - `.config/zsh/.p10k.zsh`

- Windows Terminal
  - tracked configuration:
    - `AppData/Local/Packages/Microsoft.WindowsTerminal_*/LocalState/settings.json`
      - Git SDK zsh is the default profile
      - Git SDK zsh uses MesloLGS NF and Solarized Dark
      - configured profiles:
        - Git SDK zsh
        - PowerShell (cross-platform)
        - Windows PowerShell 5.1
        - Command Prompt
        - Azure Cloud Shell
    - `.config/assets/icons/powershell.png`
      - stable PowerShell profile icon independent of application installation paths

- nvm / Node
  - https://github.com/lukechilds/zsh-nvm?tab=readme-ov-file#install
  - Angular CLI

- Azure CLI
  - https://winget.run/pkg/Microsoft/AzureCLI

## Development Environment

Prefer VS Code Dev Containers for project development where practical.

Keep the Windows host relatively lean. Host-level tools provide the workstation foundation; project-specific runtimes, dependencies, and VS Code extensions should generally be defined by the project's devcontainer when appropriate.

Host development foundation currently includes:

- Git SDK
- zsh
- Git / SSH
- VS Code
- .NET 10 SDK
- PowerShell (cross-platform)
- WSL 2
- Docker Desktop (pending)

## Line Endings

Repository standard:

- LF
- UTF-8

Git:

- `core.autocrlf = input`

Editors are configured to create LF files by default.

## Deferred

Bootstrap/install automation is intentionally deferred until a future workstation rebuild.

The README serves as the installation checklist in the meantime. A future bootstrap script can be built from these documented installation commands and configuration decisions.
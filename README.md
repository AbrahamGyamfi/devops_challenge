# SysAdmin Starter Pack

This repository contains a simple Bash script to automate common Linux administrative tasks:
creating a basic folder structure for logs, configs, and scripts; creating sample files; and
setting permissions.

## What the script does
- Creates directory tree: logs/, configs/, scripts/
- Creates files:
  - logs/system.log
  - configs/app.conf
  - scripts/backup.sh
- Adds sample content to each file
- Sets permissions:
  - logs/system.log -> 644 (-rw-r--r--)
  - configs/app.conf -> 444 (-r--r--r--)
  - scripts/backup.sh -> 755 (-rwxr-xr-x)
- If a directory already exists, it prints: `Directory already exists: [directory_name]`
- Prints the directory structure (using `tree` if available, otherwise `find`) and runs `ls -lR` to show permissions

## Usage
1. Make sure the script is executable:
   chmod +x setup_environment.sh

2. Run it:
   ./setup_environment.sh

The script creates the challenge workspace in `~/devops_challenge` and reports actions to stdout.

## Notes
- The script avoids overwriting existing files and directories: it will inform you if an item already exists.
- If `tree` is not installed on the system, the script falls back to `find` to show the structure.

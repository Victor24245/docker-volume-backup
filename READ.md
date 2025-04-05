# Docker Volume Backup Script

## Description
This repository contains a lightweight Bash script for creating timestamped backups of Docker volumes. The script automates the process of mounting Docker volumes into temporary containers, compressing their contents, and saving the backup files to a specified directory. It’s perfect for ensuring data safety in Dockerized environments!

---

## Features
- Automatically creates backups for Docker volumes.
- Includes timestamps in backup filenames for easy identification.
- Handles automatic creation of the backup directory.
- Allows customization of the Docker volume and backup destination.
- Lightweight and uses `busybox` for efficient container management.

---

## How to Use
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your_username/docker-volume-backup.git
   cd docker-volume-backup

Run the Script:

./backup.sh [VOLUME_NAME] [BACKUP_DIRECTORY]

Replace VOLUME_NAME with the name of your Docker volume.

Replace BACKUP_DIRECTORY with the path to where you want backups saved.

If no arguments are provided, it defaults to: 'Volume: mytestvol'

Backup Directory: ./backups (relative to the current directory).



Example Command:
              
./backup.sh mytestvol /home/user/backups



Automating Backups with Cron Jobs
Cron Job Example
To schedule daily backups at midnight, add the following line to your cron job file:

0 0 * * * /absolute/path/to/backup.sh


Important Note on $(pwd):
When scheduling cron jobs, do not use $(pwd) as cron does not evaluate shell commands like it does in an interactive session. Instead, use the absolute path to your script and directories to ensure correct execution.

Output
The script saves backup files in the format:

backup_<VOLUME_NAME>_<TIMESTAMP>.tar.gz
Example:

backup_mytestvol_20250405_163052.tar.gz
Dependencies
Docker

Bash

Cron (optional for automation)

License
This project is licensed under the MIT License. See the LICENSE file for details.

Contribution
Feel free to fork the repository and submit pull requests for enhancements or bug fixes.

Contact
For questions or suggestions, reach out via the issues tab on this repository.


---

# Directory Backup Automation Script

A lightweight and efficient Command Line Interface (CLI) automation tool written in Bash. This script simplifies system administration by automatically backing up and compressing directories, creating structured, date-stamped archives.

## 🚀 Features

- **Input Validation:** Ensures the correct number of arguments is provided and verifies the existence of the source directory before execution.
- **Automated Directory Creation:** Automatically creates the destination directory (`mkdir -p`) if it does not already exist.
- **Isolated Component Backup:** Iterates through the source directory and packs each subfolder into its own separate, date-stamped `.zip` archive.
- **Root File Consolidation:** Gathers all remaining loose files in the root source directory and backs them up into a single dedicated archive (`__pliki-$DATA.zip`).
- **Quiet Error Handling:** Suppresses unnecessary standard error outputs during root file zipping for a cleaner console experience.

## 🛠️ Requirements

- Linux/Unix environment
- `bash` (Bourne Again SHell)
- `zip` utility installed (`sudo apt install zip` on Debian/Ubuntu)

## 📖 Usage

Clone the repository and make the script executable:

```bash
chmod +x backup.sh
Run the script by providing the source directory and the destination backup path:

Bash
./backup.sh /path/to/source /path/to/destination
Example
Bash
./backup.sh /home/user/projects /var/backups
Output:

/var/backups/project1-2026-05-29.zip

/var/backups/project2-2026-05-29.zip

/var/backups/__pliki-2026-05-29.zip

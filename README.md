
# GDriveAutoSlider



[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

## Description

This repository contains scripts to automatically download images from a specified Google Drive directory and display them in a slideshow on a desktop environment.

## Requirements

- **rclone**: This tool is used to synchronize files between your computer and cloud storage services like Google Drive.
- **feh**: An image viewer and cataloguer for Unix-like systems used for displaying the slideshow.

## Installation

Follow these steps to set up the project environment:

1. **Install rclone**:
   ```bash
   curl https://rclone.org/install.sh | sudo bash
   ```

2. **Configure rclone with Google Drive**:
   ```bash
   rclone config
   ```
   Follow the interactive setup to add your Google Drive as a remote storage.

3. **Install feh**:
   - On Debian-based systems:
     ```bash
     sudo apt-get install feh
     ```

4. **Make script files executable**:
   ```bash
   chmod u+x download_pics.sh slideshow.sh
   ```

5. **Create an alias for the slideshow**:
   Add the following line to your `.bashrc` or `.bash_profile`:
   ```bash
   alias slideshow='pushd /path/to/script && ./slideshow.sh && popd'
   ```

## Usage

- **Download images**:
  Before running the `download_pics.sh` script, you need to adjust it to match your rclone settings. Update the remote path in the script to reflect your Google Drive setup. Use `--drive-shared-with-me` if you are not the owner of the folder. You will need to set up a shortcut to the folder.
  ```bash
  # Edit the remote and local paths accordingly 
  rclone copy your-remote:path/to/images ~/path/to/local/folder --drive-shared-with-me
  ```
  Run the script to download images from your configured Google Drive to your local machine:
  ```bash
  ./download_pics.sh
  ```

- **Start the slideshow**:
  Run the `slideshow.sh` script to start the slideshow of the images.
  ```bash
  slideshow
  ```

## Automation with Cron

To have `download_pics.sh` run automatically every hour, add the following entry to your crontab:
```bash
0 * * * * /path/to/download_pics.sh
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
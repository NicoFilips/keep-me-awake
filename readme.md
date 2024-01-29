<div align="center">
<a href="https://github.com/NicoFilips/keep-me-awake/">
  <img src="https://github.com/NicoFilips/keep-me-awake/assets/35654361/e3b2720d-a225-4528-8252-14b7faeb79e4" alt="Logo" width="200" height="200">
</a>
  
<blockquote>
  <p>Source: DALL-E 3</p>
</blockquote>

# Keep-Me-Awake 🌟
## Overview ✨
The Keep-Me-Awake script is a cross-platform PowerShell script designed to keep your computer awake by periodically simulating an input. This is especially useful for preventing your computer from entering sleep mode during extended periods of inactivity, such as during presentations (outside of PowerPoint), taking handwritten notes, or phone calls. Just because you're currently not focused on using your PC doesnt mean you want your PC automatically turn off your monitors. In a lot of cases, the energy settings are regulated by the companys domain, so this is a workaround to fix the issue.  🚀

## PowerShell 7 and .NET Core 🌐
PowerShell 7 is built on .NET Core, allowing it to run across multiple platforms including Windows, Linux, and macOS. This cross-platform capability ensures that scripts and modules work consistently across different operating systems. 🖥️💻🍏

## Prerequisites 📋
You can edit the script to fit your documentations.

PowerShell 7.0 or higher
Installation 🛠️

# Windows 🪟
Install PowerShell 7:

Visit the official PowerShell GitHub page.
Select the latest version for Windows and follow the installation instructions.
Clone the Repository (or download the files):

´´´
git clone https://github.com/yourusername/keep-me-awake.git
´´´
Navigate to the Directory:

´´´
cd path/to/keep-me-awake
´´´

# Linux 🐧

Install PowerShell 7:
Open a terminal window.
Execute the following commands:

´´´
# Download the Microsoft repository GPG key
wget -q "https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb"
´´´

´´´
# Add the repository
sudo dpkg -i packages-microsoft-prod.deb
´´´

´´´
# Install PowerShell
sudo apt-get update; sudo apt-get install -y powershell
´´´
Clone the Repository (or download the files):

´´´
git clone https://github.com/yourusername/keep-me-awake.git
´´´
Navigate to the Directory:

bash
Copy code
cd path/to/keep-me-awake
Usage 🚀
Run the Script:
With default values:
powershell
Copy code
pwsh ./keep-me-awake.ps1
With custom values:
powershell
Copy code
pwsh ./keep-me-awake.ps1 -Key "F13" -Interval 120

TODO:
Section automating it with windows and linux (autostart)

## Support and Contributions 🤝
Feedback, suggestions, and contributions are always welcome! Feel free to report issues or create pull requests. 🌟

## License 📜
This project is licensed under the MIT License.

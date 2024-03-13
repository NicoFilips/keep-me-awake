<div align="center">
<a href="https://github.com/NicoFilips/keep-me-awake/">
  <img src="https://github.com/NicoFilips/keep-me-awake/assets/35654361/e3b2720d-a225-4528-8252-14b7faeb79e4" alt="Logo" width="200" height="200">
</a>
  
<blockquote>
  <p>Source: DALL-E 3</p>
</blockquote>

# Keep-Me-Awake 🌟

</div>

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

You then can just easily create a new task in the windows taskmanager to run your script on startup. It can be run windowless so you don't even notice it anymore, but it still can be closed via your taskmanager

Trigger: - On Startup -
Action: Startup Program: "C:\Program Files\WindowsApps\Microsoft.PowerShell_7.x.x.x_x64__individual_Path_to_PowerShell7\pwsh.exe"
Arguments: -WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\Program Files\keep-alive\keep-me-awake.ps1" -Key "F13" -Interval 120

# Linux 🐧

Install PowerShell 7:
Open a terminal window.
Execute the following commands:

´´´
Download the Microsoft repository GPG key
wget -q "https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb"
´´´

´´´
Add the repository
sudo dpkg -i packages-microsoft-prod.deb
´´´

´´´
Install PowerShell
sudo apt-get update; sudo apt-get install -y powershell
´´´
Clone the Repository (or download the files):

´´´
git clone https://github.com/yourusername/keep-me-awake.git
´´´

Navigate to the Directory:

```
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
```


# Setting Up Automatic Execution
To ensure the Keep-Me-Awake script runs automatically at system startup, you can set it up in the Task Scheduler on Windows and as a Cron job on Linux.

# Windows Task Scheduler 🪟
Open Task Scheduler:

Search for 'Task Scheduler' in the Start menu and open it.
Create a New Task:

In the Task Scheduler, go to Action > Create Basic Task....
Task Setup:

Give your task a name, like KeepMeAwake.
Choose When the computer starts as the trigger.
Set the action to Start a program.
Configure Action:

In the Program/script field, enter C:\Program Files\PowerShell\7\pwsh.exe.
In the Add arguments field, enter -File "C:\Program Files\keep-alive\keep-me-alive.ps1".
Ensure the Start in field is left blank.
Finish and Save:

Go through the rest of the wizard and save your task.

# Linux Cron Job 🐧
Open Terminal:

Open your Linux terminal.
Edit Crontab File:

Enter crontab -e to edit the crontab file.
Add Cron Job:

Add a new line to the end of the file:
arduino
Copy code
@reboot /usr/bin/pwsh -File "/path/to/keep-me-alive.ps1"
Replace /path/to/keep-me-alive.ps1 with the actual path of the script.
Ensure that the path to pwsh is correct (use which pwsh to find it).
Save and Exit:

Save the crontab file and exit the editor.
By setting up these tasks, the Keep-Me-Awake script will automatically start with your system, keeping your computer awake as per the script's configuration.

## Support and Contributions 🤝
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request 🌟

## License 📜
This project is licensed under the MIT License.

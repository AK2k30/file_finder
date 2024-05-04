# Find-File PowerShell Script

The `Find-File` script is a PowerShell utility designed to quickly locate files across all indexed locations on your Windows system. This script utilizes the Windows Search index, making file searches much faster than manually browsing through directories or performing non-indexed searches.

## Why Use Find-File?

Searching for files using the native Windows search feature can be slow if the system has to crawl through unindexed areas. `Find-File` leverages the existing Windows Search index, thus providing a much quicker search experience. It is especially useful for users who need to frequently locate various files across large storage systems.

## Features

- **Fast Searches**: Utilizes the Windows Search index.
- **Easy to Use**: Simple command-line interface.
- **Global Accessibility**: Once installed, can be used from any PowerShell window.

## Prerequisites

To use the `Find-File` script, you need:
- Windows 10 or higher.
- PowerShell 5.1 or higher.
- Windows Search indexing must be enabled and configured to include the directories you want to search.

## Installation

Follow these steps to install `Find-File`:

1. **Open PowerShell as Administrator**:
   - Search for PowerShell in your Start menu, right-click it, and select "Run as administrator".

2. **Check Execution Policy**:
   - Ensure your execution policy allows script execution. Run:
     ```powershell
     Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
     ```
   - This command allows you to run local scripts.

3. **Add `Find-File` to Your PowerShell Profile**:
   - Open your PowerShell profile for editing:
     ```powershell
     notepad $PROFILE
     ```
   - If the profile does not exist, Notepad will ask if you want to create it. Click "Yes".
   - Append the function script to this file (the function code is provided in the [Usage](#usage) section below).
   - Save and close Notepad.

4. **Reload Your Profile**:
   - To make the function immediately available, reload your profile:
     ```powershell
     . $PROFILE
     ```

## Usage

To use the `Find-File` function, open a PowerShell window and type:

```powershell
Find-File "filename_to_search_for"

# Scripts (alpha)
A simple repo for hosting my shell scripts. This is still in relative alpha stages, so if anything doesn't work properly, then feel free to submit an issue.

## Installation
Clone the `install.sh` file.

You have one of two methods:

1. `git clone https://github.com/penetratingshot/Scripts/install.sh`

2. `curl -O https://raw.githubusercontent.com/penetratingshot/scripts/master/install.sh`

Next, run the file:

**MacOSX:**

`chmod +x install.sh`

`$ ./install.sh`

**Windows:**

`C:>CACLS files /p /e install##.sh:f`

`C:>sh install.sh`

## Usage

Now that you ran the `install.sh` file, you should have the files. Any problem you should encounter submit in the issues section. If you are on a Mac, this script has already moved the `.sh` files to `/usr/local/bin`, which already happens to be in your PATH. On Windows, type "path" into your searchbar, click on "Edit system environment variables", then click something related to "New" or "Path".

**MacOSX:**

`chmod +x filename.sh`

`$filename.sh`

**Windows:**

`C:>CACLS files /p /e filename.sh:f`

`$sh filename.sh`

## The Helper Tool

The helper tool is, quite literally, a tool for remembering what all the scripts are. If you wish, you can install this by cloning and running the `install_helper.sh` file.

### Installation

You, again, have a couple of options.

1. `$ git clone https://github.com/penetratingshot/scripts/install_helper.sh`

2. `$ curl -O https://raw.githubusercontent.com/penetratingshot/scripts/master/install_helper.sh`

Then, make the scripts executable...

**MacOSX:**

`$ chmod +x install_helper.sh`

**Windows:**

`C:> CACLS files /p /e filename.sh:f`

Once you've done this, actually run the scripts...

**MACOSX:**

`$ ./install_helper.sh`

**Windows:**

`C:> sh install_helper.sh`

Now that the helper tool is installed, you can execute it globally on your computer by running the command `sh-helper`.

All done!

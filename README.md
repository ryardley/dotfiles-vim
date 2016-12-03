# Rudi's vim dotfiles

*These are for my benefit but perhaps someone finds them useful too*

# Installation

1. Update vim to at least v8.0 for YCM to work properly

  ```bash
  $ brew install vim
  ```


2. Run the configure script
  ```bash
  $ ./configure.sh
  ```
  
3. Run vim and install all the plugins

  ```bash
  $vim 
  ```
  Within vim 
  
  ```vim
  :PluginInstall
  ```
  
  Quit vim 
  
4. Install the remaining plugins

  ```bash
  ./install.sh
  ```
  
You should now have vim configured for javascript editing.



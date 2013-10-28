homebrew-multitoe
=================

homebrew-multitoe is a project for installing MultiToe with [Homebrew](http://brew.sh).
It includes the following dependencies:

  * [ALVAR](http://virtual.vtt.fi/virtual/proj2/multimedia/alvar/index.html), version 2.0.0
  * OpenNI2 (TODO)
  * MultiToeQt (TODO)

## Usage

### Download formulas

First you'll need to tap homebrew/science for opencv. Afterwards you can download formulas from this repository:

    $ brew tap homebrew/science
    $ brew tap tzwenn/homebrew-multitoe
  
### Install

Right now there's just ALVAR here. Try it out:

    $ brew install alvar

### Uninstall

You can remove the installation by

    $ brew uninstall alvar
    $ brew untap tzwenn/homebrew-multitoe

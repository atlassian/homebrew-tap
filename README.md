# Atlassian Homebrew Tap

This repository contains a collection of [Homebrew](http://mxcl.github.com/homebrew/) (aka, Brew) "formulae" for Atlassian software that can be installed using Brew. Brew is a simple package manager for OS X that's based on Git.

Traditionally, Brew packages are managed centrally at <https://github.com/mxcl/homebrew>. To update packages, a package developer has to send pull requests to update their packages to new versions. Recently, however, Brew added a feature called [Tap](https://github.com/mxcl/homebrew/wiki/Interesting-Taps-%26-Branches) which makes it possible to install packages from remote Git repositories. This Git repository is Atlassian's Homebrew Tap.

## Usage

Unfortunately, Brew (as of this writing) only supports adding Taps from Github. Brew Taps can be registered using the tap command like so:

    brew tap user/repo

However, because this Tap is hosted on Bitbucket, you won't be able to register this tap. Don't fret... you can still install Formulae installed here using this convention:

    brew install https://bitbucket.org/atlassian/homebrew-tap/raw/master/<formula>.rb

We'll work with the Brew dudes to get Bitbucket support, but in the meanwhile, you can install the formulae directly.

## Contributing Formulae

If you're an Atlassian, go to town -- just make sure you follow the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook).

If you're not an Atlassian, feel free to send us a pull request if you want to add or change something.

# Atlassian Plugin SDK Homebrew Tap

This repository contains a collection of [Homebrew](http://mxcl.github.com/homebrew/) (aka, Brew) "formulae" for Atlassian. Brew is a simple package manager for OS X that's based on Git.

Traditionally, Brew packages are managed centrally at <https://github.com/mxcl/homebrew>. To update packages, a package developer has to send pull requests to update their packages to new versions. Recently, however, Brew added a feature called [Tap](https://github.com/mxcl/homebrew/wiki/brew-tap) which makes it possible to install packages from remote Git repositories. This Git repository is Atlassian's Homebrew Tap.

## Usage

First, add this tap to your Brew:

    brew tap atlassian/tap

Next, draft from the tap:

    brew install atlassian/tap/<formula>

Third, enjoy your new brew.

## Contributing Formulae

If you're an Atlassian, go to town -- just make sure you follow the [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook).

## Found a Bug or looking for a new Feature?

You can raise bugs and feature requests for the Atlassian SDK (including the homebrew tap) at https://ecosystem.atlassian.net/projects/ATLASSDK.

## Documentation

The documentation for developing add-ons using the Atlassian Plugin SDK can be found at https://developer.atlassian.com.


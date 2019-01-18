#!/usr/bin/env bash

function brew_is_tapped() {
  local tap=$1

  brew tap | grep -q "$tap"
}

function brew_tap() {
  local tap=$1

  brew tap "$tap"
}

function brew_install() {
  local package=$1

  if brew list "$package" > /dev/null 2>&1; then
    dotsay "+ $package already installed... skipping."
  else
    brew install $@
  fi
}

function brew_cask_install() {
  local package=$1

  if brew cask list "$package" > /dev/null 2>&1; then
    dotsay "+ $package already installed... skipping."
  else
    brew cask install $@
  fi
}

function brew_install_all() {
  local packages=("$@")

  for package in "${packages[@]}"; do
    brew_install $package
  done
}
# Android Puppet Module for Boxen

[![Build Status](https://travis-ci.org/aafwu00/puppet-android.png?branch=master)](https://travis-ci.org/aafwu00/puppet-android)

## Usage

```puppet
include android::sdk
```

The `ndk` is also available:
```puppet
include android::ndk
```

## Required Puppet Modules

* `boxen`
* `homebrew`
* `stdlib`
* `java`

## Environment

Once installed, you can access the following variables in your environment, projects, etc:

* ANDROID_HOME: android home directory
* ANDROID_SDK_ROOT: android sdk directory

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
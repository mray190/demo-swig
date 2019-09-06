# SWIG tutorial

Super simple example of how SWIG can be used

## Prerequisites

### Software

* [Java JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Android Studio](https://developer.android.com/studio/)

Point your `JAVA_HOME` environment variable to the directory of your installed JDKs `Home` folder. For example:

```sh
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home/"
```

Point your `ANDROID_HOME` environment variable to the directory of your Android SDK. For example:

```sh
export ANDROID_HOME="/Users/jenplu01/Library/Android/sdk"
```

### Libraries

* [cmake](https://cmake.org) (version 3.14.2+)
* [cunit](http://cunit.sourceforge.net)
* [Ninja](https://ninja-build.org/)
* [gradle](http://gradle.org)

On Mac OS X, install the above libraries (asumming you have [brew](https://brew.sh) installed):

```sh
brew install cmake cunit ninja gradle
```

### SWIG

To generate new Java wrapper code for the C++ SDK, install the latest version of [SWIG](http://www.swig.org/) (4.0):

```sh
git clone https://github.com/swig/swig.git
cd swig
./autogen.sh
./configure --prefix=/usr/local
make
make install
```

**Note**: To build SWIG on Mac OS X, first install `automake`: `brew install automake`

Then add SWIG to your path:

```sh
export PATH="/usr/local/share/swig:$PATH"
```

## Build

```
make build
```

## Run

```
make run
```
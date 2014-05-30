polyworld
=========

This is a git repo taken from the original polyworld CVS branch. 

    http://shinyverse.org/larryy/Polyworld.html

It mainly follows the installation instructions found here:

    http://shinyverse.org/larryy/BuildingPolyworld.html#Linux

Copy of the instructions here, with modifications to make it work on Linux Mint 14 x64:

Linux
=============
First install Polyworld's dependencies:

   sudo apt-get install build-essential xorg-dev libgl1-mesa-dev scons cvs libgsl0-dev libqt4-opengl-dev python2.7-dev

   *NOTE* On unbutu, we had to include the python2.7-dev to fix the #include <Python.h> and other header file issues.
   
Solution taken from here: 

    http://stackoverflow.com/questions/8282231/ubuntu-i-have-python-but-gcc-cant-find-python-h

Then get your code from this github repo or fork it to your own and clone from there:

   https://www.github.com/rockhowse/polyworld

We then need to add a couple of symbolic links that are 

If you attempt make at this point you will get two errors:

# /usr/bin/ld: .bld/Polyworld/utils/Mutex.o: undefined reference to symbol 'pthread_spin_init@@GLIBC_2.2.5'
# /usr/bin/ld: .bld/Polyworld/proplib/cppprops.o: undefined reference to symbol 'dlsym@@GLIBC_2.2.5'
  
To fix this, add the directives "-pthread -ldl" to the very last g++ command example: 

    g++ ./Polyworld ... -pthread -ldl

    -pthread ~ resolves the pthread_spin_init error.
    -ldl     ~ resolves the dslym error.

I will try to add these to the SCons (?) configuration.

Build Polyworld using make, and try the only worldfile that currently exists to test with:

    make
    ./Polyworld ./sandbox/social/feed_young.wf

For the analysis tools you will also need to install the following dependencies:

    sudo apt-get install python-numpy python-scipy gnuplot

All these installed fine for me, so nothing extra for Unbutu 14.


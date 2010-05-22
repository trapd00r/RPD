radiod
===========
radiod: Daemon using mplayer for playing radio streams

radioc: Client for talking to the daemon; change stream, pause, 
change volume etc

  srnp: now playing information for sveriges radio


    Usage: radioc [OPTIONS] (ARGS) 

    OPTIONS:
        np      show the currently playing song
        npa     show all played songs since radiod started
        change  change channel
        list    list all available channels
        son     turn on sound
        soff    turn off sound
        pause   pause playback
        stop    pauses playback. If you really want to stop, use quit
        quit    stops playback (and radiod)

    EXAMPLES:
        radioc change psy   # change channel to the one associated with
                              the 'psy' key (di.fm)


Installation
============
First, you'll need some modules;
    # cpan App::Daemon LWP::Simple XML::Simple

Then, just run;
    $ perl Makefile.PL
    $ make
    # make install

Start radiod and enjoy.
License
=======
Copyright (C) 2010 Magnus Woldrich

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation.

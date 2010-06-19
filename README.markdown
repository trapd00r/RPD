Radio Playing Daemon
====================
RPD is a daemon that plays radio streams.

Mplayer is used for the actual backend, providing the user with total control.

Radio Playing Client
====================

RPC is the program for controlling Radio Playing Daemon (RPD).

    Usage: rpc [OPTIONS] (ARGS) 

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
        rpc change psy   # change channel to the one associated with
                           the 'psy' key (di.fm)


Installation
============
First, you'll a module from CPAN:
    # cpan Working::Daemon

Then grab the 'now playing'-module:
    $ git clone git://github.com/trapd00r/Mplayer-NowPlaying.git
    $ cd Mplayer-NowPlaying
    $ perl Makefile.PL
    $ make
    # make install

Now you can install RPD and RPC:
    $ perl Makefile.PL
    $ make
    # make install

Start RPD and enjoy.
License
=======
Copyright (C) 2010 Magnus Woldrich

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation.

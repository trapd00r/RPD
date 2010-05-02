radiod
===========
radiod: Daemon using mplayer for playing radio streams

radioc: Client for talking to the daemon; change stream, pause, 
change volume etc

  srnp: now playing information for sveriges radio

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

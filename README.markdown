radiod
===========
radiod: Daemon using mplayer for playing radio streams

radioc: Client for talking to the daemon; change stream, pause, 
change volume etc

  srnp: now playing information for sveriges radio

Installation
============
First, you'll need App::Daemon;
    # cpan App::Daemon

Copy the channel list to $XDG_CONFIG_HOME/radiod/channels 
(usually $HOME/.config/radiod/channels) and place the daemon and client
somewhere in your $PATH (/usr/bin, $HOME/bin or so). 
Make sure that you have a named pipe in $HOME/.mplayer/ named 'fifo'.
You can create one with;
    $ mkfifo $HOME/.mplayer/fifo
Full command for lazy people;
    git clone git@github.com:trapd00r/radiod.git \ 
    && cd radiod \ 
    && mkdir -p $XDG_CONFIG_HOME/radiod/ \
    && cp channels $XDG_CONFIG_HOME/radiod \
    && ./radiod
Start the daemon and enjoy.
License
=======
Copyright (C) 2010 Magnus Woldrich

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation.

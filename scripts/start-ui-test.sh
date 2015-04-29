#!/bin/sh
# -------------------------------------------------------------------------
# Copyright (C) 2015 Jolla Ltd.
# Contact: Matti Kosola <matti.kosola@jollamobile.com>
# License: GPLv2
# -------------------------------------------------------------------------

# In never blank mode all display state change requests are changed to display 
# on requests. Display off requests are always allowed. Together they should 
# ensure that display turns on and stays on. Allow some time to display to turn
# on and remove lock screen.
/usr/sbin/mcetool --set-never-blank=enabled --blank-screen --block=1 --set-tklock-mode=unlocked

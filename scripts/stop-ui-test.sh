#!/bin/sh
# -------------------------------------------------------------------------
# Copyright (C) 2015 Jolla Ltd.
# Contact: Matti Kosola <matti.kosola@jollamobile.com>
# License: GPLv2
# -------------------------------------------------------------------------

# Disable never blank mode, set touch screen and keypad to locked state and
# turn display off.
/usr/sbin/mcetool --set-never-blank=disabled --set-tklock-mode=locked --blank-screen

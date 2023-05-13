#!/usr/bin/env python

import dbus.service
import os
import re

from dbus import SessionBus
from dbus.mainloop.glib import DBusGMainLoop
from gi.repository import GLib


class LfFileManager(object):
    def ShowItems(self, items):
        for item in items:
            item = re.sub("file://", "", item)
            os.system("alacritty -t lf --class lf -e lf '{}' &".format(item))


class ExposedFileManager(dbus.service.Object):
    BUS_NAME = 'org.freedesktop.FileManager1'
    INTERFACE = 'org.freedesktop.FileManager1'

    def __init__(self, connection, object_path):
        bus_name = dbus.service.BusName(self.BUS_NAME, connection)
        dbus.service.Object.__init__(self, bus_name, object_path)
        self.file_manager = LfFileManager()

    @dbus.service.method(dbus_interface=INTERFACE, in_signature='ass', out_signature='')
    def ShowItems(self, items, startup_id):
        self.file_manager.ShowItems(items)
        return None


if __name__ == '__main__':
    DBusGMainLoop(set_as_default=True)

    bus = SessionBus()

    object_path = '/org/freedesktop/FileManager1'
    filemanager = ExposedFileManager(bus, object_path)

    loop = GLib.MainLoop()
    loop.run()

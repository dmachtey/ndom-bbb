#!/usr/bin/env python3
## Filename: board-test.py
##
## Description:
## Author: Damian Machtey
## Maintainer:
##
## Created: Fri Sep  8 16:55:27 2017 (-0300)
##
## Last-Updated: Fri Sep  8 18:19:31 2017 (-0300)
##           By: Damian Machtey
##     Update #: 19
##
### Change Log:
##
######################################################################
## Copyright (C) 2017 Damian Machtey
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## This complete copyright notice must be included in any revised version of the
## source code. Additional authorship citations may be added, but existing
## author citations must be preserved.
##
## You should have received a copy of the GNU General Public License
## along with this program. If not, see <http://www.gnu.org/licenses/>.
##
######################################################################
##
### Code:


out = "out"
in = "in"

class GPIO:
    def __init__(self, gpio, direction):
        self.gpio = gpio
        f = open("/sys/class/gpio/export", 'w')
        r = f.write(gpio)
        f.close()

        self.direc(direction)

    def direc(self, direction)
        if direction == in:
            f = open("/sys/class/gpio/gpio" + str(gpio) + "/direction", 'w')
            f.write(in)
            f.close()

        if direction == out:
            f = open("/sys/class/gpio/gpio" + str(gpio) + "/direction", 'w')
            f.write(out)
            f.close()

    def get(self)
        f = open("/sys/class/gpio/gpio" + str(gpio) + "/value", 'r')
        r = f.read()
        f.close()
        return r

    def set(self)
        f = open("/sys/class/gpio/gpio" + str(gpio) + "/value", 'w')
        f.write('1')
        f.close()

    def clear(self)
        f = open("/sys/class/gpio/gpio" + str(gpio) + "/value", 'w')
        f.write('0')
        f.close()



def readALL(gpios):





IN = [46, 65, 63, 37, 36, 32, 86, 87, 89, 88, 61, 33, 62, 22, 27,
          47, 70, 72, 75, 77, 78, 80, 81, 11, 71, 73, 74, 76, 79,
          8, 9, 10]

OUT = [35, 34, 39, 38, 26, 23, 44, 45, 30, 60, 31, 50, 68, 69, 67,
           66, 112, 110, 20,  7,  4,  5, 51, 48, 15, 49,  2,  3,
           113, 115, 14, 117]

BoardEn = [111]


gpioIN = []
gpioOUT = []
gpioEn = GPIO(BoardEn, out)
gpioEn.set()


for i in IN:
    gpioIN.append(GPIO(i, in))


for i in OUT:
    gpioOUT.append(GPIO(i, out))








######################################################################
### board-test.py ends here

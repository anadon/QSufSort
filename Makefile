#!/bin/sh
#
# Makefile for building a suffix array test program.
#
# Copyright (C) 2015	Josh Marshall
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.	If not, see <http://www.gnu.org/licenses/>.
#

##GLOBAL VARIABLES######################################################

CFLAGS = -O3 -march=native -Wall

SOURCE = qsufsort.c suftest.c

OBJECT = qsufsort.o suftest.o

EXEC = qsufsort


##STANDARD BUILD########################################################

all : $(OBJECT)
	gcc $(CFLAGS) $(OBJECT) -o $(EXEC)

%.o : %.c $(SOURCE)
	gcc $(CFLAGS) $< -c -o $@

clean :
	rm -f $(EXEC) $(OBJECT)

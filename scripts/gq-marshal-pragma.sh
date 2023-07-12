#!/bin/sh
#**********************************************************************
# Copyright (C) 2023 - The Geeqie Team
#
# Author: Colin Clark
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#**********************************************************************

## @file
## @brief Include pragma command at head of gq-marshal.c.
##
## $1 input - gq-marshal.c
## $2 output - gq-marshal-pragma.c
##
## The code produced by glib-genmarshal results in compile warnings.
## This scripts adds a pragma at the head of the file to prevent this.
##

printf "#pragma GCC diagnostic ignored \"-Wpedantic\"\n" > "$2"
cat "$1" >> "$2"

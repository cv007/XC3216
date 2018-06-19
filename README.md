# XC3216
GCC compiler restrictions removal

New info-

just use rev 6 info- no file mods needed, no project options needed- just 1 or 3 lines of text in a file placed in a specific folder


Old info-

The xc32/xc16 GCC files are licensed under GPL3, which gives you the right to modify these files (source, binary- makes no difference). If you plan to also distribute the modified files (highly unlikely), then additional obligations are added.

Since it is next to impossible (for normal users) to compile the xc16/xc32 gcc compiler from sources MCHP provides, this is the next best thing- either modify the binary files to remove restrictions, or simply add a file and a global option to your project (no modifications needed).
(note- build scripts are now provided in xc32 v2.05 source, so maybe not impossible anymore)

If you do not want to modify a few binary files, then see Section 2 of the info file which is quite simple.




Here is the xc32 license (mchp.c)-



/* Subroutines used for Microchip PIC32 MCU support
   Copyright (C) 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998
   1999, 2000, 2001, 2002, 2003, 2004, 2005, 2007, 2008, 2009
   Free Software Foundation, Inc.
   Contributed by J. Grosbach, james.grosbach@microchip.com, and
   T. Kuhrt, tracy.kuhrt@microchip.com
   Changes by J. Kajita, jason.kajita@microchip.com,
   G. Loegel, george.loegel@microchip.com and
   S. Bekal, swaroopkumar.bekal@microchip.com

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GCC; see the file COPYING3.  If not see
<http://www.gnu.org/licenses/>.  */



here is the xc16 license (pic30.c)-


/*Subroutines for insn output for Microchip dsPIC30.
   Copyright (C) 1994, 1995, 1996, 1997, 1998 Free Software Foundation, Inc.
   Contributed by John Elliott (john.elliott@microchip.com)

This file is part of GNU CC.

GNU CC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 1, or (at your option)
any later version.

GNU CC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU CC; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
 Boston, MA 02111-1307, USA. */

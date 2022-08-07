# LOL New World

## Build Instructions

To build an IPS patch from the contents of this repository, you will require the following:
* A vanilla, unheadered FF3us ROM
* A pre-patched, unheadered 2.0 BNW ROM
* A patching utility (LunarIPS, Multipatch, whatever)
* An assembler (asar preferred, xkas compatibility not confirmed)
* A way to prepend a 512 byte header (headering utility, hex editor, bash/batch script, whatever)

The build instructions are as follows:
1) Make a copy of your BNW 2.0 ROM to a known location (referred to hereafter as LNW ROM)
2) Using your patch utility, apply the `ips/[n] Base ROM data edits.ips` patch to the LNW ROM
3) Using your assembler, apply the `asm/lol-new-world.asm` patch to the LNW ROM
4) Using your patch utility, generate an IPS patch by comparing your LNW ROM to the vanilla ROM

This will result in an LNW IPS patch for an unheadered ROM. To generate one for a headered ROM, do one of the following:

If using a ROM headering utility:
1) Make a copy of your patched, unheadered LNW ROM from the previous steps
2) Make a copy of your unheadered vanilla ROM
2) Apply a header to both of these with your headering utility
3) Using your patch utility, generate an IPS patch by comparing your headered LNW ROM to the headered vanilla ROM

If using a hex editor:
1) Make a copy of your patched, unheadered LNW ROM from the previous steps
2) Open the copy in a hex editor
3) Put your hex editor in Insert mode (instead of Overwrite)
4) Add 512 bytes of `00`s to the start of the file (e.g. 32 16-byte lines of `0000 0000 0000 0000 0000 0000 0000 0000`)
5) Repeat the above for your vanilla ROM
6) Using your patch utility, generate an IPS patch by comparing your headered LNW ROM to the headered vanilla ROM

I'll leave other options up to the reader to figure out.


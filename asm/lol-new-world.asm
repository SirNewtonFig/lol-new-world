hirom

; freespace definitions and global variables
incsrc "defs.asm"

; individual patches to include
incsrc "patches/auto-morph.asm"
incsrc "patches/half-atb-brushes.asm"
incsrc "patches/half-atb-stumble.asm"
incsrc "patches/uncapped-drain.asm"
incsrc "patches/battle-bg-dance-mappings.asm"
incsrc "patches/tiered-status.asm"
incsrc "patches/el-tweaks.asm"

; on loan from Bropedio; I haven't scrutinized these, just assuming they're going to work as advertised
incsrc "patches/Bropedio/golem-restrictions.asm"
incsrc "patches/Bropedio/inventory-limits.asm"

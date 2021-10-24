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
incsrc "patches/stam-dog-block.asm"
incsrc "patches/vigor-based-counter.asm"
incsrc "patches/runic-counter.asm"
incsrc "patches/tweak-stumble-rate.asm"
incsrc "patches/crit-fishing.asm"
incsrc "patches/not-so-near-fatal.asm"
incsrc "patches/half-atb-blitz-failure.asm"

; data/description edits
incsrc "patches/data/dance-descriptions.asm"

; event edits
incsrc "patches/events/relm-interceptor.asm"

; on loan from Bropedio; I haven't scrutinized these, just assuming they're going to work as advertised
incsrc "patches/Bropedio/golem-restrictions.asm" ; omit when building against 2.1
incsrc "patches/Bropedio/inventory-limits.asm"

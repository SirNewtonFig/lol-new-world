# LOL New World

## Contents

1) Introduction
2) Installation
3) Character changes
4) Mechanical changes

## 1) Introduction

This project was led by thzfunnymzn, with hacking support from Sir Newton Fig, and is built upon endless balance/mechanics theorycrafting conversations on the BNW Discord. It takes the same core BNW experience and shakes it up a little bit with some mechanical and statistical adjustments.

If you're looking for something entirely different to BNW, keep shopping. But if you've played BNW already and would like to put a fresh spin on it, maybe you'll enjoy this.

If you haven't played BNW already, stop reading this and go here: http://ngplus.net/index.php?/forums/topic/1015-brave-new-world-20-is-now-available/

## 2) Installation

This mod is distributed as a pair of .ips patches, which you must apply to your own FF3us ROM (not included):
* [n] LOL New World.ips, for a non-headered ROM
* [u] LOL New World.ips, for a headered ROM

The LOL New World patch is built on top of BNW 2.0 and includes it, and as such should be applied to a clean FF3us ROM, not a patched BNW ROM.

If you are not sure if your ROM has a header or not, one trick is to check its filesize. If the file is exactly 3072kB, then it is unheadered; if it shows as 3072.5kB or 3073kB (rounded), then the ROM has a header.

Any ips-compatible patching utility should be capable of doing the job; Lunar IPS (https://fusoya.eludevisibility.org/lips/index.html) is a popular one for Windows users, while MultiPatch (https://projects.sappharad.com/multipatch/) works great on a Mac.

## 3) Character Changes

WIP

## 4) Mechanical Changes

### Tiered Status Resist

This was the original impetus for this hack in the first place, and is one of the more elaborate examples of new mechanics. In BNW, when you have an attack that can be resisted by Stamina, the game generates a random number between {0..127} and compares it to your Stamina score – if the random number is lower than your Stamina, you resist.

This is well and all, but it means you have to make considerable investment in Stamina to see any benefit from the mechanic. In response to this, attacks that can be resisted by Stamina that have a status effect attached to them will now have their RNG range determined based on the status effect(s) in play:

* Sap, Slow, Death, Freeze and Zombie remain at {0..127}
* Condemned, Petrify, Muddle, Berserk and Sleep are now {0..103}
* Stop, Poison, Mute, Blind, and Imp are now {0..79}

This organization introduces a bit of a gradient from the minor nuisances at the bottom to the more dangerous effects (and major boss mechanics) at the top. The lower RNG ranges on the easy and medium tiers make each individual point of Stamina investment more impactful, and it's even possible for someone who is investing heavily in a Stamina build to completely negate the easier effects.

### Vigor-based Counterattack Rates

With the extra emphasis on Stamina as a relevant defensive stat, it seemed wise to prune down on some of the myriad offensive benefits Stamina has accumulated over time. The first of these to go is counterattack rate.

The formula is the same, simply with Vigor in place of Stamina:
```
%chance = (Vig + 32) / 128
```

### Morph MP Turbo

(trim this down, and move some of it to the Character Changes section)

The next step in de-weaponizing Stamina was taking a hard look at Terra. Morph brings Terra considerable offensive benefits, at the cost of making her more fragile; additionally, she can build Stamina to offset her fragility. The end result is a Terra that is dependent only upon Stamina (and some HP/MP, both of which she can build alongside, yes, Stamina).

Between Atma Weapon being Stamina-based and ignoring defense, her tier-3 magic sniping elemental weakness, and the +50% damage output from Morph, Stam Terra is capable of extremely competitive offense; and with her Morphed fragility reduced, and healing/regen ticks amplified, it's hardly a risk/reward situation at all. It has been a widely accepted position among the community that Stamina Terra is the best build in the game.

To bring Terra down a peg without taking away her core concept of Morph being a tradeoff to use, she now incurs an extra +50% MP cost when casting spells in her Esper form. This means a Stamina build relying on weakness sniping with her big spells is going to need more emphasis on +MP levels (or steady support from allies with MP restoration abilities) in order to keep going. It also creates a stronger case for building +Vigor or +Magic to achieve damage output (while un-Morphed), as Stamina is no longer her one answer to everything.

### Stamina Dog Block

"But BNW already ties Stamina to dog block!" While this is certainly true, it ties it to the offensive component of dog block, rather than the defensive. In continuing the tradition of de-weaponizing Stamina, Stamina now affects the chance of Interceptor blocking an incoming attack, rather than the damage he deals on the Reprisal.

The chance that Interceptor will block an attack is now:
```
%chance = Stam / 192
```

The chance that Interceptor will perform a Reprisal after blocking is the same, at a static 50%. Finally, Reprisal damage is based on either Vigor (Shadow), or Magic (Relm).

(Relatedly, you no longer need to leave Shadow on the Floating Continent to have Interceptor protect Relm; she'll receive dog block upon rejoining in the WoR.)

### Crit Fishing

This one's pretty experimental, but it seems like it should be a lot of fun. In FF6/BNW, you normally have a 1/32 chance to score a critical hit when attacking with a weapon. In LOL New World, a speed-based critical hit rate has been implemented, to embody the "speedy crit-fishing rogue" archetype.

The probability of inflicting a critical hit is now:
```
%chance = Speed / 512
```

There are also a few pieces of equipment that grant a boost to critical hit rate. These modify the formula:
```
%chance = (Speed + 32) / 512  (+6.25%, in other words)
```

Part of the impetus for this was to give Locke more of a reason to stack Speed, or to give his fighter builds a bit more edge compared to his X-Mage build, which is touted by many as his best setup. Shadow, Sabin, Relm, and maybe even Celes and Edgar will all appreciate this change to varying extents as well.

### Speed Painting

Brushes in BNW are a healing weapon that hit twice and have a chance to proc a defensive buff. Brushes in LOL New World shake this up a bit: instead of taking a full turn and hitting twice, they hit once and only take half a turn (via reimbursing half ATB afterwards). The difference is subtle, but it helps further differentiate brushes from other restorative actions like Cure 3 or Tonic by giving you that ability to spot heal and then more quickly pivot to something eles (or do another spot heal).

And just to give brushes an extra edge, they are no longer prevented from inflicting critical hits. Paired with the other changes to the critical hit mechanics, brushes on a speedy Relm are no joke.

### Fast Failure

Since there's no joy in losing a turn to RNG or misinput (especially on a crappy input device like a mobile touchscreen, if you're one of the crazy ones who emulate on a smartphone), LOL New World also reimburses half ATB on a failed Dance or Blitz attempt.

Since Mog also now has access to a +2 Stamina esper, his base Dance success rate has been lowered slightly:
```
Previously:
%chance = (96 + Stam * 2) / 256

Now:
%chance = (72 + Stam * 2) / 256 (-9.375%, in other words)
```

### Uncapped Drain

Speaking of losing turns to RNG, Mog and Gau both occasionally suffered from dud turns due to having drain attacks in their RNG-driven toolkit. This made these options very niche choices, or borderline useless in Gau's case, unless you're sandbagging.

In response to this, Drain effects are no longer capped by their caster's HP or MP capacity, making them more generally apppicable overall. They're still limited by the target's HP/MP capacity though; so you cannot, for example, Osmose-farm MP from something that has nothing left to give.

Beyond Mog and Gau, Cyan, Setzer, Strago, Sabin, Relm, and anyone swinging the Blood Sword all benefit to varying degrees from this change. Watch out for those Raid counters though!

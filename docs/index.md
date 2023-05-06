# HoloShed

***The unshackled Steam Deck OS--because the only person shooting you in the foot should be you.***

## What is HoloShed?

HoloShed is a project to create my own personal Linux distribution for the
[Valve Steam Deck](https://store.steampowered.com/steamdeck)
and [similar cyberdecks](https://gpd.hk/gpdwin4),
absolutely incredible handheld devices with the power
of laptops twice their price in form factors you can stick
into a coat pocket or use while standing on a crowded train.

I'm told they play games.


## What's wrong with SteamOS?

The Steam Deck is an **omni-console**—it is first and foremost a device for
playing games. All games. From DOS and NES retro classics to modern AAA titles,
from games designed for consoles to PC strategy games. The Steam Deck has the power
(and the input methods) to play them all.

All that is due in equal parts to the hardware and the software, by which I mean
SteamOS, a dedicated gaming OS that is way more than the sum of its open source
parts.

To their credit, Valve did what many thought unthinkable--they built a GNU/Linux
distribution where someone who knows nothing about computers can have it *just work*.
And work for more than checking emails or training recurrent neural networks:
in my experience, 90% of the things I've tried to do with the Deck work for 99%
of the time. And amazingly, this is *still* while providing us tinkerers and hackers with
total and complete control over the software.

The problem ("problem") is that, as flexible and capable as SteamOS is, and even with
tools like like [Rwfus](https://github.com/ValShaped/rwfus) around to help get around
the immutable file system, SteamOS is a _very opinionated_ language, and for people
like me who have strong opinions of their own, there are going to be things about
SteamOS that we find infuriating.

A short list of my grievances:

- The default kernel is positively ancient. Of course it's a lot of work writing
  kernel patches for custom hardware, especially given the level to which Valve
  has optimized performance per Watt to squeeze every minute of battery life out
  of every game preset, but there are plenty of non-APU changes in the Linux kernel
  (like NTFS suppport for people who dual boot or Fn-key support for those of us
  with Keychron keebs) that are frustratingly just sitting in the Beta channel,
  wgich takes me to the fact that:
- SteamOS upgrades are all-or-nothing. I can't choose to upgrade my kernel while
  keeping my MESA drivers on the stable branch. Granted, with Rwfus I probably could,
  and partial upgrades are a big no-no anyway, but darn it! I shouldn't have to
  jump through hoops to shoot myself in the leg!
- Desktop mode should not be separate from gaming mode. And multitasking should not
  be something that feels less natural on the Deck than it does on my phone, which
  at least has picture-in-picture.
- KDE Plasma is pants. If I had liked the look and feel of Windows XP, I wouldn't have
  wiped it from my laptop in 2006 favor of Ubuntu (Dapper Drake!) 


## So why not Windows?

Because at this point in my life, I want an operating system that _just works_.

No seriously: I cannot understand at this point how people are willing to spend
hours fighting with Windows Update when it cripples their expensive new processor
or recover from BSODs when a graphics driver update goes horribly wrong, and yet
when a tutorial tells them to open a terminal and type a command as transparently
clear as `package-manager install the-thing` they _nope_ right out.

In all seriousness, I get that people are used to what they're used to, but as
someone who hasn't used Windows regularly since 2006, there is very little that
could get me to use Redmond's Finest.

## Why not ChimeraOS? Or Nobara? Or Hannah Montana Linux?

All fine choices. But whenever I put on my finest kneesocks and head to a Linux
emnthusiast shindig, I always feel self-conscious and like less of a nerd knowing
that I've never rolled my own OS.

## So what's going to be different about HoloShed?

In short, when it's done, it's going to be *mine*.

If nothing else, it'll be something I made to make me happy.

But I guess specifically:

- It's going to be geared towards handheld cyberdecks with lots of buttons like the Steam
  Deck and Win4. You'll be able to use it for gaming and poinmt & click applications
  without pulling up or folding out the keyboard.
- No separation of desktop mode and gaming mode. One version will definitely be X11-based
  using the Pantheon desktop environment (from [elementaryOS](https://elementary.io)).
    - I'd also like to make a version with a tiling window manager like
      i3, [sway](https://swaywm.org/) or [hyprland](https://hyprland.org/), depending on
      which works best for gaming.
- All data will be on a separate partition from the OS (though everything will still be
  mutable), with `/home` living on the root partition and making gratuitous use of
  symlinks. The idea is to make distro-hopping and dual booting super easy.
- It'll ship with the most up-to-date kernel and all the custom tweaks needed to manage
  power profiles.
- It's going to give the user direct access to the file system and package manager, with
  all the footguns fully loaded
- ... but it will also set up [Timeshift](https://github.com/linuxmint/timeshift) for you
  to help dig out those bullet fragments
- It's almost certainly going to be Arch-based, with flatpak and Steam pre-installed.
- Graphical interactive installer (mainly because I want to learn how to make one)
  
## Is HoloShed for Me?

No.

## Seriously?

Yeah, this project is a creative outlet for me and a chance for me to learn more about how
Linux distributions work. There is an approximately 0% chance that I end up with a system
that I like better than what I have now with SteamOS + Rwfus and sway launchable from
gaming mode.

There might be value in looking at my process, but even there I'm guessing the nature of that value will
be less educational than entertainment at the many ways I mess things up.

Even if I get everything working, a system with:

- my particular choice of desktop environment
- my particular configurations and customizations (`alias cat='lolcat'`)
- my particular bundled applications and development stacks

is designed to appeal to exactly one person:

me.

## What's with the name?

SteamOS is referred to by Valve as "HoloOS." Holo OS on the Steam Deck. 🤔 Holo Deck.

Lest you ever doubt that the folks working for Gabe Newell are complete and total dorks
(and I love them for it ♥️).

In any case, if I'm going to make an off-brand version of a HoloDeck there's no need to reinvent
the wheel when it comes to naming.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/3sxfITysf70" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Or, to save you the click:

> **Kif**: This is the holoshed. It can simulate anything you desire, and nothing can hurt you. Except when it malfunctions and the holograms become real.
>
> **Amy**: Well, that probably won't happen this time.

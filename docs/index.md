# HoloShed

***The unshackled Steam Deck OS--because the only person shooting you in the foot should be you.***

## What is HoloShed?

HoloShed is a project to create my own personal Linux distribution for the
[Valve Steam Deck](https://store.steampowered.com/steamdeck), an absolutely incredible handheld
device responsible for bringing Linux to the masses.

I'm told it plays games.

## What's wrong with SteamOS?

To their credit, Valve did what many thought unthinkable--they built a GNU/Linux
(meaning only to differentiate against Android, not to pander to Richard Stallman)
distribution where someone who knows nothing about computers can have it *just work*--and for
more than checking emails or training recurrent neural networks--90% of the time for 90%
of things. And amazingly, they did it while *still* providing us tinkerers and hackers with
total and complete control over the software.

The problem ("problem") is that Valve achieved this by locking away all the foot-guns inside
an immutable filesystem. Sure, they gave us the keys to the locker, but if you go around futzing
around and customizing your packages, unless you're doing it all in userspace (God bless flatpak)
or using an overlay tool like [Rwfus](https://github.com/ValShaped/rwfus), you're looking at
building your sandcastle from scratch the next time the update tide rolls in.

The other problem with this immutable filesystem approach is that the SteamOS upgrade experience
feels very much more like macOS than a Linux--you don't get to pick and choose which components
get updated, it's all or nothing. And when that all is something like the nightmare that was
[SteamOS 3.4](https://www.google.com/search?q=steamos+3.4+update+broke), it kinda gets you asking
why you're letting *someone else* shoot you in the foot instead of doing it for yourself.

## What's different about HoloShed?

In short, when it's done, it's going to be *mine*.

Several things about SteamOS (beyond the OS philosophy) really irk me on a personal level.
Namely:

- I am, and always have been, a GNOME. My philosophy regarding KDE is very much, "if I'd wanted
  to use Windows XP, I would have stuck with Windows XP."
- Separating Gaming Mode and Desktop mode is dumb, especially now that Deck's UI changes have arrived
  in Steam desktop's "Big Picture" client
- Unless there is a *compelling* reason not to, I want to be on the latest Linux kernel possible, given
  the incredible changes and bugfixes that are getting added on what seem like a daily basis
- I prefer to keep my data (documents, multimedia files, game saves, etc.) on a separate partition
  from both my OS *and* my home directory (and then just make heavy use of symlinks). This is to
  make it a lot easier to distro-hop, dual boot and recover from desktop configuration snafus.
- This one pains me to say, but I don't think Wayland is ready yet. Sway is awesome, gamescope is
  super neat, but I just don't see the advantage compared with the hassle of finding things that
  work (especially outside of XWayland).
  
## Is HoloShed for Me?

No.

## Seriously?

Yeah, this project is a creative outlet for me and a chance for me to learn more about how Linux
distributions work. There is an approximately 0% chance that I end up with a system with even half
the functionality as SteamOS or a third the utility of SteamOS + Rwfus.

There might be value in looking at my process, but even there I'm guessing the nature of that value will
be less educational than entertainment at the many ways I mess things up.

Even if I get everything working, a system with:

- my particular choice of desktop environment (probably [Pantheon](https://elementary.io/))
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

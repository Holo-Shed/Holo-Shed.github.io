# How to Make a Linux Distribution

I am told that creating one's own Linux distribution is, in some circles,
a rite of passage akin to
[building one's own JavaScript framework](https://www.youtube.com/watch?v=SJeBRW1QQMA),
yet even though I've been using Linux since 2006
(_ah, [Dapper Drake 🦆](https://wiki.ubuntu.com/DapperDrake)..._),
it's not something that ever interested me. Even though I had a good understanding of
the components of a distro (kernel, userspace, desktop environment, package manager...),
it wasn't until I [installed Arch](https://wiki.archlinux.org/title/installation_guide)
for the first time that I realized _just how much_ was involved in setting up a working
desktop (that process also made me realize that Arch is just about my limit in terms of
the lengths I'd go to customize my Linux experience, that is to say: in no way am I
brave--or patient--enough to try Gentoo!).

Now technically, once I got my Arch installation configured how I wanted it
([Pantheon](https://elementary.io/) desktop environment, most apps flatpak
and configured with the latest AMD Vulkan and OpenCL software stacks)
I could claim I had successfully built my own Linux distro. To wit--the _way_ I'd
set up my desktop was through trialing a bunch of setups and configurations in a VM,
then exporting my package lists and configuration files to install onto a fresh system.
Similarly, the most straightforward way of declaring victory with this HoloShed project
would be to do the same:

1. Set up a system in a VM, tweak with it and futz with it until I was ready to try it on the Deck
1. Export the package lists and configuration files
1. Run the Arch installer on the Deck, `pacstrap` all the packages I had listed, copy over
   my configuration files
1. Validate that everything was working
1. Post these steps, configuration files and package lists to reddit.
1. Rake in the karma

But that seemed like a cop-out. [ChimeraOS](https://chimeraos.org/),
[Endeavour](https://endeavouros.com/) and my beloved
[elementaryOS](https://elementary.io/) are more than just blog posts.
Now, part of that is that [each](https://github.com/ChimeraOS)
[of those](https://github.com/orgs/endeavouros-team/)
[projects](https://github.com/elementary)
has developed their own apps for use on their distro, and (I think) each
additionally maintain their own package repositories, but the more
critical difference that makes these projects proper distros is that they
each have guided installers.

## Enter Calamares 🐙

When Googling "How to make a Linux distribution,"
[Calamares](https://calamares.io/) comes up pretty quick.

It's the installer framework used by Endeavour, KaOS, Manjaro
and even non-Arch distros like Lubuntu and Peppermint. While
there are other installer frameworks out there, Calamares seemed
like the best place to start.

### What is Calamares?

Calamares provides a customizable graphical installer that you--the distro
author--can customize so that a user can run that graphical installer and
set up their Linux desktop exactly how you--again, the distro author--want it.
It does this through an extendable collection of modules that a distro author
can customize to their heart's content.

### What isn't Calamares?

What took me _far too long_ to grok was that Calamares **does not** create the entire
LiveCD or installation ISO. **It is just the GUI installer itself**, and even after you're
done configuring it, you _still_ need to create your own installation medium.

(I mean, you don't _really_--you could, say, build Calamares as an AppImage, run it from
[a full desktop](https://github.com/calamares/calamares/wiki/Deploy-AppImage), and install
your distro to an external drive or, for the Deck explicitly, a microSD, but that's not
the road I want to go down)

## Building a LiveCD, or, Making a Linux to Make Your Linux

So I started this project with the intention of building my own Linux distribution.
What I didn't realize is that I'd be making _two_. Luckily, there are plenty of tools
for making bootable ISOs either [from scratch](https://wiki.archlinux.org/title/archiso)
or [from an existing installation](https://www.linux-live.org/), so the only question now
is whether to start with the chicken or the egg?

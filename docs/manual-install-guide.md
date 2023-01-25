# Manual Installation

In a VM, at least

## Create your VM

I'm using KVM / QEMU / VirtManager, but you do you.

1. Set up your virtual machine with Steam Deck specs:
  - 64GB of disk space
  - 16GB of RAM
  - 8 CPUs (4 cores, 2 threads per core)
1. For initial setup, I'm using a Virtio display and Spice server. You
   could also do GPU pass-through.
1. Make sure you're using UEFI for boot, not BIOS

## Partition your Disk

You can do this as part of the Arch install, but I'm a lot more comfy
doing it graphically with GParted

1. Download the SystemRescue ISO
1. Load it into the VM  as a virtual CD
1. Set it to the top of the boot order
1. Power on and boot
1. Open GParted and use the following partitioning layout:
   | Label  | File System | Size  |
   | -------| ----------- | ----- |
   | boot   | FAT32       | 512MB |
   | swap   | linux-swap  | 16GB  |
   | root   | ext4        | 16GB  |
   | home   | ext4        | 8GB   |
   | main   | ext4        | (remainder) |
1. Apply, close and power off

## Install Arch

1. Download the Arch installation ISO
1. Load it into the VM as a virtual CD
1. Make sure it's still the top of the boot order
1. Power on and boot
1. Follow the Arch install guide
   - If you followed the above section, you can skip partitioning & formatting
   - Mount the partitions. If you followed the layout of the above section,
     then it should be self-explanatory what to mount where. The `main` partition
     should be `/main`
   - Install the packages listed in `pacstrap.conf`
   - Don't reboot when done
1. `arch-chroot` into your system
1. useradd your account, adding yourself to wheel
1. visudo to add wheel group to sudoers
1. su into yourself, disable root login
1. `chown -R` `/main` so that you own it.
1. Set up your home folders to symlink to folders in `/main`
1. `cd` to `~/Workspace` (`/main/Workspace`) and install `paru`
1. Install additional packages through paru (including greetd)
1. Configure greetd
1. Logout, exit chroot, reboot

## Findings

This experience was pretty horrible--Sway suffers due to a known
kernel limitation that prevents the cursor from working correctly
in a guest OS. Vulkan did not work through Spice (which, tbf, says
acceleration is through OpenGL), and everything was just a buggy mess.

And I haven't even started exploring virtual keyboards and X-input mapping.


# Virtualization
In 1960s, in mainframes computing resources were to be shared amongst users in such a way that concurrently running jobs would not interfere with one another. Operating system kernels used to be called 'supervisors', and each separate job was more or less its own entity. So the underlying OS which governed these jobs was referred to as a hypervisor.

Modern hypervisors (e.g. Xen, Microsoft's Hyper-V) are thin OSes that run on bare metal for the sole purposes of hosting guest VMs strictly and securely, much like the time-sharing schema of the mainframe days. These are called Type-1 hypervisors.

Type-2 hypervisors (e.g. VirtualBox, Parallels, QEMU) run on a regular operating system.

Linux's KVM (Kernel-based Virtual Machine) doesn't fit nicely into either category, since it turns the kernel into something like a Type-1 hypervisor, but the host OS still runs as intended.


## Virtualization | Emulation | Containerisaction
Emulation - recreates everything in software, translating or rearranging foreign code into something the host can understand. Virtualization differs in that the guest code runs directly on the host, which means it is faster.

Emulation - examples:
- Emulate software - DOSBox, Wine
- Emulate hardware - Raspberry Pi with QEMU, BlastEm, Amiga with UAT

Containes bring many of the benefits of virtualization (isolaction, efficiency), but use the host's kernel, obviating the need to run a whole guest operating system. Containers can be seen as OS-level virtualization, as opposed to machine-level. Since a container need contain only the libraries required to run a particular application, they are eminently portable. They also provide a neat solution if that application only works with a particular version of library.

Qubes OS runs applications in different VMs.
OSes like Container OS (formerly CoreOS Linux) and RancherOS run everything in containers.

## Oracle's VirtualBox
- https:///virtualbox.org
- Free (GPL2-licensed)
- Works in Windows, macOS, Linux

Right Ctrl + F (Fullscreen to Window mode)
Right Ctrl (move cursor out of guest window)

VMware Workstation Player
VMware Workstation Pro

VPS (virutal private servers) - Digital Ocean, OVH


KVM - is the hypervisor part and enables the kernel to access the virtualisation function sof the CPU.
QEMU is the userspace utility that talks to this and emulates virtual hardware.




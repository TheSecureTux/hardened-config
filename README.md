# hardened-config
Just a backup of the config files I modified in order to harden security  in the kernel arch-zen. It includes default configs from linux-hardened + some extra tightening. 

Work in constant progress and improvement.

❯ cat /proc/cmdline     
BOOT_IMAGE=/boot/vmlinuz-linux-zen root=UUID=79ca09f2-b555-4521-95cd-95746a7d8ae0 rw rw quiet loglevel=3 nowatchdog l1tf=full,force spec_store_bypass_disable=on spectre_v2=on apparmor=1 lsm=lockdown,yama,apparmor init_on_alloc=1 init_on_free=1 page_alloc.shuffle=1 slab_nomerge vsyscall=none slub_debug=F,Z,P

    ~/code/hardened-config  on   master                                                                                                                                    at 22:19:38  
❯ screenfetch               
                   -`                 
                  .o+`                 tux@leningrad
                 `ooo/                 OS: Arch Linux 
                `+oooo:                Kernel: x86_64 Linux 5.8.1-zen1-2-zen
               `+oooooo:               Uptime: 57m
               -+oooooo+:              Packages: 1512
             `/:-:++oooo+:             Shell: zsh 5.8
            `/++++/+++++++:            Resolution: 3840x1080
           `/++++++++++++++:           WM: i3
          `/+++ooooooooooooo/`         GTK Theme: Arc-Dark [GTK2/3]
         ./ooosssso++osssssso+`        Icon Theme: Paper
        .oossssso-````/ossssss+`       Font: Menlo for Powerline 9
       -osssssso.      :ssssssso.      Disk: 2,3T / 2,8T (81%)
      :osssssss/        osssso+++.     CPU: AMD Ryzen 3 2200G with Radeon Vega Graphics @ 4x 3.75GHz
     /ossssssss/        +ssssooo/-     GPU: AMD/ATI Tahiti PRO [Radeon HD 7950/8950 OEM / R9 280], AMD/ATI Raven Ridge [Radeon Vega Series / Radeon Vega Mobile Series]
   `/ossssso+/:-        -:/+osssso+-   RAM: 4697MiB / 17944MiB
  `+sso+:-`                 `.-/+oso: 
 `++:.                           `-/+/
 .`                                 `/

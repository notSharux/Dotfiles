
su root

mount /dev/sdb4 /mnt/gentoo

cd /mnt/gentoo

mount --types proc /proc proc/
mount --rbind /sys sys
mount --make-rslave sys
mount --rbind /dev/ dev
mount --make-rslave dev

chroot /mnt/gentoo /bin/bash
source /etc/profile
mount /dev/sdb2 /boot

#!/bin/sh
#
# vm generation
#

virt-install \
  --name        enterprise-nixos-1 \
  --os-type     Linux \
  --os-variant  nixos \
  --memory      8192 \
  --vcpu        4 \
  --graphics    spice \
  --cdrom       /mnt/new-partition/iso-image/artix-base-openrc-20220123-x86_64.iso \
  --disk        path=/mnt/new-partition/images/enterprise.qcow2,format=qcow2,bus=virtio,size=20 \
  --check       all=off

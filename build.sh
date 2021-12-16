#!/bin/bash
# variable files ending with .auto.pkrvars.hcl are automatically loaded
packer build -var-file="opensuse-153.pkrvars.hcl" \
  -var='os_iso_checksum=40da6b6fd17f552cd5aa3526d1a5ee091a948c8890ca70d03c9f3f8caa2e0876' \
  -var='os_iso_url=https://download.opensuse.org/distribution/leap/15.3/iso/openSUSE-Leap-15.3-NET-x86_64-Media.iso' \
  -var='vsphere_guest_os_type=sles15_64Guest' \
  -var='vsphere_vm_name=tpl-opensuse-153' .

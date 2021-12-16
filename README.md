# packer-opensuse-vsphere-iso

This repo builds automatically openSUSE VM templates (openSUSE 15.3) for VMware vSphere environment using Hashicorp's Packer and downloads ISOs automatically.  

With this repo VM templates for the following openSUSE systems can be built.

- openSUSE 15.3

You don't need do pre-download any ISO.
ISO files gets download automatically from public sources.

## How to use this repo

### Pre-requesites 

Download or `git clone https://github.com/andif888/packer-opensuse-vsphere-iso.git` this repo and make sure you have [Packer](https://www.packer.io/downloads) Version 1.7.1 or later installed. If you don't know Packer, it's a single commandline binary which only needs to be on your `PATH`.

### Step 1: Adjust variables

Rename the file [variables.auto.pkrvars.hcl.sample](variables.auto.pkrvars.hcl.sample) to `variables.auto.pkrvars.hcl` and adjust the variables for your VMware vSphere environment. Some documentation on each variable is inside the sample file.
```bash
mv variables.auto.pkrvars.hcl.sample variables.auto.pkrvars.hcl
nano variables.auto.pkrvars.hcl
```

### Step 2: Init Packer

Init Packer by using the following command. (Spot the dot at the end of the command!)
```bash
packer init .
``` 

### Step 3: Build a VM Template

To build a VM template run one of the provided `build`-scripts.   
For example to build a template run: 
```bash
./build.sh
``` 
If you are on a Windows machine then use the `build-*.ps1` files.


### Optional: Template default credentials

the default credentials after a successful build are   
Username: `vagrant`   
Password: `vagrant`  
    
If you would like to change the default ćredentials before a packer build, then you need to edit the following files: 

- **variables.auto.pkrvars.hcl**
- **autoinst.xml** (Line 8-14; Line 195; Line 212-213)

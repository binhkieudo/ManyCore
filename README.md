# RISC-V Framework

## Instructions

Clone using:

```shell
git clone https://github.com/binhkieudo/ManyCore.git
cd NewFramework
```

## Install conda enviroment

Download and install Anaconda first

```shell
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
sudo chmod a+x ./Anaconda3-2023.09-0-Linux-x86_64.sh
./Anaconda3-2023.09-0-Linux-x86_64.sh
```

Then install conda-lock for "base" environment

```shell
conda install -n base conda-lock=1.4
```
Notice: the required python version is less than 3.10.

## Build chipyard enviroment

Active coda first

```shell
conda activate
```
Then build the related tools

```shell
./build-setup.sh -s 9 -s 8 riscv-tools
```

## Active chipyard environment

You have to active the chipyard environment whenever working with chipyard framework.

```shell
source env.sh
```

Then swith to dev branch
```shell
git checkout mem_ext
```

## Prepare SD-card 
You'll need the gptfdisk tool to format the SD card

Download and install gptfdisk
```shell
git clone https://github.com/tmagik/gptfdisk.git
cd gptfdisk
make -j`nproc`
```

Connect the SD-card to your PC, then:
```shell
cd gptfdisk/
sudo ./gdisk /dev/sd?
```
Where ? points to the SD card.

After opening the SD card, check the existing partitions by pressing p, then Enter.
<img src="https://github.com/binhkieudo/riscv_framework/assets/22954544/9ce04d3a-1c11-4ff5-b44c-31357dc6454c" alt="drawing" width="700"/>

Delete all existing partitions by command d with the corresponding partition's number. 
<img src="https://github.com/binhkieudo/riscv_framework/assets/22954544/442702fc-610e-44b7-bcbb-5c5b13bf88fe" alt="drawing" width="600"/>

Then format the SD Card with the following options:
<img src="https://github.com/binhkieudo/riscv_framework/assets/22954544/2931ed12-4bef-4e6e-96b7-551d8059d15a" alt="drawing" width="700"/>

After formatting the SD Card, print the new partition and save the configurations.
<img src="https://github.com/binhkieudo/riscv_framework/assets/22954544/a657a6da-617b-409a-8b2f-4f7ec7f96128" alt="drawing" width="700"/>

## Build your first tiny FPGA prototype (currently support Arty100T, VC707, VCU118)

Vivado must be in your PATH

Enter framework folder
```shell
cd framework
```

Build the bitstream with your selected configuration.
```shell
make bitstream
```

After generating ".bit" file, connect the VC707 board to your PC (make sure that the rules for Digilent cable are defined beforehand). Then program the board.
```shell
make download_bitstream
```

Note: the demo design include 4 rocket cores. The program in SDCard will be loaded into DDR first. The proposed configuration support JTAG. Therefore, you can
use JTAG to program for the 4 cores system. The begin address of DDR is 0x80000000 which the size of 1GB.

It is required to install OpenOCD to create the JTAG server. The instructions can be found in: https://thuchoang90.github.io/tutorial/2022/09/30/Fresh-Ubuntu-setup#h-ii-g-openocd

After open JTAG server, you can use RISC-V GDB to debug and program for the system.

ARM-USB-TINY-H is necessary to convert JTAG to USB. The configuration for Olimex ARM-USB-TINY-H is proposed in the framework folder.

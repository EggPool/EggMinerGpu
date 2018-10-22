# EggMiner V4

BIS GPU Miner for EggPool (https://EggPool.net)

The V4 EggMiner Branch is compatible with both legacy Bismuth algorithm, and the new Bismuth Heavy3.  
See for algo description https://github.com/bismuthfoundation/mining-algos/tree/master/Docs


# How to install

- Windows [Windows.md]
- Linux [linux.md]
- HiveOs [hiveos.md]

# How to config

The config file for all versions is `miner.cfg`.  
It's a test file, with `#` begin comments. So anything after a `#` is ignored.  
If you change a config item, make sure there is no `#`at the line beginning or it won't have any effect.

The file itself comes with commented examples, but here is a detailled explanation of every setting:
[https://github.com/EggPool/EggMinerGpu/blob/master/Version4/config.md]


# How to run

- Windows version comes with a `bismuth.bat` script.  
  run that one instead of eggminer.exe , so the miner will be autorestarted should it crash.
- Linux comes with a bismuth.sh bash script that does the same.
- Hive Os does its stuff alone.


# Troubleshooting

## "invalid command queue" 

This is the generic message for a gpu crash.   
Most likely, too much overclock or temp too high.

Check your drivers (olders work better), try to underpower, lower overclock.

# FAQ

## More hash?

## Nvidia
Drivers 398.82 give better results than most recent 4xx version.

## AMD
Workaround for AMD error "HSAIL doesn't support OpenCL extension spir. An invalid option was specified. Error: BRIG code generation failed."  
Thanks to @Johnny : downgrade drivers to Adrenalin Edition 18.5.1  
https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-580

## Linux, create context fails
Thanks to discord user yisus:  
https://github.com/gcp/leela-zero/issues/26  
"Just a note for people who find this later. One common cause for this is the directory (or files within) ~/.nv being owned by root. This can happen if you're debugging/testing run with sudo, and it gets created as root instead of your local user. To fix it try wiping out the ~/.nv directory and starting fresh."  

"Thanks @coderjoe I have been struggling with this for days, but after i read your comment i rm -rf'ed the ComputeCache folder inside .nv and retried my code and it worked."

## Invalid command queue
"invalid command queue" is the generic message for a gpu crash. Most likely, too much overclock or temp too high.

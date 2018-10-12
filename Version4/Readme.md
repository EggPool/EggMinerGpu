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
[config.md]


# How to run

- Windows version comes with a `bismuth.bat` script.  
  run that one instead of eggminer.exe , so the miner will be autorestatted should it crash.
- Linux comes with a bismuth.sh bash script that does the same.
- Hive Os does its stuff alone.


# Troubleshooting

## "invalid command queue" 

This is the generic message for a gpu crash.   
Most likely, too much overclock or temp too high.

Check your drivers (olders work better), try to underpower, lower overclock.

# FAQ

## More hash?


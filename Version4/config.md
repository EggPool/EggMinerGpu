# Config file for Eggminer V4

The file is `miner.cfg` and has to be in the same dir as your miner.

```
# Lines beginning with a # are comments and are *ignored*
# So you have to remove the # in front of the lines you want active.
```

- upper/lower case makes a difference  
- strings, like address or miner name, are to be enclosed by double quotes (see examples)
- an empty line at the end of the file is required

## address

Example: `address = "012f79d276e6a1ab9165652c138e0fceeacb3ced8d14726995be7ee5"`

This is the only required setting to edit.  
Paste you bismuth address (56 hex chars) and double check.  

> You can't mine to cryptopia directly, use a real address of yours.

## minerName

Example: `minerName = "MyUniqueWorkerName"`

Defines the name for your rig. That's how it will be visible on the pool dashboard.  
If you let it commented out, then the miner will use the hostname of your computer as miner name.

> Use a unique name, or you won't see individual details and will mess up with your total reported hashrate

## damping

Example: `damping = 80`

This setting only concerns nvidia.  
It's a workaround for a bad implementation of the nvidia opencl layer.

80 to 90 is good.  
95 Should be the max.  
80 is the default giving the best hashrate. Less does not give more, but will burn more cpu.  
90 will lighten the CPU load, at the expense of a small HR loss on some system.  
In a snap: If your CPU load is to heavy on Nvidia system, raise this.

> More on the damping factor : [damping.md]

## intensity

Exemple: `intensity = [100, 0]`

When you launch the miner, it lists the GPU it found.  
Maybe some you don't want to mine with (iGpu, whatever)
This list allow to deactivate the GPU you want.

It's a list that has to contain as may values as listed GPUs.  
Set 0 to deactivate a GPU, 100 to enable it.  

> Other values than 0 or 100 have no effect. If you set something else than 0, the GPU will be active, 100%.

## batch_size

Exemple: `batch_size = 20000`

Each GPU runs several batches of hashes (say that 10 times fast!).  
If the batch size is too small, then the GPU will be done with it very fast, and will wait for the next one.  
You lose hash.  
If the batch size is too large, then you saturate the GPU, and it takes a long time to do each job. You end up with stalled shares.

> The more a GPU is powerful, the more the batch_size

The defaults are ok for GPU like GTX 1070 , 1070Ti.  
If you have 1060, then a value like 10000 should be good.  

How to know?

Simple: when the miner inits the gpu, it tells you something like  
`[NOTICE] GPU 0, rmsMax is 201ms, try batch_size_0 = 10695`  
Don't take the number too precisely, but adjust roughly.

The miner gives you the value to target a rmsMax of about 100ms.  
That means that every gpu round will last about 100ms. That's good.  
50ms is still good, up to 300ms can be good *if* it makes you get more hash. If not, stick with about 100ms.

> If you double the batch size, that will double the rmsMax

This batch_size setting allow you to setup the default batch size for **every** gpu of your system.  
So if you have 12 dsamge GPUs, you can setup them all in one go.

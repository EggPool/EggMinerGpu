# Config file for Eggminer V4

The file is `miner.cfg` and has to be in the same dir as your miner.

```
# Lines beginning with a # are comments and are *ignored*
# So you have to remove the # in front of the lines you want active.
```

- upper/lower case makes a difference  
- strings, like address or miner name, are to be enclosed by double quotes (see examples)
- an empty line at the end of the file is required

## address

Example: `address = "012f79d276e6a1ab9165652c138e0fceeacb3ced8d14726995be7ee5"`

This is the only required setting to edit.  
Paste you bismuth address (56 hex chars) and double check.  

> You can't mine to cryptopia directly, use a real address of yours.

## minerName

Example: `minerName = "MyUniqueWorkerName"`

Defines the name for your rig. That's how it will be visible on the pool dashboard.  
If you let it commented out, then the miner will use the hostname of your computer as miner name.

> Use a unique name, or you won't see individual details and will mess up with your total reported hashrate

## damping

Example: `damping = 80`


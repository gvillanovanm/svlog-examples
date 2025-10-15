# Altair DSIM

## Setup

```sh
ALTAIR_DIR_INSTALL=... # set up it
export PATH=$PATH:$ALTAIR_DIR_INSTALL
export LD_LIBRARY_PATH=$ALTAIR_DIR_INSTALL/lib:$ALTAIR_DIR_INSTALL/llvm_small/lib/
export RADFLEX_PATH=$ALTAIR_DIR_INSTALL/radflex/
export DSIM_LICENSE=/root/metrics-ca/dsim-license.json
```

## To add on docker (for installation)

````sh
apt-get install -y xvfb libxext6 libxrender1 libxtst6 libxi6 fontconfig
````

## License installation
https://app.metricsvcloud.com/security/licenses

## To compile: dvlcom -sv *.sv
...

## To simulate: dsim -sv tb.sv RTLs.sv OR if using uvm then use 'dsim -uvm 1.2'
...
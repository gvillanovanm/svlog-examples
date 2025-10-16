apt-get update
apt install -y xvfb libxext6 libxrender1 libxtst6 libxi6 fontconfig

ALTAIR_DIR_INSTALL=/home/Workspace/Apps/altairsim
export PATH=$PATH:$ALTAIR_DIR_INSTALL
export LD_LIBRARY_PATH=$ALTAIR_DIR_INSTALL/lib:$ALTAIR_DIR_INSTALL/llvm_small/lib/
export RADFLEX_PATH=$ALTAIR_DIR_INSTALL/radflex/
export DSIM_LICENSE=/home/Workspace/Apps/dsim-license.json
export PATH=$PATH:$ALTAIR_DIR_INSTALL/bin
export DSIM_HOME=$ALTAIR_DIR_INSTALL
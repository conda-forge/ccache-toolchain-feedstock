#!/bin/bash

export PATH="${PREFIX}/bin/conda_forge_ccache:${PATH}"

if [ -d "/feedstock_root/build_artefacts" ]; then
    export CCACHE_DIR=/feedstock_root/build_artefacts/.ccache
fi

if [ -d "$HOME/feedstock_root/build_artifacts" ]; then
    export CCACHE_DIR=$HOME/build_artifacts/.ccache
fi

# Set max cache size so we don't carry old objects for too long
ccache -M 400M
ccache -z

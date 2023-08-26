#!/bin/bash
echo "PRERUN"
echo "Install Rust? [Enter/N]"
read install
if [ "$install" != "N" ]; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo "Update Rust? [Enter/N]"
read update
if [ "$update" != "N" ]; then
    rustup default stable
    rustup update
fi
#!/bin/bash

clone() {
    echo "Cloning"
    git clone https://github.com/penetratingshot/Scripts/helper
    cd helper
    npm link
    echo "Your helper tool is ready for use!"
    echo "Simply type 'sh-helper' anywhere in your system!"
}

echo "Installing Scripts helper tool"
echo "Checking for existing version..."
if [ ! -d "helper" ]
then
    clone()
else 
    echo "It seems you already have the helper tool installed in your system, anyway, we'll build the latest version!"
    clone()
fi 


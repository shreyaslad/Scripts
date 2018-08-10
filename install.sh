echo "Detecting operating system"
if [[ "$OSTYPE" == "linux-gnu" ]]
then
    echo "You are running Linux GNU. Add the files to your path."
    git clone https://github.com/penetratingshot/scripts/files
elif [[ "$OSTYPE" == "darwin"* ]]
then
    echo "You are running MACOS. Adding the files to your PATH."
    git clone https://github.com/penetratingshot/scripts/files
    cd files
    mv *.sh /usr/local/bin
    echo "Done"
elif [[ "$OSTYPE" == "cygwin" ]]
then
    echo "You are running a POSIX compatibility layer and/or Linux emu for Windows. Add the files to your PATh."
    git clone https://github.com/penetratingshot/scripts/files
elif [[ "$OSTYPE" == "msys" ]]
then
    echo "You are running Windows. Add the files to your PATH."
    git clone https://github.com/penetratingshot/scripts/files
elif [[ "$OSTYPE" == "freebsd"* ]]
then
    echo "You are running FreeBSD Linux. Add the files to your PATH."
    git clone https://github.com/penetratingshot/scripts/files
fi

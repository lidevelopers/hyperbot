echo "listing root"

ls /

echo "contents of syzygy"

ls /syzygy

echo "installing modules"

yarn install

echo "installing 7z"

sudo apt-get install p7zip-full -y

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget unzip python3 python3-pip

RUN wget https://abrok.eu/stockfish/latest/linux/stockfish_x64_bmi2.zip -O stockfish.zip
RUN unzip stockfish.zip && rm stockfish.zip
RUN mv stockfish13_* stockfish13

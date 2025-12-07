# bin/bash

echo "fetching transkriptions from data_repo"
rm -rf data/
curl -LO https://github.com/conrad-ansorge/ansorge-data/archive/refs/heads/main.zip
unzip main

mv ./ansorge-data-main/data/ .

rm main.zip
rm -rf ./ansorge-data-main

echo "fetch imprint"
./shellscripts/dl_imprint.sh

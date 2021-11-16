sudo apt update
sudo apt install docker.io -y
sudo usermod -aG docker ${USER}
docker run -it -v $(cd ~/.streamrDocker; pwd):/root/.streamr streamr/broker-node:testnet bin/config-wizard
mkdir ~/.streamrDocker
docker rmi -f broker-node:testnet
docker run -it -v $(cd ~/.streamrDocker; pwd):/root/.streamr streamr/broker-node:testnet bin/config-wizard
docker run -it -d --name streamr -p 7170:7170 -p 7171:7171 -p 1883:1883 -v $(cd ~/.streamrDocker; pwd):/root/.streamr streamr/broker-node:testnet
docker logs -f --tail=100 streamr
docker stop streamr
docker rmi -f streamr/broker-node:testnet
docker rm -f streamr
docker run -it -d --name streamr -p 7170:7170 -p 7171:7171 -p 8082:8082 -p 1883:1883 -v $(cd ~/.streamrDocker; pwd):/root/.streamr streamr/broker-node:testnet
docker logs -f --tail=100 streamr
sudo apt update
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_node14.sh | bash
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_docker.sh | bash
npm install -g @subql/cli
mkdir SubQ
cd SubQ
sudo subql init --starter HelloWorld
cd HelloWorld
npm install
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100
sudo apt install git -y
git config --global user.name ifir3
git config --global user.email meganame123@gmail.com
eval $(ssh-agent -s)
ssh-keygen
cat ~/.ssh/id_rsa.pub
git init
git remote add origin git@github.com:ifir3/SubqlHelloWorld.git
git add .
git add
git add .
git commit -m "init project"
git branch -M main
git push -u origin main
cd SubQ/HelloWorld
docker-compose down
cd $HOME/SubQ
git clone https://github.com/subquery/tutorials-account-balances.git
cd tutorials-account-balances
npm install
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100
cd SubQ/HelloWorld
cd
cd SubQ/HelloWorld
docker-compose down
cd $HOME/SubQ
git clone https://github.com/subquery/tutorials-account-balances.git
cd tutorials-account-balances
npm install
npm run-script codegen
npm install -g npm
npm audit
npm fund
npm run-script build
tsc -b
apt install node-typescript
tsc -b
npm run-script build
npm install
npm install --force
npm fund
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100

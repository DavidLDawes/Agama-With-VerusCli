# Agama-With-VerusCli
Docker Agama builder container with (hopefully a recent) VerusCli file set in the /home directory.
Derived from jmcduffie32/chromium-headless-tests:0.1.1 on hub.docker.com

verus-cli files are komodod, komodo-cli, verus and verusd

This is where the Dockerfile definition is kept. This README is shown both on the [github Dockerfile source](https://github.com/DavidLDawes/Agama-With-VerusCli) and on [Docker Hub](https://cloud.docker.com/u/davidldawes/repository/docker/DavidLDawes/agama-build-with-verus-cli). Updates to the github repository's master branch trigger an automatic buld to the Docker Hub location. 

This container is used if you want to actually use the Agama container to test the graphical wallet with the komodod peer node. The Agama-Test container is then built on top of this one plus additional modules needed for testing.

Get the automatically built Docker container definition from [Docker hub](https://hub.docker.com/r/DavidLDawes/Agama-With-VerusCli) using the tag :latest. The container uses Debian Linux.

**Supported Operating Systems**
* **Linux** 

# VerusCoin
Arguably the world's most advanced technology, zero knowledge privacy-centric blockchain, VerusCoin brings Sapling performance and zero knowledge features to an intelligent system with interchain smart contracts and a completely original, combined proof of stake/proof of work consensus algorithm that solves the nothing at stake problem. With this and its approach towards CPU mining and ASICs, VerusCoin strives to be one of the most naturally decentralizing and attack resistant blockchains in existence.

# VerusCoin Enhanced Agama Wallet
The easy to use Agama graphical wallet makes mining, staking and managing coins simple. The VerusCoin Enhanced Agama Wallet supports the VerusCoin blockchain and manages your wallet's keys, giving you panels for transactions, sending coins, and checking wallet contents.

The VerusCoin enhanced Komodo peer runs under the cover to provide peer to peer network support. The wallet handles launching the peer to peer client with the proper options to bring up the VerusCoin chain.

# Usage
This container is used in the agama-tester container.

# Building Agama
If you want to build Agama, use the agama-builder container which you can fetch with docker:

docker  pull davidldawes/agama-builder:latest

See [the github site](https://github.com/DavidLDawes/agama-builder) or [the hub.docker site](https://cloud.docker.com/u/davidldawes/repository/docker/davidldawes/agama-builder) for instructions on how to build. 

# Testing Agama
docker pull davidldawes/agama-tester:latest

See [the github site](https://github.com/DavidLDawes/agama-builder) or [the hub.docker site](https://cloud.docker.com/u/davidldawes/repository/docker/davidldawes/agama-tester) for instructions on how to run the automated Mocha/Chai tests headlessly.

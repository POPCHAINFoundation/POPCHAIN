# PopChain
![](https://avatars3.githubusercontent.com/u/38804864?s=200&v=4)

### What is PopChain?
POPCHAIN is a live-streamable digital contents distribution service platform based on block chain technology which aims to create a pan entertainment ecosystem .
PopChain-gho is the implement of Greedy Heaviest Observed Subtree (GHOST) protocol for popchain.

Resources may be helpful to know about Pop.

Basic usage resources:

* [Official site](http://www.popchain.org/)
* [Whitepaper](http://www.popchain.org/file/whitepaper_en.pdf)


### Coin Specs
<table>
<tr><td>Algo</td><td>Quark</td></tr>
<tr><td>Block Time</td><td>60 Seconds</td></tr>
<tr><td>Difficulty Retargeting</td><td>Every Block</td></tr>
<tr><td>Max Coin Supply (PoW Phase)</td><td>20,000,000,000 PCH</td></tr>
<tr><td>PoW</td><td>4,000,000,000 PCH</td></tr>
<tr><td>Masternode</td><td>4,000,000,000 PCH</td></tr>
<tr><td>Premine</td><td>12,000,000,000 PCH*</td></tr>
</table>

### Reward Distribution

<table>
<th colspan=4>Genesis Block</th>
<tr><th>Block Height</th><th>Reward Amount</th><th>Notes</th></tr>
<tr><td>1</td><td>12,000,000,000 PCH</td><td>Initial Pre-mine and distributed and swaped amount</td></tr>
</table>

### PoW Rewards Breakdown

<table>
<th>Block Height</th><th>Masternodes</th><th>Miner</th><th>Budget</th>
<tr><td>2-43200</td><td>20% (50 PCH)</td><td>80% (200 PCH)</td><td>N/A</td></tr>
<tr><td>43201-151200</td><td>20% (50 PCH)</td><td>70% (200 PCH)</td><td>10% (25 PCH)</td></tr>
<tr><td>151201-259200</td><td>45% (22.5 PCH)</td><td>45% (22.5 PCH)</td><td>10% (5 PCH)</td></tr>
</table>

Contact us:

* contact@popchain.org


Building PopChain
### Build on Ubuntu(16.04 LTS)

    git clone https://github.com/PopchainOrg/PopChain.git

Install dependency

    sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
    sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev
    sudo apt-get install libminiupnpc-dev
    sudo apt-get install libzmq3-dev

    # QT 5, for GUI
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler    
    # optional
    sudo apt-get install libqrencode-dev

Configure and build

    ./autogen.sh
    ./configure
    make -j(number of threads)

### Run

    cd src && ./popd -daemon # use ./pop-cli to make rpc call

Development Process
-------------------

The master branch is constantly updated and developed, while stable
and versionized executables will be published once mainnet is published.

Issues and commit changes are welcome.

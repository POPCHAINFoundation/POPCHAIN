#!/bin/bash

cd /opt/popchain

POPOPTS="-datadir=/var/lib/coindata -daemon=0"

if [ "$MINING" = "true" ]; then
    POPOPTS="$POPOPTS -gen=1 -genproclimit=-1"
fi

if [ "$STAKING" = "true" ]; then
    POPOPTS="$POPOPTS -staking=1 -zpchstake=1 -pchstake=1"
fi

if [ "$MASTERNODE" = "true" ]; then
    POPOPTS="$POPOPTS -masternode=1"
fi

if [ "$RPCSERVER" = "true" ]; then
    POPOPTS="$POPOPTS -rest=1 -server -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0"

    if [ "$RPCUSER" != "" ]; then
        POPOPTS="$POPOPTS -rpcuser=$RPCUSER"
    fi

    if [ "$RPCPASS" != "" ]; then
        POPOPTS="$POPOPTS -rpcpassword=$RPCPASS"
    fi

    if [ "$RPCPORT" != "" ]; then
        POPOPTS="$POPOPTS -rpcport=$RPCPORT"
    fi
fi

exec ./bin/popchaind $POPOPTS

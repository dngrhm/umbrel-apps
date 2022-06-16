#!/bin/bash

echo "Starting..."
cp /src/stacks-node/Config.toml.tmpl /src/stacks-node/Config.toml
sed -i s/@@BITCOIN_RPC_USERNAME@@/"$BITCOIN_RPC_USERNAME"/ /src/stacks-node/Config.toml
sed -i s/@@BITCOIN_RPC_PASSWORD@@/"$BITCOIN_RPC_PASSWORD"/ /src/stacks-node/Config.toml
sed -i s/@@BITCOIN_PEER_HOST@@/"$BITCOIN_PEER_HOST"/ /src/stacks-node/Config.toml
sed -i s/@@BURNCHAIN_MODE@@/"$BURNCHAIN_MODE"/ /src/stacks-node/Config.toml
sed -i s/@@BITCOIN_RPC_PORT@@/"$BITCOIN_RPC_PORT"/ /src/stacks-node/Config.toml
sed -i s/@@BITCOIN_RPC_PEER_PORT@@/"$BITCOIN_RPC_PEER_PORT"/ /src/stacks-node/Config.toml

/bin/stacks-node start --config /src/stacks-node/Config.toml

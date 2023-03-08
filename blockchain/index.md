# Blockchain

distributed ledger
decentralized infrastructure
disintermediator
smart contracts
trust layer

Solidity language

[Remix](Remix.md) IDE
Truffle tools

2008/2009 - peer-to-peer decentralized digital currency system - Bitcoin
Trust intermediation via blockchain: software based verification, validation, recording, and integrity

Each transaction is recorded (with a group of other transactions) onto a "block". These "blocks" serve as a container for this data. Each block is linked to all previous blocks, from all of history, in a permanent and auditable chain - Blockchain.


## Cryptocurrencies / coins
- Bitcoin
- Ether (coin in Ethereum network is called Ether)

Assets or items of value that exist digitally, not physically, and are created by software.
- no issuer
- no person/company/entity backs these
- there are not terms of service or guarantees associated with them
- created or destroyed according to the rules articulated in the code that creates and governs them.
- if you own some cryptocurrency, it is your asset that you control.
- it has value and can be exchanged for other cryptocurrencies, USD, EUR, etc.
- its value is determined within marketplaces called exchanges where buyers and sellers come together to trade at mutually agreed prices.
- when the ownership passes from account/address to account, it is recorded on their respective transaction databases known as blockchain.


## tokens/crypto-assets/cryptographically secured digital assets can be:
  - fungible: one token being more or less replaceable by another
  - non-fungible: each token represents something unique
- Tokens can represent legal agreements (financial assets), physical assets (gold), or future access to products and services.
- Usually issued by known issuers

DDR: Digital Depository Receipts

## Blockchain
replicated databases representing universal understanding of the current status of all units of the digital asset.

Blockchains can be
1. public/permissionless
  Bitcoin and Ethereum blockchains are
  - anyone can write transactions, with no gatekeepers to approve/reject
  - self-identification not required to create blocks or validate transactions
2. private/permissioned
  - there is a controlling party who allows participants to read or write to them

* Protocols
Bitcoin is a bunch of protocols/rules stating:
  - what it is
  - how ownership is represented and recorded
  - what constitutes a valid transaction
  - how new participants can join the network or operators
  - how participants should behave if they want to be kept up to date with the last transactions

These rules are coded into software.
Transaction data is bundeled into bundles or blocks, and linked together to form the Bitcoin blockchain.



## Cash => Digital money
- Cash limitation:
  - need to move physically
  - anonymous bearer asset / no identity information
- Digital money:
  - bookkeeper involved (third party that you trust)
    - online card payment (card not present transaction): higher fees to offset cost of fraud prevention
    - swiping card (card present transaction)
  - personal identification is required
  - Credit card info can be stolen along with personally identifying information


## Sale/payment via bitcoin
Most of the companies don't accept payment in bitcoin.
Cryptocurrencies Payment Processors - act as intermediary by quoting a price to the customer in bitcoins based on current prices of bitcoins to dollars on various cryptocurrency exchanges. They accept bitcoins from customer, then wire an equivalent amount of conventional currency to the merchant's bank account.
e.g. Bitpay


Bitcoin uses ECDSA asymmetric encryption. From your public key anyone can get your Bitcoin address.

www.bitaddress.org

When you make a Bitcoin transaction, you use your private key to sign/authorize the transaction which moves bitcoins from your account to someone else's.

Bitcoin uses cryptographic hash functions in:
- mining process
- identifiers for transactions
- identifiers of blocks, in order to link them in a chain
- ensuring that data tampering is immediately evident


## Bitcoin
Bitcoins are digital assets (‘coins’) whose ownership is recorded on an electronic ledger that is updated (almost) simultaneously on about 10000 independently operated computers around the world that connect and gossip with each other.

Ledger => blockchain

- Transactions are validated according to protocol implemented in software.
- The software is an app that participants run on their computers.
- The machines running the apps are called "nodes" of the network.
Each node independently validates all pending transactions wherever they arise, and updates its own record of the ledger with validated blocks of confirmed transactions.
- Specialist nodes, called miners, bundle together valid transactions into blocks and distribute those blocks to nodes across the network.
- Bitcoin's blockchain is not encrypted, everyone can see all details of all transactions.
- Anyone can create bitcoins for themselves via mining.
- software implementations: Bitcoing Core - open source at Github.

public key: account number/address: can be created by any computer
digital signature: password

In Bitcoin, account numbers are mathematically derived from public keys and are called addresses.

Transactions are recorded in batches. Individual transactions, validated as pending transactions, can be passed around the network, then entered into the books in less frequent batches. These batches are called blocks.


## Mining
all nodes repeatedly run mathematical algorithms to come to number for a time period until one node is chosed to create the next block.

Block creator gets a commission, a small amount of value, from each transaction. People creating transactions add their own voluntary transactions fees.


Coinbase transaction: creates bitcoins, serves as rewards (besides transaction fees) for the block creator. Used to bootstrap block creation and is gradually phased out.


# Cryptocurrency Exchanges
A digital platform where cryptocurrencies are exchanged. Also for buying or selling cryptocurrencies for dollars, euros or other conventional currency.

Top Exchanges:
https://coinmarketcap.com/rankings/exchanges/
https://www.coingecko.com/en/exchanges


# Storage
Every transaction made with cryptocurrency is kept on a Blockchain, which holds a number of wallets.
The wallet has two addresses.
 - Public address/key is needed so others can send you money when you sell.
 - Private address is password protected and will give you access to your fundds when you want to make a withdrawal or a deposit. Private key is also uused to transfer funds to other account holders.




## Popular cryptocurrencies
- Bitcoin
- Ethereum
- Litecoin


## Crypto Websites
cryptocompare.com
coinmarketcap.com


# Stablecoins
Any cryptocurrency designed to have a relatively stable price, typically being pegged to a commodity or currency or having its suply regulated by an algorithm.

- Pros
  - Stablecoins allow you to trade without returning to your fiat.
    - Stablecoins are a way to circumvent profit declarations.
    - Selling a part of your folio for fiat leads to a taxable event.
  - Stablecoins are highly liquid and secured by blockchain
  - Swap for a backing currency if required.


- USDT is a cryptocurrency and its value is correlated to a currency which is dollar.
  (Tether token): https://tether.to







CRO or Crypto.com is the native currency of the Crypto.com app, exchange and blockchain.
- The coin is inextricably linked to the fate of parent company.


## Staking
A way to earn rewards for holding certain cryptocurrencies. When staking, your cryptocurrencies become part of consensus mechanism - Proof of Stake.


## Proof of Work
## Proof of Stake


## DeFi
Decentralized Finance: peer-to-peer financial services on public blockchains, primarily Ethereum.



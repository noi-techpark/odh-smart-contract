<!--
SPDX-FileCopyrightText: NOI Techpark <digital@noi.bz.it>

SPDX-License-Identifier: CC0-1.0
-->

# Research
Ethereum smart contracts and Oracles are quite new technology, so research is need to understand the topic and to see if it's possible using the Open Data Hub as an Oracle and building smart contracts on top of it.

**Table of Contents** 

- [Research](#research)
  - [What is Ethereum?](#what-is-ethereum)
  - [What are smart contracts?](#what-are-smart-contracts)
  - [What are Ethereum Oracles?](#what-are-ethereum-oracles)
  - [Use cases](#use-cases)
    - [Quality certificate verification](#quality-certificate-verification)
    - [Travel insurance](#travel-insurance)
    - [Agricultural insurance](#agricultural-insurance)
    - [Lottery to promote the technology](#lottery-to-promote-the-technology)
    - [Lottery to promote green mobility](#lottery-to-promote-green-mobility)
    - [Persistent decentralized backup on the Ethereum blockchain](#persistent-decentralized-backup-on-the-ethereum-blockchain)
  - [Smart contracts deployment costs](#smart-contracts-deployment-costs)
  - [Implementation examples](#implementation-examples)
  - [Test environment](#test-environment)


## What is Ethereum?
Ethereum is a decentralized, open source blockchain and at the time of writing the second biggest cryptocurrency  
by market capital. The big difference to Bitcoin is, that it supports smart contracts to create programs that  
run on the blockchain. So decentralized applications can be build (they are called dApps), the so called Web3.
Applications running on the Web3 can't be censored or taken down, because they run decentralized and on thousands  
of computers/servers. So to take down or censor such an application, someone needs to take down the majority  
of the running computers/servers. Another big advantage is that nobody can deny access to this applications.

## What are smart contracts?
Smart contracts are programs that run on the Ethereum blockchain. The main and most used programming language to  
create smart contracts is Solidity. They are used to automate the execution of an agreement so that all participants  
can be immediately certain of the outcome, without any intermediary's involvement or time loss.

## What are Ethereum Oracles?
Oracles are the connection of the blockchain world with real world data. So for example the Open Data Hub could be 
an Oracle providing the data it has to be used with smart contracts. An Oracle has two parts: the on-chain part
that runs on the blockchain and the off-chain part, that gets the real world data and send it to the on-chain part.  
The best practice is to have multiple source of truth and so to have decentralized Oracles. So if one part decides  
to give false data, the other parties can still confirm the right data.  
In the case of the Open Data Hub, it could be possible to have multiple sources of truth by using the source API  
from where the Open Data Hub collects the data (in case that data is also open accessible).

## Use cases
A list of possible use cases with the Open Data Hub data sets.  
The main use case for smart contracts is gaming (lottery) or insurances, but you are welcome to contribute  
creative and other use cases.

### Quality certificate verification
The blockchain could be used to allow the end user to verify that a  product has a valid certificate and that it passed some tests or that it is really from the origin the labels on the product say. 
So every created end product gets a unique token from the blockchain and the authenticity of that token can be verified with an App.

### Travel insurance
Tourists could create a travel insurance that gets triggered on bad weather or canceled events using  
the weather and events data.

### Agricultural insurance
Farmers could create insurances in case of bad weather and resulting bad harvest using the weather data.

### Lottery to promote the technology
A lottery based on a estimation of Open Data Hub data like: how many cars will be charged this year?  
To promote the Open Data Hub and the Ethereum technology.

### Lottery to promote green mobility
A lottery once a year that awards the amount of used car-sharing, bike-sharing or emission numbers as a price.  
For example 53499 bike-sharing bikes where used, so 0.53499 ETH will be given to the winner of the lottery.

### Persistent decentralized backup on the Ethereum blockchain
It is possible to store the data (probably not all) on the blockchain as a independent, decentralized and persistent backup.
Yearly, monthly or weekly summaries of the data could be stored, to save costs and just to show that it is possible.

## Smart contracts deployment costs
Cryptocurrencies are at the time of writing around their all-time high and so are smart contracts costs.
According to this [article](https://medium.com/the-capital/how-much-does-it-cost-to-deploy-a-smart-contract-on-ethereum-11bcd64da1) costs are at least 500$ for a simple deploy of a tiny smart contract:  
"So we have learned that smart contracts are expensive. Summing up the prices we have seen, if you expect to deploy even a 
moderate size contract, budget upwards of $5000 just on deployment costs. Small contracts can get away with $500 if you try  
to make it really small and compact, but it’s unlikely you can get much lower than that."

You need to pay in [Gas](https://ethereum.org/en/developers/docs/gas/) for the deployment, execution and storage it uses.

## Implementation examples  
Here you can find implementation examples of Ethereum Oracles:
- https://medium.com/@pedrodc/implementing-a-blockchain-oracle-on-ethereum-cedc7e26b49e


## Test environment
Since deploying and running smart contracts and Oracles can be quite expensive, it is recommended to test everything in an  
testing environment without spending real Ethereum. Such testing environments can run locally or on a testing block chain  
with free testing purpose Ethereum.
- https://getwaffle.io/
- https://hardhat.org/
- https://trufflesuite.com/
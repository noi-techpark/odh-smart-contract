# Air Temperature Oracle using Remix Web IDE and Provable API
A simple Ethereum smart contract that is an Oracle that gets the air temperature of the city of Bolzano and
saves it on the storage of the smart contract.

**Table of Contents** 

- [Air Temperature Oracle using Remix Web IDE and Provable API](#air-temperature-oracle-using-remix-web-ide-and-provable-api)
  - [Prerequisites](#prerequisites)
  - [Set up](#set-up)
  - [Compile](#compile)
  - [Deploy](#deploy)
  - [Interact](#interact)

## Prerequisites
Metamask account and browser extension with Ethereum on a test network like Rinkeby, Ropsten or Kovan.

## Set up
Open the Remix Web IDE on [remix.ethereum.org](https://remix.ethereum.org/).
Then import the `remix-backup-at-16h57min-2022-2-21.zip` file by clicking on `Restore Backup` in the Home Tab.
Now you should see all the files ready.

## Compile
Open the contract file `AirTemperatureOracle .sol` and then click on the second icon on the top left (Solidity compiler).
Then select the correct compiler version `0.5.17` and click on the compile button.
You can ignore the warnings and go to the next step.

## Deploy
Click on the third icon on the top left (Deploy & run transactions).
Select Injected Web3 and connect you Metamask configured with a Test Network like Rinkeby, Ropsten or Kovan. (At the time of writing, it only worked with Rinkeby).
Click on deploy and after confirming the transaction and waiting for the mining to complete, you can interact with your Oracle.

## Interact
Under Deployed Contracts you can see your contract its functions as buttons.
When you click on a button, you trigger that method.
First try to click on the update() function to update the air temperature.
Then click on the air temperature button and you should see the value.
Congratulations! You saved now data of the Open Data Hub on the Ethereum blockchain! 
